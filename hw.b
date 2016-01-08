print(str) {
  auto offset;
  offset= 0;
  while (1) {
    putchar(str[offset]);
    offset++;
    if (str[offset] == '*0') break;
  }
}

main( ) {
  auto str;
  /* String has needed padding due to seemingly
     incorrent implementation of putchar. Kernighan
     cites putchar as printing up to 4 ascii chars,
     whereas implementation of ybc seems to print
     only one.
  */
  str= "H...e...l...l...o... ...w...o...r...l...d...!...*n*0";
  print(str);
}
