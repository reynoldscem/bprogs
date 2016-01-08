print(str) {
  auto offset;
  offset= 0;
  while (str[offset] != '*0*0*0*0') {
    putchar(str[offset]);
    offset++;
  }
}

/* By B. Kernighan */
putnumb(n) {
	auto a;
	if(a=n/10)   /* assignment, not equality test */
		 putnumb(a);  /* recursive */
		 putchar(n%10 + '0');
}

main( ) {
  extrn fizz, buzz, newl;
  auto counter, fizzed_or_buzzed;

  counter= 1;
  while (counter <= 100) {
    fizzed_or_buzzed= 0;
    if (~(counter % 3)) {
      print(buzz);
      fizzed_or_buzzed = fizzed_or_buzzed&0001;
    }
    if (~(counter % 5)) {
      print(buzz);
      fizzed_or_buzzed = fizzed_or_buzzed&0001;
    }
    if (~fizzed_or_buzzed) {
      putnumb(counter);
    }
    str= newl;
    print(newl);
    counter++;
  }
}

fizz "F...i...z...z...";
fizz_pad "*0*0*0*0";
buzz "B...u...z...z...";
buzz_pad "*0*0*0*0";
newl "*n...";
newl_pad "*0*0*0*0";
