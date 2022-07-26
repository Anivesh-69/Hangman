# Hangman

DONE BY: ANIVESH SINGH GURJER
ROLL NO.: 2020CSB1071

The rules of hangman game is:

The user will have to guess the word given by computer and the user has 6 chances to guess the word. If the user guesses thw word correctly within 6 tries, the user wins and if user fails to guess the word within 6 tries then the user losses the game. If the user guesses the correct word then The user retains the chances he had before he guessed the word.
example: Suppose the user has 3 tries left and the user chooses the correct word then the user hasa 3 tries still left and the game will continue.
After losing the user will get the following by program:

                                    +----+                                                                                  
                                      |    |
                                      |    0
                                      |   /|\   
                                      |    |
                                      |   / \ 
                                     _|_
                                    |   |______
                                    |          |
                                    |__________|
                                    You lost!, the word was : _________

Instructions to be followed while playing Hangman:

->The word to guess is represented by a row of dashes, giving the number of letters in the word.

->If the player suggests a letter which occurs in the word, it writes it in all its correct positions

->If the suggested letter does not occur in the word, it draws one element of a hanged man stick figure as a tally mark

->The game is over when:
 The player completes the word, or guesses the whole word correctly – Player Wins!
 Number of tries exceeds a limit (completes the hangman diagram) – Player loses!

->The program will give the user word and the word is chosen random from the list given at the end of this ReadMe file.
eg. 
Your word is: ------

-> the user will have to type the letter he/she guesses after the "Your guess:" statement.
eg.
Your word is: ----------

 Your Guess:

-> If the letter type is wrong then the program will show the following:
Your Guess: a
your wrong guesses are: a
word: ----------

                                      +----+
                                      |    |
                                      |    0
                                      |      
                                      |    
                                      |    
                                     _|_
                                    |   |______
                                    |          |
                                    |__________|

 Sample List of Words
"computer|radio|calculator|teacher|bureau|police|geometry|president|subject|country|en
viroment|classroom|animals|province|month|politics|puzzle|instrument|kitchen|language|
vampire|ghost|solution|service|software|virus25|security|phonenumber|expert|website|ag
reement|support|compatibility|advanced|search|triathlon|immediately|encyclopedia|endur
ance|distance|nature|history|organization|international|championship|government|popula
rity|thousand|feature|wetsuit|fitness|legendary|variation|equal|approximately|segment|
priority|physics|branche|science|mathematics|lightning|dispersion|accelerator|detector
|terminology|design|operation|foundation|application|prediction|reference|measurement|
concept|perspective|overview|position|airplane|symmetry|dimension|toxic|algebra|illust
ration|classic|verification|citation|unusual|resource|analysis|license|comedy|screenpl
ay|production|release|emphasis|director|trademark|vehicle|aircraft|experiment";
