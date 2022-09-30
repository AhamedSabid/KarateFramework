package KarateAutomationDemo.KarateAutomationDemo;

import org.junit.runner.RunWith;
import org.testng.annotations.DataProvider;

import com.intuit.karate.junit4.Karate;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@RunWith(Karate.class)
@CucumberOptions(
		plugin = {"html:Reports/cucumber-html-report.html"}, 
		monochrome = true,
		features = { "src/test/java/KarateAutomationDemo/KarateAutomationDemo" }
)

public class ParallelRun extends AbstractTestNGCucumberTests {
	
	 @Override
	  
	  @DataProvider(parallel = true) public Object[][] scenarios() { return
	  super.scenarios(); }
	 
}