#!/bin/bash

set -e

clear
echo "Let's build a mad-lib!"
read -p "1. Name a city you would never want to visit: " NOUN1
read -p "2. Name how you feel when you don't get enough sleep: " ADJECTIVE1
read -p "3. Name your favorite exercise: " VERB1
read -p "4. How often do you submit your homework on time: " ADVERB1
read -p "5. What is your favorite animal to see at the zoo: " NOUN2
read -p "6. What is your favorite kind of weather: " ADJECTIVE2
read -p "7. If you could pick one celebrity to be president, who would it be: " NOUN3
read -p "8. What is your favorite thing to do when you have free time(use ing): "VERB2

echo "Once upon on a time there was a man named Bob. Bob was from $NOUN1,
the greatest place one could ever live. One day, Bob woke up feeling very
$ADJECTIVE1. He did 1000 reps of $VERB1, his favorite exercise. Bob started 
every day like this $ADVERB1. Bob had a pet $NOUN2 which he loved dearly and walked
around the block every morning. On this day the weather was perfectly $ADJECTIVE2.
After finishing his walk, Bob went to work. Bob worked as an accountant
and his boss was $NOUN3. Bob didn't feel very motivated to do any work
so instead of doing his job he spent the day $VERB2. Bob was instantly
fired by $NOUN3 and went home and cried to his $NOUN2."
