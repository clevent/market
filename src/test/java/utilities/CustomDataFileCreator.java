package utilities;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class CustomDataFileCreator {

      public void fileGen(String str1, String str2, String str3)throws FileNotFoundException, UnsupportedEncodingException {

        PrintWriter writer = new PrintWriter("customdata.csv","UTF-8");
        writer.println("name,email,id");
        writer.println(str1+","+str2+","+str3);


        writer.close();

    }
}
