// Written in the D programming language.

/**
 * This module is used to parse file names. All the operations work
 * only on strings; they don't perform any input/output
 * operations. This means that if a path contains a directory name
 * with a dot, functions like $(D getExt()) will work with it just as
 * if it was a file. To differentiate these cases, use the std.file
 * module first (i.e. $(D std.file.isDir())).
 *
 * Authors:
 *
 * $(WEB digitalmars.com, Walter Bright), Grzegorz Adam Hankiewicz,
Thomas K&uuml;hne, $(WEB erdani.org, Andrei Alexandrescu)
 *
 * Macros:
 *	WIKI = Phobos/StdPath
 * Copyright:
 *	Placed into public domain.
 *	www.digitalmars.com
 *
 */

module std.path;

//debug=path;		// uncomment to turn on debugging printf's
//private import std.stdio;

private import std.string;
private import std.file;
private import std.contracts;
private import core.stdc.errno;

version(Posix)
{
    private import std.c.stdlib;
    private import core.sys.posix.pwd;
    private import core.exception : onOutOfMemoryError;
}

version(Windows)
{

    /** String used to separate directory names in a path. Under
     *  Windows this is a backslash, under Linux a slash. */
    invariant char[1] sep = "\\";
    /** Alternate version of sep[] used in Windows (a slash). Under
     *  Linux this is empty. */
    invariant char[1] altsep = "/";
    /** Path separator string. A semi colon under Windows, a colon
     *  under Linux. */
    invariant char[1] pathsep = ";";
    /** String used to separate lines, \r\n under Windows and \n
     * under Linux. */
    invariant char[2] linesep = "\r\n"; /// String used to separate lines.
    invariant char[1] curdir = ".";	 /// String representing the current directory.
    invariant char[2] pardir = ".."; /// String representing the parent directory.
}
version(Posix)
{
    /** String used to separate directory names in a path. Under
     *  Windows this is a backslash, under Linux a slash. */
    invariant char[1] sep = "/";
    /** Alternate version of sep[] used in Windows (a slash). Under
     *  Linux this is empty. */
    invariant char[0] altsep;
    /** Path separator string. A semi colon under Windows, a colon
     *  under Linux. */
    invariant char[1] pathsep = ":";
    /** String used to separate lines, \r\n under Windows and \n
     * under Linux. */
    invariant char[1] linesep = "\n";
    invariant char[1] curdir = ".";	 /// String representing the current directory.
    invariant char[2] pardir = ".."; /// String representing the parent directory.
}

/*****************************
 * Compare file names.
 * Returns:
 *	<table border=1 cellpadding=4 cellspacing=0>
 *	<tr> <td> &lt; 0	<td> filename1 &lt; filename2
 *	<tr> <td> = 0	<td> filename1 == filename2
 *	<tr> <td> &gt; 0	<td> filename1 &gt; filename2
 *	</table>
 */

version (Windows) alias std.string.icmp fcmp;

version (Posix) alias std.string.cmp fcmp;

/**************************
 * Extracts the extension from a filename or path.
 *
 * This function will search fullname from the end until the
 * first dot, path separator or first character of fullname is
 * reached. Under Windows, the drive letter separator (<i>colon</i>)
 * also terminates the search.
 *
 * Returns: If a dot was found, characters to its right are
 * returned. If a path separator was found, or fullname didn't
 * contain any dots or path separators, returns null.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     getExt(r"d:\path\foo.bat") // "bat"
 *     getExt(r"d:\path.two\bar") // null
 * }
 * version(Posix)
 * {
 *     getExt(r"/home/user.name/bar.")  // ""
 *     getExt(r"d:\\path.two\\bar")     // "two\\bar"
 *     getExt(r"/home/user/.resource")  // "resource"
 * }
 * -----
 */

string getExt(string fullname)
{
    auto i = fullname.length;
    while (i > 0)
    {
	if (fullname[i - 1] == '.')
	    return fullname[i .. fullname.length];
	i--;
	version(Win32)
	{
	    if (fullname[i] == ':' || fullname[i] == '\\')
		break;
	}
	version(Posix)
	{
	    if (fullname[i] == '/')
		break;
	}
    }
    return null;
}

