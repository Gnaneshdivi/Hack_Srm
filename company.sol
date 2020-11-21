pragma solidity ^0.6.10;

contract revacompany{
    
    struct details{
        string companyName;
        uint256 imei;
        uint256 ip;
        string companyLane;
        string companyCity;
        string comapanyState;
        uint256 companyPincode;
        uint256 companyStartDate;
    }
    
    mapping (uint => details) individualFile;
    
    function IndividualDetails(string memory CompanyName,string memory CompanyLane, string memory CompanyCity, string memory ComapanyState, uint256 CompanyPincode, uint256 CompanyStartDate, uint256 Ip_Add,uint256 Imei) public{
        details memory Person;
        Person.companyName=CompanyName;
        Person.companyLane=CompanyLane;
        Person.companyCity=CompanyCity;
        Person.comapanyState=ComapanyState;
        Person.companyPincode=CompanyPincode;
        Person.companyStartDate=CompanyStartDate;
        Person.ip=Ip_Add;
        Person.imei=Imei;
        individualFile[Imei]=Person;
    }
    
     
     function CompanyDetails(uint256 Imei) public view returns(string memory Company_Name, string memory Company_Lane, string memory Company_City, string memory Comapany_State, uint256 Company_Pincode, uint256 Company_StartDate_DDMMYYYY, uint256 Ip_Address){
        details memory Person = individualFile[Imei];
        Company_Name=Person.companyName;
        Company_Lane=Person.companyLane;
        Company_City=Person.companyCity;
        Comapany_State=Person.comapanyState;
        Company_Pincode=Person.companyPincode;
        Company_StartDate_DDMMYYYY=Person.companyStartDate;
        Ip_Address=Person.ip;
        return(Company_Name,Company_Lane,Company_City,Comapany_State,Company_Pincode,Company_StartDate_DDMMYYYY,Ip_Address);
        }
}

