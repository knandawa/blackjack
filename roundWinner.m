function result = roundWinner(playerScore, dealerScore)
% determines round winner based on respective hand scores
    if (playerScore > 21)
        result = "Player Busts. Dealer wins.";
    elseif (dealerScore > 21)
        result = "Dealer Busts. Player wins";
    elseif (playerScore > dealerScore)
        result = "Player Wins.";
    elseif (dealerScore > playerScore)
        result = "Dealer Wins.";
    else
        result = "Tie";
    end

end
    
    
