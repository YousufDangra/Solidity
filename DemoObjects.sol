pragma solidity ^0.5.0;
interface Pakistani {
    function lovesBiryani() external;

}
interface sindhi {
    function sindhiajrak() external;
}
contract Human is Pakistani,sindhi {
 string name;
 int age;
 
 event logStringHuman(string);
 /*
 function Human(){
     logStringHuman("In Human constructor");
 }
 */
 
 constructor (string memory _name, int _age) public{
    emit logStringHuman("In Human constructor 2 argument");
     name = _name;
     age = _age;
 }
 
 function getName() public returns (string memory){
     return name;
 }
 function setName(string memory _name) public{
     name = _name;
 }
 function getAge() public returns (int){
     return age;
 }
 function setAge(int _age) public{
     age = _age;
 }
 function sleep() public {
    emit logStringHuman("human is sleeping");
 }
 function study() public {
    emit logStringHuman("human is studying");
     sleep();
 }
 function lovesBiryani() public {
    emit logStringHuman("Human loves biryani");
     
 }

function sindhiajrak() public {
    emit logStringHuman("Sindhi ajrak");
}
    
}

contract Student is Human {
    string course;
    
    event logStringStudent(string);
    constructor (string memory _name, int  _age,string memory  _course) public Human(_name,_age) {
       emit logStringStudent("In Student constructor");
        course = _course;
        
    }
    
    function getCourse() public returns (string memory){
        return course;
    }
    
    function setCourse(string memory _course) public{
        course = _course;
    }
     function sleep() public {
    emit logStringHuman("student is sleeping");
 }
    
}


contract Client {
    Pakistani myobj;
    event logString(string);
    event logInt(int);
    
    function testObjects() public{
        
        Student h = new Student("yousuf",16,"blockchain");
        
        Human st = new Student("sir",21,"Anroid");
       //Student ss = st;
      // Student sse = Student(st);
       //logString(h.getCourse());
       //Pakistani ue = Pakistani(myobj);
       
       
       
       //h.study();
       
       
        
    }
   /* function helloTesting(Human h) {
        h.sleep();
    }*/
    
}
