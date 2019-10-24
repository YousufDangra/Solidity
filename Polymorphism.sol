pragma solidity ^0.5.0;
contract SumContract {
    function sum(uint a,uint b) pure public returns(uint) {
        return a + b;
    }
}

contract MultiplyContract is SumContract {
    function multiply(uint a,uint b) pure public returns(uint) {
        return a * b;
    }
}

contract DivideContract is SumContract {
    function divide(uint a,uint b) pure public returns(uint) {
        return a / b;
    }
}

contract SubContract is SumContract, DivideContract, MultiplyContract {
    function sub(uint a,uint b) pure public returns(uint) {
        return a - b;
    }
}

contract Client {
    uint a = 40;
    uint b = 20;
    function workwithinheritence() public returns(uint) {
       // SubContract sse = new SubContract();
        //return sse.divide(a,b);
        //DivideContract see = new DivideContract();
        //return see.divide(a,b);
        SumContract sue = new SumContract();
        return sue.sum(a,b);
        
    }
    function workwithInher() public returns(uint) {
        DivideContract sse = new DivideContract();
        return sse.sum(a,b);
    }
}
