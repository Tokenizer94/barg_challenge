import 'dart:developer' as dev show log;

extension Log on Object{
	void logit(){
		dev.log(toString());
	}
}
