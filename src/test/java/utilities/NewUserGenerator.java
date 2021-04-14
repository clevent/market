package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class NewUserGenerator {

    public static Map<String,Object> createNewUser(){

        Faker faker = new Faker();
        String name = faker.name().firstName();

//      string manupulation for getting same pattern with users at database
        String email = name + "@"+name.toLowerCase()+"."+(name.substring(0,2)).toLowerCase()+"1" ;

        Map<String,Object> newUser = new HashMap<>();
        newUser.put("email",email);
        newUser.put("name",name);

        return newUser;
    }


}
