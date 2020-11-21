pragma solidity ^0.6.10;

contract FormsQuestions{
    
    struct details{
        string q1;
        string q2;
        string q3;
        string q4;
        string imei;
    }
    
    mapping (string => details) individualFile;
    
    function Inputs(string memory question1,string memory question2,string memory question3,string memory question4, string memory Imei) public{
        details memory Company;
        Company.q1=question1;
        Company.q2 = question2;
        Company.q3=question3;
        Company.q4=question1;
        Company.imei=Imei;
        individualFile[Imei]=Company;
    }
    
    function PersonDetails(string memory Imei) public view returns (string memory Question1,string memory Question2,string memory Question3,string memory Question4){
        details memory Company = individualFile[Imei];
        Question1=Company.q1;
        Question2=Company.q2;
        Question3=Company.q3;
        Question4=Company.q4;

        return(Question1,Question2,Question3,Question4);
    }
     
}

