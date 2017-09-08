contract ProfileDetails{
    
    string public FirstName;
    string public MiddleName;
    string public LastName;
    string public JoinDate;
    string public BirthDate;
    string public City;
    string public Email;
    string public Nationality;
    string public Gender;
    address owner;
    
    mapping(address => uint) balance;
       
    
    function ProfileDetails(){
        owner = msg.sender;
    }   
    
    function setDetails(string _firstName,
        string _middleName,
        string _lastName,
        string _joinDate,
        string _birthDate,
        string _city,
        string _email,
        string _nationality,
        string _gender
        ){
        FirstName = _firstName;
        MiddleName = _middleName;
        LastName = _lastName;
        JoinDate = _joinDate;
        BirthDate = _birthDate;
        City = _city;
        Email = _email;
        Nationality = _nationality;
        Gender = _gender;
    }
    
}