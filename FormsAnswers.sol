pragma solidity ^0.6.10;

contract FormsAnswers{
    
    struct details{
        string a1;
        string a2;
        string a3;
        string a4;
        string imei;
    }
    
    mapping (string => details) individualFile;
    
    function Inputs(string memory Answer1,string memory Answer2,string memory Answer3,string memory Answer4, string memory Imei) public{
        details memory FormsAnswers;
        FormsAnswers.a1=Answer1;
        FormsAnswers.a2 = Answer2;
        FormsAnswers.a3=Answer3;
        FormsAnswers.a4=Answer4;
        FormsAnswers.imei=Imei;
        individualFile[Imei]=FormsAnswers;
    }
    
    function PersonDetails(string memory Imei) public view returns (string memory Answer1,string memory Answer2,string memory Answer3,string memory Answer4){
        details memory FormsAnswers = individualFile[Imei];
        Answer1=FormsAnswers.a1;
        Answer2=FormsAnswers.a2;
        Answer3=FormsAnswers.a3;
        Answer4=FormsAnswers.a4;

        return(Answer1,Answer2,Answer3,Answer4);
    }
     
}

