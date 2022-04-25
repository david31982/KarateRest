package PostmanApp;

import com.intuit.karate.junit5.Karate;

public class PostmanTest {

  @Karate.Test
  Karate testAll() {
    return Karate.run().relativeTo(getClass());
  }

  @Karate.Test
  Karate testTags() {
    return Karate.run().tags("@regression").relativeTo(getClass());
  }
}
