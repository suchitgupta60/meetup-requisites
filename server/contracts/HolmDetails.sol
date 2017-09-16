contract HolmDetails{
    
    string public HouseAddress;
    string public HouseTitle;
    string public HouseDeed;
    string public TitleAffidavit;
    string public BillofSale;
    string public TransferTaxDeclarations;
    string public ListerName;
    string public ListerEmail;
    string public ListerPhone;
    
    address owner;
    
    mapping(address => uint) balance;
       
    
    function ProfileDetails(){
        owner = msg.sender;
    }   
    
    
     
    function setDetails(string _houseAddress,
    string _houseTitle,
    string _houseDeed,
    string _titleAffidavit,
    string _billofSale,
    string _transferTaxDeclarations,
    string _listerName,
    string _listerEmail,
    string _listerPhone
        ){
        if(msg.sender == owner){
          HouseAddress = _houseAddress;
          HouseTitle = _houseTitle;
          HouseDeed = _houseDeed;
          TitleAffidavit = _titleAffidavit;
          BillofSale =  _billofSale;
          TransferTaxDeclarations = _transferTaxDeclarations;
          ListerName = _listerName;
          ListerEmail = _listerEmail;
          ListerPhone =  _listerPhone;  
            
        }
    }
    
}