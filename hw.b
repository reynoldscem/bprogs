main( ) {
  extrn str_len;
  auto str, offset;
  /* String has needed padding due to seemingly
     incorrent implementation of putchar. Kernighan
     cites putchar as printing up to 4 ascii chars,
     whereas implementation of ybc seems to print
     only one.
  */
  str= "H...e...l...l...o... ...w...o...r...l...d...!...*n";
str_remaining:
  putchar(str[offset]);
  if (++offset < (str_len)) goto str_remaining;
}

str_len 13;