unittest
{
    debug(path) printf("path.getExt.unittest\n");
    string result;

    version (Win32)
	result = getExt("d:\\path\\foo.bat");
    version (Posix)
	result = getExt("/path/foo.bat");
    auto i = cmp(result, "bat");
    assert(i == 0);

    version (Win32)
	result = getExt("d:\\path\\foo.");
    version (Posix)
	result = getExt("d/path/foo.");
    i = cmp(result, "");
    assert(i == 0);

    version (Win32)
	result = getExt("d:\\path\\foo");
    version (Posix)
	result = getExt("d/path/foo");
    i = cmp(result, "");
    assert(i == 0);

    version (Win32)
	result = getExt("d:\\path.bar\\foo");
    version (Posix)
	result = getExt("/path.bar/foo");

    i = cmp(result, "");
    assert(i == 0);

    result = getExt("foo");
    i = cmp(result, "");
    assert(i == 0);
}

/**************************
 * Returns the extensionless version of a filename or path.
 *
 * This function will search fullname from the end until the
 * first dot, path separator or first character of fullname is
 * reached. Under Windows, the drive letter separator (<i>colon</i>)
 * also terminates the search.
 *
 * Returns: If a dot was found, characters to its left are
 * returned. If a path separator was found, or fullname didn't
 * contain any dots or path separators, returns null.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     getName(r"d:\path\foo.bat") => "d:\path\foo"
 *     getName(r"d:\path.two\bar") => null
 * }
 * version(Posix)
 * {
 *     getName("/home/user.name/bar.")  => "/home/user.name/bar"
 *     getName(r"d:\path.two\bar") => "d:\path"
 *     getName("/home/user/.resource") => "/home/user/"
 * }
 * -----
 */

string getName(string fullname)
{
    auto i = fullname.length;
    while (i > 0)
    {
	if (fullname[i - 1] == '.')
	    return fullname[0 .. i - 1];
	i--;
	version(Win32)
	{
	    if (fullname[i] == ':' || fullname[i] == '\\')
		break;
	}
	version(Posix)
	{
	    if (fullname[i] == '/')
		break;
	}
    }
    return null;
}

unittest
{
    debug(path) printf("path.getName.unittest\n");
    string result;

    result = getName("foo.bar");
    auto i = cmp(result, "foo");
    assert(i == 0);

    result = getName("d:\\path.two\\bar");
    version (Win32)
	i = cmp(result, "");
    version (Posix)
	i = cmp(result, "d:\\path");
    assert(i == 0);
}

/**************************
 * Extracts the base name of a path and optionally chops off a
 * specific suffix.
 *
 * This function will search $(D_PARAM fullname) from the end until
 * the first path separator or first character of $(D_PARAM fullname)
 * is reached. Under Windows, the drive letter separator ($(I colon))
 * also terminates the search. After the search has ended, keep the
 * portion to the right of the separator if found, or the entire
 * $(D_PARAM fullname) otherwise. If the kept portion has suffix
 * $(D_PARAM extension), remove that suffix. Return the remaining string.
 *
 * Returns: The portion of $(D_PARAM fullname) left after the path
 * part and the extension part, if any, have been removed.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     basename(r"d:\path\foo.bat") => "foo.bat"
 *     basename(r"d:\path\foo", ".bat") => "foo"
 * }
 * version(Posix)
 * {
 *     basename("/home/user.name/bar.")  => "bar."
 *     basename("/home/user.name/bar.", ".")  => "bar"
 * }
 * -----
 */

string basename(string fullname, string extension = null)
    out (result)
    {
	assert(result.length <= fullname.length);
    }
    body
    {
	auto i = fullname.length;
	for (; i > 0; i--)
	{
	    version(Win32)
	    {
		if (fullname[i - 1] == ':' || fullname[i - 1] == '\\')
		    break;
	    }
	    version(Posix)
	    {
		if (fullname[i - 1] == '/')
		    break;
	    }
	}
	return chomp(fullname[i .. fullname.length],
                     extension ? extension : "");
    }

