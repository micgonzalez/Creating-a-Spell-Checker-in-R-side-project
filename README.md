# Creating a Spell Checker in R (side project)

# Abstract
Spell checking and correction is a simple, yet powerful application of Bayes theorem. Given an input word, and proposed correction, we can calculate the probability of the correction being correct using Bayes theorem.  p(c|w) = P(c)P(w|c)/P(w)  In this problem, you will implement a spelling corrector based on Peter Norvig’s article, How to Write a Spelling Corrector (https://norvig.com/spell-correct.html) and using word frequency data. Using the R language and the read package to look through a text file with many words.

# Preview

![preview of spell checker code](https://github.com/micgonzalez/Creating-a-Spell-Checker-in-R-side-project/blob/master/spell_checker_in_r_code.png)

You can try this code in R and Rstudio.

# Findings
I was taked to implement a spelling corrector based on Peter Norvig’s article, How to Write a Spelling Corrector and using the following word frequency data ().

a. Load the word frequency data into a dataset. The initial dataset should have two variables, the word and the number of occurrences of that word. Create a third variable for word probability that provides the overall probability of that word occurring in the dataset.

b. Create a function that when given an input word, returns a list of candidates that are within two edits from the input word. The returned candidates should be within the known word list. Use Norvig’s Python implementation, How to Write a Spelling Corrector, for reference. Demonstrate this function on colum, heirarchy, knowlege, and adres.

c. Create a function that provides the top three suggestions for each word. Demonstrate this function on colum, heirarchy, knowlege and adres.

d. List three ways you could improve this spelling corrector.

# Challenges
I had to overcome developing a function that provided the top three suggestions. At the beginning, it would suggest incorrect words and I had to find a way to fix this issue. I also made many attempts to improve this spell check, since it was hard to get it work correctly.

# Conclusion
This is was a great learning experience and I got to learn how a spell checker works. I also learn the limitations of the R programming language when I was working on this project.
