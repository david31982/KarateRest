package goRest.performance;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
            Karate testUsers() {return Karate.run("createUsers").relativeTo(getClass());
            //Karate testUsers() {return Karate.run("userCsv").relativeTo(getClass());
    }

}
