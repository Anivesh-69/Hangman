 
 
 #!/usr/bin/perl -w


 @wordbank=qw( computer radio calculator teacher bureau police geometry president subject country enviroment classroom animals province month politics puzzle instrument kitchen language vampire ghost solution service software virus25 security phonenumber expert website agreement support compatibility advanced search triathlon immediately encyclopedia endurance distance nature history organization international championship government popularity thousand feature wetsuit fitness legendary variation equal approximately segment priority physics branche science mathematics lightning dispersion accelerator detector terminology design operation foundation application prediction reference measurement concept perspective overview position airplane symmetry dimension toxic algebra illustration classic verification citation unusual resource analysis license comedy screenplay production release emphasis director trademark vehicle aircraft experiment );
 @guesses=();
 $num=0;
 $wrong=0;
 @wrnguess=(); 

 $choice=$wordbank[rand @wordbank];


my @hangman= ("  +----+\n  |    |\n  |    0\n  |      \n  |    \n  |    \n _|_\n|   |______\n|          |\n|__________|","  +----+\n  |    |\n  |    0\n  |   /   \n  |    \n  |    \n _|_\n|   |______\n|          |\n|__________|","  +----+\n  |    |\n  |    0\n  |   /|   \n  |    \n  |    \n _|_\n|   |______\n|          |\n|__________|","  +----+\n  |    |\n  |    0\n  |   /|\\   \n  |    |\n  |    \n _|_\n|   |______\n|          |\n|__________|","  +----+\n  |    |\n  |    0\n  |   /|\\   \n  |    |\n  |   /  \n _|_\n|   |______\n|          |\n|__________|","  +----+\n  |    |\n  |    0\n  |   /|\\   \n  |    |\n  |   / \\ \n _|_\n|   |______\n|          |\n|__________|");

 @letters=split(//, $choice);

 @blankword=(0) x scalar(@letters);
 print "Your word is: ";
 OUTER: 
   while ($wrong<@hangman) {
       if($num!=0){
           print "word: ";
       }
       $num++;
  	 foreach $i (0..$#letters) {
	    if ($blankword[$i]) {
	     print $blankword[$i];
	    } else {
		 print "-";
	    }
	 }
	 print "\n";
    
	 if ($wrong) {
        
	    print "$hangman[$wrong-1]\n";
         
	 }
	 print "\n Your Guess: ";
	 $guess=<STDIN>; 
     chomp $guess;
     if($wrong>-1){
         for ($i=0;$i<($wrong+3);$i++){
            $wrnguess[$wrong]=$guess;
            
}
if($wrong==0){
    print " your wrong guesses are: $guess\n";
}
elsif($wrong>0){print "Your wrong gusses:  @wrnguess\n";}
     }
    
	 foreach(@guesses) {
	    next OUTER if ($_ eq $guess);
	 }
	 $guesses[@guesses]=$guess;
	 $right=0;
	 for ($i=0; $i<@letters; $i++) {
	    if ($letters[$i] eq $guess) {
		 $blankword[$i]=$guess;
		 $right=1;
	    }
	 }
	 $wrong++ if (not $right);
	 if (join('', @blankword) eq $choice) {
	    print "You WON, you guessed the right word!\n";
	    exit;
	 }
 }
 print "$hangman[5]\nYou lost!, the word was : $choice\n";
