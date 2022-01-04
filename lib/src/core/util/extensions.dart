import 'dart:developer' as dev show log;

extension Log on Object{
	void logIt(){
		dev.log(toString());
	}
}
