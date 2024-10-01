import 'package:get/get.dart';

class MyTranslation implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{ 
    "ar":{"1":"اختر اللغة",
          "2":"اختر المنتج", 
          "3":"سهل و امن الدفع"
    },
    "en":{"1":"Choose Languge",
          "2":"Choose Proudct",
          "3":"Easy &M Safe Payment"     
    }

  }; 

}