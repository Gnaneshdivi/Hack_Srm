pragma solidity ^0.6.10;

contract reva{
    
    struct details{
        string name;
        string lane;
        string city;
        string state;
        uint256 pincode;
        uint256 date;
        uint256 month;
        uint256 year;
        uint256 imei;
        uint256 addPlantDDMMYYYY;
    }
    
    mapping (uint => details) individualFile;
    
    function individual(string memory Name,string memory Lane,string memory City,string memory State,uint256 Pincode, uint256 Date, uint256 Month, uint256 Year, uint256 Imei, uint256 AddPlantDDMMYYYY) public{
        details memory Person;
        Person.name=Name;
        Person.lane = Lane;
        Person.city=City;
        Person.state=State;
        Person.pincode=Pincode;
        Person.date=Date;
        Person.month=Month;
        Person.year=Year;
        Person.imei=Imei;
        Person.addPlantDDMMYYYY=AddPlantDDMMYYYY;
        individualFile[Imei]=Person;
    }
    
    function PersonDetails(uint256 Imei) public view returns (string memory PersonName,string memory Personlane,string memory Personcity,string memory Personstate,uint256 Personpincode, uint256 Persondate, uint256 Personmonth, uint256 Personyear, uint256 Add_Plant_DDMMYYYY){
        details memory Person = individualFile[Imei];
        PersonName=Person.name;
        Personlane=Person.lane;
        Personcity=Person.city;
        Personstate=Person.state;
        Personpincode=Person.pincode;
        Persondate=Person.date;
        Personmonth=Person.month;
        Personyear=Person.year;
        Add_Plant_DDMMYYYY=Person.addPlantDDMMYYYY;
        return(PersonName,Personlane,Personcity,Personstate,Personpincode,Persondate,Personmonth,Personyear,Add_Plant_DDMMYYYY);
        
    }
     
}

