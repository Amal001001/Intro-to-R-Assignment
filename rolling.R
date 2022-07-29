#Intro to R Assignment

#1.Create a 10-sided dice.
dice10sides <- c(1:10)

#2.Create a function to roll the dice 6 times and calculate the sum of those 6 rolls.
sumOf6Roll <- function(dice){
    
  allRolls <- c()
  
  for(r in (1:6)){
    roll <- sample(dice,1,replace=T)

    allRolls <- append(allRolls, roll)
  }
  
  print(allRolls)
  
  return(sum(allRolls))
}
sumOf6Roll(dice10sides)

#####################################################################################
#[Optional] Advanced Assignment:

#1.Also, create 20-sided dice.
dice20sides <- c(1:20)

#2.Create another function to calculate how many dice rolled more than 6 (for the 10-sided)
#or 16 (for the 20-sided).
diceRolledMore <- function(dice1,dice2){
  rolls1 <- sumOf6Roll(dice1)
  rolls2 <- sumOf6Roll(dice2)
  
  if(rolls1>6 & rolls2>16){
    print("dice rolled more than 6 (for the 10-sided) or 16 (for the 20-sided) are 2")
   }else if(rolls1>6 | rolls2>16){
    print("dice rolled more than 6 (for the 10-sided) or 16 (for the 20-sided) is 1")
   }else
    print("dice rolled more than 6 (for the 10-sided) or 16 (for the 20-sided) is 0")
   
}
diceRolledMore(dice10sides,dice20sides)