/** Alias for $(D_PARAM basename), kept for backward
 * compatibility. New code should use $(D_PARAM basename). */
alias basename getBaseName;

unittest
{
    debug(path) printf("path.basename.unittest\n");
    string result;

    version (Windows)
	result = basename("d:\\path\\foo.bat");
    version (Posix)
	result = basename("/path/foo.bat");
    //printf("result = '%.*s'\n", result);
    assert(result == "foo.bat");

    version (Windows)
	result = basename("a\\b");
    version (Posix)
	result = basename("a/b");
    assert(result == "b");

    version (Windows)
	result = basename("a\\b.cde", ".cde");
    version (Posix)
	result = basename("a/b.cde", ".cde");
    assert(result == "b");

}

/**************************
 * Extracts the directory part of a path.
 *
 * This function will search $(D fullname) from the end until the
 * first path separator or first character of $(D fullname) is
 * reached. Under Windows, the drive letter separator ($(I colon))
 * also terminates the search.
 *
 * Returns: If a path separator was found, all the characters to its
 * left are returned. Otherwise, $(D ".") is returned.
 *
 * Under Windows, the found path separator will be included in the
 * returned string if it is preceeded by a colon.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     assert(dirname(r"d:\path\foo.bat") == r"d:\path");
 *     assert(dirname(dirname(r"d:\path\foo.bat")) == r"d:\");
 * }
 * version(Posix)
 * {
 *     assert(dirname("/home/user") == "/home");
 *     assert(dirname(dirname("/home/user")) == "");
 * }
 * -----
 */

Char[] dirname(Char)(Char[] fullname)
{
    auto i = fullname.length;
    for (; i > 0; i--)
    {
        version(Win32)
        {
            if (fullname[i - 1] == ':')
                break;
            if (fullname[i - 1] == sep[0] || fullname[i - 1] == altsep[0])
            {
                // Leave separator when it's the starting character
		// (current root) or when it's preceded by ':'
		// (absolute root)
                if (i != 1 && fullname[i - 2] != ':')
                    i--;
                break;
            }
        }
        version(Posix)
        {
            if (fullname[i - 1] == sep[0])
            {   i--;
                break;
            }
        }
    }
    return i == 0 ? "." : fullname[0 .. i];
}

