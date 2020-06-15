package helloexample;
public aspect aspecthello {
	//pointcut callSayHello(): call(* helloexample.sayHello());
	 pointcut callSayHello(): call(* *.sayHello());
	    //declaracion con nombre
	    before() : callSayHello() {
	        System.out.println("Before call sayHello");
	    }
	    //declaracion anonima
	    before() : call(* *.sayHello()) {
	        System.out.println("Before call sayHello");
	    }
	    
	    //Tipos de advices 
	    /*
	    // Advice "after returning".
	    after() returning (Object retObj): callSayHello() {
	        System.out.println("Returned normally with " + retObj);
	    }
	 
	    // Advice "after throwing".
	    after() throwing (Exception e): callSayHello() {
	        System.out.println("Threw an exception: " + e);
	    }
	 
	    // Advice "after returning" + "after throwing".
	    after() : callSayHello()  {
	        System.out.println("Returned or threw an Exception");
	    }*/
}
