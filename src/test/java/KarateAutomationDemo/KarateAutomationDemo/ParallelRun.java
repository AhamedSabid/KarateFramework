package KarateAutomationDemo.KarateAutomationDemo;


import org.testng.annotations.DataProvider;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
		plugin = {"html:Reports/cucumber-html-report.html"}, 
		monochrome = true,
		features = { "src/test/java/Features" }, 
		glue = { "StepDefinitions" }
)

public class ParallelRun extends AbstractTestNGCucumberTests {
	@Override
	@DataProvider(parallel = true)
	public Object[][] scenarios() {
		return super.scenarios();
	}
}
