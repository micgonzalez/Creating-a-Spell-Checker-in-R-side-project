# Assignment: ASSIGNMENT 11.2

# Name: GONZALEZ, MICHAEL

# Date: 21 05 2019

#A. Load the word frequency data into a dataset. 
#The initial dataset should have two variables, 
#the word and the number of occurrences of that word. 
#Create a third variable for word probability that 
#provides the overall probability of that word occurring in the dataset.

rawText <- read.table("en_full.txt", header=FALSE, sep=" ")
colnames(rawText)[colnames(rawText)=="V1"] <- "word"
colnames(rawText)[colnames(rawText)=="V2"] <- "occurs"
word_prob <- rawText$occurs
rawText$word_prob <- word_prob

#B. Create a function that when given an input word, returns a list of candidates
#that are within two edits from the input word. The returned candidates should be 
#within the known word list. Use Norvig’s Python implementation, How to Write a 
#Spelling Corrector, for reference. Demonstrate this function on colum, heirarchy, 
#knowlege, and adres.

word_count <- table(rawText$word)
sorted_words <- names(sort(word_count, decreasing = TRUE))

correct <- function(word) {
  edit_dist <- adist(word, sorted_words)
  min_edit_dist <- min(edit_dist, 2)
  proposals_by_prob <- c(sorted_words[ edit_dist <= min(edit_dist, 2)])
  proposals_by_prob <- c(proposals_by_prob, word)
  proposals_by_prob[1]
}


#C. Create a function that provides the top three suggestions for each word. 
#Demonstrate this function on colum, heirarchy, knowlege and adres.

word_count <- table(rawText$word)
sorted_words <- names(sort(word_count, decreasing = TRUE))

correct <- function(word) {
  edit_dist <- adist(word, sorted_words)
  min_edit_dist <- min(edit_dist, 2)
  proposals_by_prob <- c(sorted_words[ edit_dist <= min(edit_dist, 2)])
  proposals_by_prob <- c(proposals_by_prob, word)
  c(proposals_by_prob[1], proposals_by_prob[2], proposals_by_prob[3])
}
