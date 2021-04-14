package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class BookingInfoGenerator {

    public static Map<String,Object> createNewBookingData(){

        Faker faker = new Faker();

//        String date = faker.date().future();
        String dest = faker.aviation().airport();
        String origin = faker.aviation().airport();

        Map<String,Object> newData = new HashMap<>();
//      newData.put("date",date);
        newData.put("destination", dest);
        newData.put("origin",origin);


        return newData;
    }


}
