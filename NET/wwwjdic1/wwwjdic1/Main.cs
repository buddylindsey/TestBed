using System;
using System.Net;
using System.IO;
using System.Xml;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace wwwjdic1
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			
	        WebClient client = new WebClient ();
	
	        // Add a user agent header in case the 
	        // requested URI contains a query.
	
	        client.Headers.Add ("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; .NET CLR 1.0.3705;)");
			
			
			
	        Stream data = client.OpenRead(@"http://www.csse.monash.edu.au/~jwb/cgi-bin/wwwjdic.cgi?1ZDJsuru");
	        StreamReader reader = new StreamReader (data);
	        string s = reader.ReadToEnd ();
			
			string rawdata = raw(s);
			
			data.Close ();
	        reader.Close ();
			
			string line = RawInputByLine(rawdata)[2];
			
			string toConsole =  line;
			
			Console.WriteLine(rawdata);
			Console.WriteLine("-------------");
			
	        Console.WriteLine (toConsole);
			
			Console.WriteLine("-------------");
			
			string[] the3 = BreakDownTo3(line);
			
			Console.WriteLine(the3[0]);
			Console.WriteLine(the3[1]);
			Console.WriteLine(the3[2]);
	       
		}
		
		public static string raw(string s)
		{
			string pre = s.Remove(0, 205);

			string final = pre.Remove(pre.Length - 23);
			
			return final;
		}
		
		public static string[] RawInputByLine(string s)
		{
			var lines = Regex.Split(s, "\n");
				
			return lines;
		}
		
		public static string[] BreakDownTo3(string s)
		{
			string[] firstSplit = s.Split(new char[] {'/'}, 2);
			string[] kanji = null;
			bool iskanji = false;
			
			if(firstSplit[0].Contains("["))
			{
				kanji = firstSplit[0].Split(new char[] {'['}, 2);
				iskanji = true;
			}
				
			if(!iskanji)
				return firstSplit;
			else
			{
				string[] final = {"0","1","2"};
				final[0] = kanji[0];
				final[1] = kanji[1];
				final[2] = firstSplit[1];
				
				return final;
			}
		}
		
		public static string TempData()
		{
			throw new NotImplementedException();
		}
		
	}
}
