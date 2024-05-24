void setup() {
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("There are " + lines.length + " lines.");
  for (int i = 0; i < lines.length; i++) {
    if (palindrome(lines[i])) {
      System.out.println(lines[i] + " IS a palindrome.");
    } else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

boolean palindrome(String word) {
  String cleanedWord = cleanString(word);
  String reversedWord = reverse(cleanedWord);
  return cleanedWord.equalsIgnoreCase(reversedWord);
}

String cleanString(String str) {
  StringBuilder cleaned = new StringBuilder();
  for (int i = 0; i < str.length(); i++) {
    char c = str.charAt(i);
    if (Character.isLetterOrDigit(c)) {
      cleaned.append(c);
    }
  }
  return cleaned.toString();
}

String reverse(String str) {
  return new StringBuilder(str).reverse().toString();
}
