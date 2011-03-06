package 
{
	import flash.errors.IOError;
	
	import org.flexunit.Assert;

	public class SomeTest
	{
		[Test]
		public function addition():void { 
			Assert.assertEquals(12, 7 + 5); 
		}
		
		[Test]
		public function addition2():void { 
			Assert.assertEquals(MyClassToBeTested.testMe(4), 8); 
		}
		
		[Test(expects="flash.errors.IOError")] 
		public function doIOError():void { 
			//a test which causes an IOError }Or
			throw new IOError(); 
		}
	}
}