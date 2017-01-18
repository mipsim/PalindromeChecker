///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void setup()
{
  String lines[] = loadStrings("palindromes.txt");

  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    String temp = new String();

    temp = temp + noCapitals(lines[i]);

    if (palindrome(noSpaces(temp)) == true)
    {
      println(lines[i] + " IS a palidrome.");
    }

    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public boolean palindrome(String word)
{
  String sNew = new String();

  for (int i = word.length(); i > 0; i--)
  {
    sNew = sNew + word.substring(i-1,i);
  }

  if (word.equals(sNew))
  {
    return true;
  }

  return false;
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public String reverse(String str)
{
    String sNew = new String();
    
    for (int i = str.length(); i > 0; i--)
    {
      sNew = sNew + str.substring(i-1,i);
    }

    return sNew;
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



public String noSpaces(String sWord)
{
  String temp = new String();

  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)) == true)
    {
      temp = temp + sWord.charAt(i);
    }
  }

  return temp;
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public int numLetters(String sString)
{
  int temp = 0;

  for (int i = 0; i < sString.length(); i++)
  {
    if (Character.isLetter(sString.charAt(i)) == true)
    {
      temp++;
    }
  }

  return temp;
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public String noCapitals(String sWord)
{
  String temp = new String();
  temp = temp + sWord.toLowerCase();
  return temp;
}