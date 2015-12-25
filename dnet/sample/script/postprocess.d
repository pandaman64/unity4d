import std.stdio;
import std.algorithm;
import std.string;
import std.range;

void main(){
	string line;
	auto appender = appender!string;
	while(!(line = readln).empty){
		if(line.length == 0){
			break;
		}
		if(line.chomp == ","){
			continue;
		}
		appender.put(line);
	}
	write(appender.data);
}
