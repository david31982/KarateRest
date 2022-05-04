package goRest.performance

import io.gatling.core.Predef._
import com.intuit.karate.gatling.PreDef._

import scala.concurrent.duration._

class TestUserStimulation extends Simulation{

  val protocol = karateProtocol(
    "/public/v2/users/{idUser}" -> Nil
  )

    /* archivos csv */
    val csvFeeder = csv("users.csv").circular
    val createUser = scenario("Create User").feed(csvFeeder).exec(karateFeature("classpath:goRest/performance/usersCsv.feature"))

   //val createUser = scenario("Create User").exec(karateFeature("classpath:goRest/performance/createUsers.feature"))


  setUp(

    createUser.inject(
      atOnceUsers(1),
      //nothingFor(4 seconds),
      constantUsersPerSec(2) during(4 seconds),
      //constantUsersPerSec(2) during(10 seconds)
      //rampUsers(2)during(5 seconds),
    ).protocols(protocol)
  )

}
