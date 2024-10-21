class AppLink{ 

//  cmd حط امر ipconfig 
// انسخ ipv4 address
// الصق العنوان بدل localhost في server link api
//192.168.1.68

  static const String baseUrl = "http://192.168.1.208/ecommerce/"; 
 // Use your machine's IP address
   static const String test = "${baseUrl}test.php";
   //------------------AUTH------------------------
  static const String signup = "${baseUrl}auth/signup.php";
  static const String verifycodesignup = "${baseUrl}auth/verifycode.php";
  static const String login = "${baseUrl}auth/login.php";

  //------------------Forget Password------------------------
   static const String checkemail = "${baseUrl}forgetpassword/checkemail.php";
   static const String verifycodeforgetpass = "${baseUrl}forgetpassword/verifycode.php";
   static const String resetpass = "${baseUrl}forgetpassword/resetpass.php";





}