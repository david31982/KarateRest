package goRest.helpers;

import com.github.javafaker.Faker;

import net.minidev.json.JSONObject;

public class DataGenerator {

  public static String getRandomEmail() {
    Faker faker = new Faker();
    //String email = faker.name().firstName().toLowerCase() + faker.random().nextInt(0, 100) + "@test.com";
    String numberEmail = faker.random().nextInt(0, 100) + "@test.com";
    return numberEmail;
  }

  public static String getRandomUsername() {
    Faker faker = new Faker();
    String username = faker.name().username();
    return username;
  }
}