unittest
{
    assert(dirname("") == ".");
    assert(dirname("fileonly") == ".");
    version (Posix)
    {
        assert(dirname("/path/to/file") == "/path/to");
    }
    else
    {
        version (Win32)
        {
            assert(dirname(r"\path\to\file") == r"\path\to");
            assert(dirname(r"\foo") == r"\");
            assert(dirname(r"c:\foo") == r"c:\");
        }
    }
}

/** Alias for $(D_PARAM dirname), kept for backward
 * compatibility. New code should use $(D_PARAM dirname). */
alias dirname getDirName;

unittest
{
    string filename = "foo/bar";
    auto d = getDirName(filename);
    assert(d == "foo");
}

/********************************
 * Extracts the drive letter of a path.
 *
 * This function will search fullname for a colon from the beginning.
 *
 * Returns: If a colon is found, all the characters to its left
 * plus the colon are returned.  Otherwise, null is returned.
 *
 * Under Linux, this function always returns null immediately.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * getDrive(r"d:\path\foo.bat") => "d:"
 * -----
 */

string getDrive(string fullname)
    out (result)
    {
	assert(result.length <= fullname.length);
    }
    body
    {
	version(Win32)
	{
	    for (uint i = 0; i < fullname.length; i++)
	    {
		if (fullname[i] == ':')
		    return fullname[0 .. i + 1];
	    }
	    return null;
	}
	version(Posix)
	{
	    return null;
	}
    }

/****************************
 * Appends a default extension to a filename.
 *
 * This function first searches filename for an extension and
 * appends ext if there is none. ext should not have any leading
 * dots, one will be inserted between filename and ext if filename
 * doesn't already end with one.
 *
 * Returns: filename if it contains an extension, otherwise filename
 * + ext.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * defaultExt("foo.txt", "raw") => "foo.txt"
 * defaultExt("foo.", "raw") => "foo.raw"
 * defaultExt("bar", "raw") => "bar.raw"
 * -----
 */

string defaultExt(string filename, string ext)
{
    string existing;

    existing = getExt(filename);
    if (existing.length == 0)
    {
	// Check for filename ending in '.'
	if (filename.length && filename[filename.length - 1] == '.')
	    filename ~= ext;
	else
	    filename = filename ~ "." ~ ext;
    }
    return filename;
}


/****************************
 * Adds or replaces an extension to a filename.
 *
 * This function first searches filename for an extension and
 * replaces it with ext if found.  If there is no extension, ext
 * will be appended. ext should not have any leading dots, one will
 * be inserted between filename and ext if filename doesn't already
 * end with one.
 *
 * Returns: filename + ext if filename is extensionless. Otherwise
 * strips filename's extension off, appends ext and returns the
 * result.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * addExt("foo.txt", "raw") => "foo.raw"
 * addExt("foo.", "raw") => "foo.raw"
 * addExt("bar", "raw") => "bar.raw"
 * -----
 */

string addExt(string filename, string ext)
{
    string existing;

    existing = getExt(filename);
    if (existing.length == 0)
    {
	// Check for filename ending in '.'
	if (filename.length && filename[filename.length - 1] == '.')
	    filename ~= ext;
	else
	    filename = filename ~ "." ~ ext;
    }
    else
    {
	filename = filename[0 .. $ - existing.length] ~ ext;
    }
    return filename;
}


/*************************************
 * Checks if path is absolute.
 *
 * Returns: non-zero if the path starts from the root directory (Linux) or
 * drive letter and root directory (Windows),
 * zero otherwise.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     isabs(r"relative\path") => 0
 *     isabs(r"\relative\path") => 0
 *     isabs(r"d:\absolute") => 1
 * }
 * version(Posix)
 * {
 *     isabs("/home/user") => 1
 *     isabs("foo") => 0
 * }
 * -----
 */

bool isabs(string path)
{
    auto d = getDrive(path);
    version (Windows)
    {
	return d.length < path.length &&
	    (path[d.length] == sep[0] || path[d.length] == altsep[0]);
    }
    else
	return d.length < path.length && path[d.length] == sep[0];
}

unittest
{
    debug(path) printf("path.isabs.unittest\n");

    version (Windows)
    {
	assert(!isabs(r"relative\path"));
	assert(isabs(r"\relative\path"));
	assert(isabs(r"d:\absolute"));
    }
    version (Posix)
    {
	assert(isabs("/home/user"));
	assert(!isabs("foo"));
    }
}

/**
 * Converts a relative path into an absolute path.
 */
string rel2abs(string path)
{
    if (!path.length || isabs(path))
    {
        return path;
    }
    auto myDir = getcwd;
    if (path.startsWith(curdir))
    {
        auto p = path[curdir.length .. $];
        if (p.startsWith(sep))
            path = p[sep.length .. $];
        else if (altsep.length && p.startsWith(altsep))
            path = p[altsep.length .. $];
        else if (!p.length)
            path = null;
    }
    return myDir.endsWith(sep) || path.length
        ? join(myDir, path)
        : myDir;
}

unittest
{
    version (Posix)
    {
        auto myDir = getcwd();
        scope(exit) std.file.chdir(myDir);
        std.file.chdir("/");
        assert(rel2abs(".") == "/", rel2abs("."));
        assert(rel2abs("bin") == "/bin", rel2abs("bin"));
        assert(rel2abs("./bin") == "/bin", rel2abs("./bin"));
        std.file.chdir("bin");
        assert(rel2abs(".") == "/bin", rel2abs("."));
    }
}

/*************************************
 * Joins two or more path components.
 *
 * If p1 doesn't have a trailing path separator, one will be appended
 * to it before concatenating p2.
 *
 * Returns: p1 ~ p2. However, if p2 is an absolute path, only p2
 * will be returned.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     join(r"c:\foo", "bar") => r"c:\foo\bar"
 *     join("foo", r"d:\bar") => r"d:\bar"
 * }
 * version(Posix)
 * {
 *     join("/foo/", "bar") => "/foo/bar"
 *     join("/foo", "/bar") => "/bar"
 * }
 * -----
 */

string join(string p1, string p2, string[] more...)
{
  version (Posix)
  {
    if (!more.length)
    {
        if (isabs(p2)) return p2;
        if (p1.endsWith(sep) || altsep.length && p1.endsWith(altsep))
        {
            return p1 ~ p2;
        }
        return p1 ~ sep ~ p2;
    }
    // more components present
    return join(join(p1, p2), more[0], more[1 .. $]);
  }
  version (Windows)
  { // The other version fails unit testing when under windows
    if (!p2.length)
        return p1;
    if (!p1.length)
        return p2;

    string p;
    string d1;

    if (getDrive(p2))
    {
	p = p2;
    }
    else
    {
	d1 = getDrive(p1);
	if (p1.length == d1.length)
	{
	    p = p1 ~ p2;
	}
	else if (p2[0] == '\\')
	{
	    if (d1.length == 0)
		p = p2;
	    else if (p1[p1.length - 1] == '\\')
		p = p1 ~ p2[1 .. p2.length];
	    else
		p = p1 ~ p2;
	}
	else if (p1[p1.length - 1] == '\\')
	{
	    p = p1 ~ p2;
	}
	else
	{
	    p = cast(string)(p1 ~ sep ~ p2);
	}
    }
    return p;
  }
}

unittest
{
    debug(path) printf("path.join.unittest\n");

    string p;
    int i;

    p = join("foo", "bar");
    version (Win32)
	i = cmp(p, "foo\\bar");
    version (Posix)
	i = cmp(p, "foo/bar");
    assert(i == 0);

    version (Win32)
    {	p = join("foo\\", "bar");
	i = cmp(p, "foo\\bar");
    }
    version (Posix)
    {	p = join("foo/", "bar");
	i = cmp(p, "foo/bar");
    }
    assert(i == 0);

    version (Win32)
    {	p = join("foo", "\\bar");
	i = cmp(p, "\\bar");
    }
    version (Posix)
    {	p = join("foo", "/bar");
	i = cmp(p, "/bar");
    }
    assert(i == 0);

    version (Win32)
    {	p = join("foo\\", "\\bar");
	i = cmp(p, "\\bar");
    }
    version (Posix)
    {	p = join("foo/", "/bar");
	i = cmp(p, "/bar");
    }
    assert(i == 0);

    version(Win32)
    {
	p = join("d:", "bar");
	i = cmp(p, "d:bar");
	assert(i == 0);

	p = join("d:\\", "bar");
	i = cmp(p, "d:\\bar");
	assert(i == 0);

	p = join("d:\\", "\\bar");
	i = cmp(p, "d:\\bar");
	assert(i == 0);

	p = join("d:\\foo", "bar");
	i = cmp(p, "d:\\foo\\bar");
	assert(i == 0);

	p = join("d:", "\\bar");
	i = cmp(p, "d:\\bar");
	assert(i == 0);

	p = join("foo", "d:");
	i = cmp(p, "d:");
	assert(i == 0);

	p = join("foo", "d:\\");
	i = cmp(p, "d:\\");
	assert(i == 0);

	p = join("foo", "d:\\bar");
	i = cmp(p, "d:\\bar");
	assert(i == 0);
    }
}


/*********************************
 * Matches filename characters.
 *
 * Under Windows, the comparison is done ignoring case. Under Linux
 * an exact match is performed.
 *
 * Returns: non zero if c1 matches c2, zero otherwise.
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     fncharmatch('a', 'b') => 0
 *     fncharmatch('A', 'a') => 1
 * }
 * version(Posix)
 * {
 *     fncharmatch('a', 'b') => 0
 *     fncharmatch('A', 'a') => 0
 * }
 * -----
 */

bool fncharmatch(dchar c1, dchar c2)
{
    version (Win32)
    {
	if (c1 != c2)
	{
	    if ('A' <= c1 && c1 <= 'Z')
		c1 += cast(char)'a' - 'A';
	    if ('A' <= c2 && c2 <= 'Z')
		c2 += cast(char)'a' - 'A';
	    return c1 == c2;
	}
	return true;
    }
    version (Posix)
    {
	return c1 == c2;
    }
}

/************************************
 * Matches a pattern against a filename.
 *
 * Some characters of pattern have special a meaning (they are
 * <i>meta-characters</i>) and <b>can't</b> be escaped. These are:
 * <p><table>
 * <tr><td><b>*</b></td>
 *     <td>Matches 0 or more instances of any character.</td></tr>
 * <tr><td><b>?</b></td>
 *     <td>Matches exactly one instances of any character.</td></tr>
 * <tr><td><b>[</b><i>chars</i><b>]</b></td>
 *     <td>Matches one instance of any character that appears
 *     between the brackets.</td></tr>
 * <tr><td><b>[!</b><i>chars</i><b>]</b></td>
 *     <td>Matches one instance of any character that does not appear
 *     between the brackets after the exclamation mark.</td></tr>
 * </table><p>
 * Internally individual character comparisons are done calling
 * fncharmatch(), so its rules apply here too. Note that path
 * separators and dots don't stop a meta-character from matching
 * further portions of the filename.
 *
 * Returns: non zero if pattern matches filename, zero otherwise.
 *
 * See_Also: fncharmatch().
 *
 * Throws: Nothing.
 *
 * Examples:
 * -----
 * version(Win32)
 * {
 *     fnmatch("foo.bar", "*") => 1
 *     fnmatch(r"foo/foo\bar", "f*b*r") => 1
 *     fnmatch("foo.bar", "f?bar") => 0
 *     fnmatch("Goo.bar", "[fg]???bar") => 1
 *     fnmatch(r"d:\foo\bar", "d*foo?bar") => 1
 * }
 * version(Posix)
 * {
 *     fnmatch("Go*.bar", "[fg]???bar") => 0
 *     fnmatch("/foo*home/bar", "?foo*bar") => 1
 *     fnmatch("foobar", "foo?bar") => 1
 * }
 * -----
 */

bool fnmatch(string filename, string pattern)
    in
    {
	// Verify that pattern[] is valid
	bool inbracket = false;
	foreach (i;  0 .. pattern.length)
	{
	    switch (pattern[i])
	    {
		case '[':
		    assert(!inbracket);
		    inbracket = true;
		    break;

		case ']':
		    assert(inbracket);
		    inbracket = false;
		    break;

		default:
		    break;
	    }
	}
    }
    body
    {
	char nc;
        int not;
	int anymatch;
	int ni;       // ni == name index
	foreach (pi; 0 .. pattern.length) // pi == pattern index
	{
	    char pc = pattern[pi]; // pc == pattern character
	    switch (pc)
	    {
		case '*':
		    if (pi + 1 == pattern.length)
			return true;
		    foreach (j; ni .. filename.length)
		    {
			if (fnmatch(filename[j .. filename.length],
                                        pattern[pi + 1 .. pattern.length]))
			    return true;
		    }
		    return false;

		case '?':
		    if (ni == filename.length)
                        return false;
		    ni++;
		    break;

		case '[':
		    if (ni == filename.length)
			return false;
		    nc = filename[ni];
		    ni++;
		    not = 0;
		    pi++;
		    if (pattern[pi] == '!')
		    {	not = 1;
			pi++;
		    }
		    anymatch = 0;
		    while (1)
		    {
			pc = pattern[pi];
			if (pc == ']')
			    break;
			if (!anymatch && fncharmatch(nc, pc))
			    anymatch = 1;
			pi++;
		    }
		    if (!(anymatch ^ not))
			return false;
		    break;

		default:
		    if (ni == filename.length)
			return false;
		    nc = filename[ni];
		    if (!fncharmatch(pc, nc))
			return false;
		    ni++;
		    break;
	    }
	}
	return ni >= filename.length;
    }

unittest
{
    debug(path) printf("path.fnmatch.unittest\n");

    version (Win32)
	assert(fnmatch("foo", "Foo"));
    version (Posix)
	assert(!fnmatch("foo", "Foo"));
    assert(fnmatch("foo", "*"));
    assert(fnmatch("foo.bar", "*"));
    assert(fnmatch("foo.bar", "*.*"));
    assert(fnmatch("foo.bar", "foo*"));
    assert(fnmatch("foo.bar", "f*bar"));
    assert(fnmatch("foo.bar", "f*b*r"));
    assert(fnmatch("foo.bar", "f???bar"));
    assert(fnmatch("foo.bar", "[fg]???bar"));
    assert(fnmatch("foo.bar", "[!gh]*bar"));

    assert(!fnmatch("foo", "bar"));
    assert(!fnmatch("foo", "*.*"));
    assert(!fnmatch("foo.bar", "f*baz"));
    assert(!fnmatch("foo.bar", "f*b*x"));
    assert(!fnmatch("foo.bar", "[gh]???bar"));
    assert(!fnmatch("foo.bar", "[!fg]*bar"));
    assert(!fnmatch("foo.bar", "[fg]???baz"));
}

/**
 * Performs tilde expansion in paths.
 *
 * There are two ways of using tilde expansion in a path. One
 * involves using the tilde alone or followed by a path separator. In
 * this case, the tilde will be expanded with the value of the
 * environment variable <i>HOME</i>.  The second way is putting
 * a username after the tilde (i.e. <tt>~john/Mail</tt>). Here,
 * the username will be searched for in the user database
 * (i.e. <tt>/etc/passwd</tt> on Unix systems) and will expand to
 * whatever path is stored there.  The username is considered the
 * string after the tilde ending at the first instance of a path
 * separator.
 *
 * Note that using the <i>~user</i> syntax may give different
 * values from just <i>~</i> if the environment variable doesn't
 * match the value stored in the user database.
 *
 * When the environment variable version is used, the path won't
 * be modified if the environment variable doesn't exist or it
 * is empty. When the database version is used, the path won't be
 * modified if the user doesn't exist in the database or there is
 * not enough memory to perform the query.
 *
 * Returns: inputPath with the tilde expanded, or just inputPath
 * if it could not be expanded.
 * For Windows, expandTilde() merely returns its argument inputPath.
 *
 * Throws: std.outofmemory.OutOfMemoryException if there is not enough
 * memory to perform
 * the database lookup for the <i>~user</i> syntax.
 *
 * Examples:
 * -----
 * import std.path;
 *
 * void process_file(string filename)
 * {
 *     string path = expandTilde(filename);
 *     ...
 * }
 * -----
 *
 * -----
 * import std.path;
 *
 * string RESOURCE_DIR_TEMPLATE = "~/.applicationrc";
 * string RESOURCE_DIR;    // This gets expanded in main().
 *
 * int main(string[] args)
 * {
 *     RESOURCE_DIR = expandTilde(RESOURCE_DIR_TEMPLATE);
 *     ...
 * }
 * -----
 * Version: Available since v0.143.
 * Authors: Grzegorz Adam Hankiewicz, Thomas Kühne.
 */

string expandTilde(string inputPath)
{
    version(Posix)
    {
	static assert(sep.length == 1);

        // Return early if there is no tilde in path.
        if (inputPath.length < 1 || inputPath[0] != '~')
	    return inputPath;

	if (inputPath.length == 1 || inputPath[1] == sep[0])
	    return expandFromEnvironment(inputPath);
        else
	    return expandFromDatabase(inputPath);
    }
    else version(Windows)
    {
	// Put here real windows implementation.
	return inputPath;
    }
    else
    {
	static assert(0); // Guard. Implement on other platforms.
    }
}


unittest
{
    debug(path) printf("path.expandTilde.unittest\n");

    version (Posix)
    {
	// Retrieve the current home variable.
	char* c_home = getenv("HOME");

	// Testing when there is no environment variable.
	unsetenv("HOME");
	assert(expandTilde("~/") == "~/");
	assert(expandTilde("~") == "~");

	// Testing when an environment variable is set.
	int ret = setenv("HOME", "dmd/test\0", 1);
	assert(ret == 0);
	assert(expandTilde("~/") == "dmd/test/");
	assert(expandTilde("~") == "dmd/test");

	// The same, but with a variable ending in a slash.
	ret = setenv("HOME", "dmd/test/\0", 1);
	assert(ret == 0);
	assert(expandTilde("~/") == "dmd/test/");
	assert(expandTilde("~") == "dmd/test");

	// Recover original HOME variable before continuing.
	if (c_home)
	    setenv("HOME", c_home, 1);
	else
	    unsetenv("HOME");

	// Test user expansion for root. Are there unices without /root?
	assert(expandTilde("~root") == "/root");
	assert(expandTilde("~root/") == "/root/");
	assert(expandTilde("~Idontexist/hey") == "~Idontexist/hey");
    }
}

version (Posix)
{

/**
 * Replaces the tilde from path with the environment variable HOME.
 */
private string expandFromEnvironment(string path)
{
    assert(path.length >= 1);
    assert(path[0] == '~');

    // Get HOME and use that to replace the tilde.
    char* home = getenv("HOME");
    if (home == null)
        return path;

    return combineCPathWithDPath(home, path, 1);
}


/**
 * Joins a path from a C string to the remainder of path.
 *
 * The last path separator from c_path is discarded. The result
 * is joined to path[char_pos .. length] if char_pos is smaller
 * than length, otherwise path is not appended to c_path.
 */
private string combineCPathWithDPath(char* c_path, string path, int char_pos)
{
    assert(c_path != null);
    assert(path.length > 0);
    assert(char_pos >= 0);

    // Search end of C string
    size_t end = std.c.string.strlen(c_path);

    // Remove trailing path separator, if any
    if (end && c_path[end - 1] == sep[0])
	end--;

    // Create our own copy, as lifetime of c_path is undocumented
    string cp = c_path[0 .. end].idup;

    // Do we append something from path?
    if (char_pos < path.length)
	cp ~= path[char_pos .. length];

    return cp;
}


/**
 * Replaces the tilde from path with the path from the user database.
 */
private string expandFromDatabase(string path)
{
    assert(path.length > 2 || (path.length == 2 && path[1] != sep[0]));
    assert(path[0] == '~');

    // Extract username, searching for path separator.
    string username;
    int last_char = find(path, sep[0]);

    if (last_char == -1)
    {
        username = path[1 .. length] ~ '\0';
	last_char = username.length + 1;
    }
    else
    {
        username = path[1 .. last_char] ~ '\0';
    }
    assert(last_char > 1);

    // Reserve C memory for the getpwnam_r() function.
    passwd result;
    int extra_memory_size = 5 * 1024;
    void* extra_memory;

    while (1)
    {
	extra_memory = std.c.stdlib.malloc(extra_memory_size);
	if (extra_memory == null)
	    goto Lerror;

	// Obtain info from database.
	passwd *verify;
	setErrno(0);
	if (getpwnam_r(cast(char*) username.ptr, &result, cast(char*) extra_memory, extra_memory_size,
		&verify) == 0)
	{
	    // Failure if verify doesn't point at result.
	    if (verify != &result)
		// username is not found, so return path[]
		goto Lnotfound;
	    break;
	}

	if (errno != ERANGE)
	    goto Lerror;

	// extra_memory isn't large enough
	std.c.stdlib.free(extra_memory);
	extra_memory_size *= 2;
    }

    path = combineCPathWithDPath(result.pw_dir, path, last_char);

Lnotfound:
    std.c.stdlib.free(extra_memory);
    return path;

Lerror:
    // Errors are going to be caused by running out of memory
    if (extra_memory)
	std.c.stdlib.free(extra_memory);
    onOutOfMemoryError();
    return null;
}

}
