//*****************************GDG KITWE******************************** */
// Prepared by: Kondwani Nyirenda
//About: The program below implements functions, if statements ,lists ,classes and for loops
//My github username is kondwani0099 check out my projects and other codes
//Created date: 26 October ,2023 
/************************************************************************/
// The entry point of the app
void main(){
    // comments used for documentation
    print('*******Dart basics class under the GDG kitwe*********');

    print('************Function adding numbers together**************');
    int results = add(7, 10); // The change the variables and notice the changes 
    print('Added numbers: $results');

    print('***************Person class**************');
    var person = Person('Kondwani', 23);//initializing  the class object person to call variables and functions in the Person class
    person.greet();// the object calls the greet function in the Pesron class
    
    print('*****************If Statements *************');
    controlstatements();

    print('****************List of Fruits************');

    List<String> fruits=['Apple','Banana','Mango','Oranges'];
    for(String fruit in fruits){
      print('The fruits I like eating $fruit');
    }
}

//funtion to add two numbers together 
int add(int a , int b){
  return a +b;
}

class Person{
  int age ;
  String name ;
  Person(this.name ,this.age);// this is a constructor

  void greet(){
    print('Hello $name you are $age years old');
  }

}
//Function to show how if statements work
void controlstatements(){
  int temperature = 50;// change the value and notice the difference
  if(temperature > 30){
    print('its hot outside');
  }else if(temperature < 30){
    print('its pleasant outside');
  }else{
    print('its cold outide');

  }
}