add5 = function(x)
{
  return(x + 5)
}

multiply5 = function(x)
{
  return(x * 5)
}

# a function that rolls two dice and output T or F depending on whether the outcome
# is as desired (even or greater than 7)
roll_die = function() {
  # we use the built-in function sample that samples uniformly from 1 to 6
  die1 = sample(1:6, 1)
  die2 = sample(1:6, 1)
  score = die1 + die2
  if ((score %% 2 == 0) | (score > 7)) { # here %% means mod
    return(T)
  } else {
    return(F)
  }
}

N = 1000    # we will run the experiment 1000 times
y = 0       # y will keep track of the number of times we get the desired outcome
for (i in 1:N) {
  if (roll_die()) {
    y = y + 1
  }
}
cat("The estimated probability is", y / N)

estimate_prob = function(N) {
  y = 0
  for (i in 1:N) {
    if (roll_die()) {
      y = y + 1
    }
  }
  return(y / N)
}
cat("We estimate this probability 5 times:", estimate_prob(1000),
    estimate_prob(1000), estimate_prob(1000), estimate_prob(1000), estimate_prob(1000))
