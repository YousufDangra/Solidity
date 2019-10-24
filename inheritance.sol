pragma solidity ^0.5.0;
contract human {
    string internal name;
    uint internal age;
    event loghumanString(string);
    constructor (string memory _name,uint _age) public {
       name = "yousuf";
       age = 20;
    }
    function setName(string memory _name) public {
        name = _name;
    }
    function getName() public returns(string memory) {
         return  name;
    }
    function setAge(uint _age) public {
        age = _age;
        
    }
    function getAge() public returns(uint) {
        return age;
    }
    function sleep() public {
       emit loghumanString("Human is Sleeping");
    }
    function study() public {
       emit loghumanString("Human is studying");
        sleep();
    }
    
}
contract student is human {
    event logstudentUint(string);
    uint internal class;
    constructor (string memory name,uint age,uint _class) public human(name,age) {
        class = class;
    }
    function setClass(uint _class) public {
        class = _class;
    }
    function getClass() public returns(uint) {
        return class;
    }
    function sleep() public {
       emit logstudentUint("Student is Sleeping");
    }
    
} 
contract teacher is human {
    event logTeacherString(string);
    string internal education;
    constructor (string memory name,uint age,string memory education) public human(name,age) {
        education = "MBA";
    }
    function setEducation(string memory _education) public {
        education = _education;
    }
    function getEducation() public returns(string memory) {
        return education;
    }
    function sleep() public {
       emit logTeacherString("Teacher is Sleeping");
    }
}
contract Client {
    event logString(string);
    event logUint(uint);
    function testObjects() public {
        human st = new human("yousuf",20);
        student sse = new student("zeeshan",20,10);
        teacher sst = new teacher("noori",20,"MBA");
        sst.sleep();
        //string memory name = st.getName();
       emit logString(sse.getName());
       // logString(st.getName());
       // uint age = st.getAge();
        //logUint(st.getAge());
        st.study();
        
    //string memory education = sst.getEducation();
      //  logString(sst.getEducation());
    }
}
