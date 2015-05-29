# RUBY TIC TAC TOE by NICOLE FEDERICI
# This is my array. I'm gonna use it in this program to refer to spots played.
spots=['0','1','2','3','4','5','6','7','8']
# This is the method or function I'm gonna call later so I don't have to print out the whole thing with each spot and bracket to get it to show the board after each play. I called it Jenny, so I'd remember that it really isn't related to spots until I tell it to be later on. I'm going to remember to end this method with an end, or I'll have probs.
def printboard(jenny)
  puts jenny[0]+jenny[1]+jenny[2]
  puts jenny[3]+jenny[4]+jenny[5]
  puts jenny[6]+jenny[7]+jenny[8]
end
# This is the next method I'm going to call to test if someone placed an X or an O and created a victory with it. I'm going to run it starting at the third move, because that is the first opportunity for a win. Tspots just backrefers to the original array and its positions when I call this little program. Tspots'role is the same here as jenny's is in printboard. I'm going to use ifs and ors because they represent the possible victory plays.
def victorytest(tspots,winrow)
  if (tspots[0]+tspots[1]+tspots[2]==winrow) or (tspots[3]+tspots[4]+tspots[5]==winrow) or   (tspots[6]+tspots[7]+tspots[8]==winrow) or (tspots[0]+tspots[3]+tspots[6]==winrow) or (tspots[1]+tspots[4]+tspots[7]==winrow) or (tspots[2]+tspots[5]+tspots[8]==winrow) or (tspots[0]+tspots[4]+tspots[8]==winrow) or (tspots[2]+tspots[4]+tspots[6]==winrow)
    #return true is a Boolean thingy that I read about in Learn Ruby the Hard Way. Beacuse a method returns a value by default. In the other method, I just wanted to print things, and kind of automate that process. In this one, I had to write out the board test evey time- I started with that, but then I figured I was not obeying the DRY rule. I was repeating myself all over the place. So if victory test returns a true, then we hit the puts "Victory" thing. If it returns a false, then we hit the else in the larger program. 
    return true
  else
    return false
  end
end
puts 'Welcome to Nicole Federici\'s tic tac toe game for two players in Ruby!'
puts 'Playa uno! Name yourself! You shall be X.'
playauno=gets.chomp
puts 'Playa secundo! Name yourself. You shall be O.'
playasecundo=gets.chomp
puts "Take a look at this somehwat simple board. The possible positions for X or O are represented by numbers in the format of a grid."
printboard(spots)
 # I know I can build a loop for the game play. Maybe it will be a loop within a loop. I figure I'll have to use for-loops, but honestly, I have not had time to really read, digest, and implement for-loops with confidence before tomorrow. I've had four days to read about Ruby and write this before our meeting on Sunday, and I will try to figure out the for-loops tomorrow morning, but for now, I just want to send you this so you have the working game I wrote for our interview. If I can update it with the for-loops before I meet you at 5:40, I will! 
puts playauno+", choose your FIRST move. In otherwords, name the number of the spot you want your first X to occupy."
moveplayauno=gets.chomp
spots[moveplayauno.to_i]='X'
printboard(spots)
puts playasecundo+", choose your FIRST move. In otherwords, name the number of the spot you want your first O to occupy."
moveplayasecundo=gets.chomp
# Ok, so I made an entering mistake myself, when I was testing this game. I overwrote another player's play. I wanted to create something with the while loop that would prevent a player from using his turn on rewriting play. So, I named th position (don't know the words for this---in Ruby talk) spots from up top on what I gets.chomp from moveplayasecindo. I put it .to_i, because I need to tell the computer where in the array it is located, and their entry will be in a string format. I made it == to X because that would be the occupied spot string. But later, I had to make it == to X and == to O because both could occupy that spot at that point in the game. I made sure to end it with an end. Kept making that mistake.
while spots[moveplayasecundo.to_i]=="X"
  puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
  moveplayasecundo=gets.chomp
end
spots[moveplayasecundo.to_i]='O'
printboard(spots)
puts playauno+", choose your SECOND move. In otherwords, name the number of the spot you want your second X to occupy."
moveplayauno=gets.chomp
while spots[moveplayauno.to_i]=="X" or spots[moveplayauno.to_i]=="O"
  puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
  moveplayauno=gets.chomp
end
spots[moveplayauno.to_i]='X'
printboard(spots)
puts playasecundo+", choose your SECOND move. In otherwords, name the number of the spot you want your second O to occupy."
moveplayasecundo=gets.chomp
while spots[moveplayasecundo.to_i]=="X" or spots[moveplayasecundo.to_i]=="O"
  puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
  moveplayasecundo=gets.chomp
end
spots[moveplayasecundo.to_i]='O'
printboard(spots)
puts playauno+", make your THIRD move the same way you did the first two moves."
moveplayauno=gets.chomp
while spots[moveplayauno.to_i]=="X" or spots[moveplayauno.to_i]=="O"
  puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
  moveplayauno=gets.chomp
end
spots[moveplayauno.to_i]='X'
printboard(spots)
if victorytest(spots,"XXX")
  puts "Victory! #{playauno}, you have won!"
else
  puts playasecundo+", make your THIRD move the same way you did the first two moves"
  moveplayasecundo=gets.chomp
  while spots[moveplayasecundo.to_i]=="X" or spots[moveplayasecundo.to_i]=="O"
    puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
    moveplayasecundo=gets.chomp
  end
  spots[moveplayasecundo.to_i]='O'
  printboard(spots)
  if victorytest(spots,"OOO")
    puts "Victory! #{playasecundo}, you have won!"
  else
    puts playauno+", carefully place your FOURTH X."
    moveplayauno=gets.chomp
    while spots[moveplayauno.to_i]=="X" or spots[moveplayauno.to_i]=="O"
      puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
      moveplayauno=gets.chomp
    end
    spots[moveplayauno.to_i]='X'
    printboard(spots)
    if victorytest(spots,"XXX")
      puts "Victory! #{playauno}, you have won!"
    else
      puts playasecundo+", carefully place your FOURTH O."
      moveplayasecundo=gets.chomp
      while spots[moveplayasecundo.to_i]=="X" or spots[moveplayasecundo.to_i]=="O"
        puts "Oops, that spot is already taken! Carefully choose an unoccupied spot."
        moveplayasecundo=gets.chomp
      end
      spots[moveplayasecundo.to_i]='O'
      printboard(spots)
      if victorytest(spots,"OOO")
        puts "Victory! #{playasecundo}, you have won!"
      else
        # It was getting annoying to not have a draw comment. I made one for at least the eighth move. I'll have to work on how to tell the computer earlier, because I don't know how to engineer that right now.      
        puts "This game is a draw!"
      end
    end
  end
end
# I may also want to figure out how to check user input for nutty entries, as in the case where somoene enters "Cummberbatch" instead of a number, or in the case where they enter a 9, which is outside our array.