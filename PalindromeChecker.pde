public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sWord = "";
  String flip = reverse(word).toLowerCase();
  for(int i = 0; i < word.length(); i++){
    if(!word.substring(i,i+1).equals(" "))
      if(!word.substring(i,i+1).equals("!"))
        if(!word.substring(i,i+1).equals("'"))
          if(!word.substring(i,i+1).equals(","))
            sWord += word.substring(i,i+1);
  }
  if(sWord.toLowerCase().equals(flip)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String("");
  if(str.length() < 2){
    return str;
  }
  for(int i = str.length(); i > 0; i--){
    if(!str.substring(i-1,i).equals(" "))
      if(!str.substring(i-1,i).equals("!"))
        if(!str.substring(i-1,i).equals("'"))
          if(!str.substring(i-1,i).equals(","))
            sNew += str.substring(i-1,i);
  }
  return n;
}
}
