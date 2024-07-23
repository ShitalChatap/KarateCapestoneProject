package cpm.maveric.TestApi;


import com.intuit.karate.junit5.Karate;

public class TestRunner
{
	
	@Karate.Test
	Karate Testtag()
	{
		return Karate.run("classpath:./userapi").tags("@execute").relativeTo(getClass());
	}

}
