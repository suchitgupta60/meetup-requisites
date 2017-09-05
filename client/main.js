$(document).ready(function() { 
  $(".container").hide();
  window.addEventListener('load', setTimeout(function () {

      // Checking if Web3 has been injected by the browser (Mist/MetaMask)
    if (typeof web3 !== 'undefined') {
      // Use Mist/MetaMask's provider
      window.web3 = new Web3(web3.currentProvider); 
      if (web3.currentProvider.isMetaMask === true) {
          if (typeof web3.eth.defaultAccount === 'undefined') {
              document.body.innerHTML = '<body><h1>Oops! Your browser does not support Ethereum Ðapps.</h1></body>';   
          }
          else {
              startApp();
          }
      }
      else {
          alert('No web3? Please use google chrome and metamask plugin to enter this Dapp!', null, null);
          // fallback - use your fallback strategy (local node / hosted node + in-dapp id mgmt / fail)
        window.web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:3000"));
      }
    }
  }, 1000));
});

function startApp() {
  $(".container").show(); 
  MainFunction();
} 

function MainFunction(){ 
  
      var Email = $('#email').val();
      var EmailHash = CryptoJS.MD5(Email).toString();  
      var ImageRequestURL = "https://www.gravatar.com/avatar/" + EmailHash;
      
      //$("#profile-image1").attr("src", ImageRequestURL); 
    
      $("#submit").on( "click", function() {
        var FirstName = $('#firstName').val();
        var MiddleName = $('#middleName').val();
        var LastName = $('#lastName').val();
        var JoinDate = $('#joinDate').val();
        var BirthDate = $('#birthDate').val();
        var City = $('#city').val();
        var Email = $('#email').val();
        var Nationality = $('#nationality').val();
        var Gender = $('#gender').val();
  
          debugger;
      });
  
      $('#profile-image1').on('click', function() {
        $('#profile-image-upload').click();
      });    
}
  
