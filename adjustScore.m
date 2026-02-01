function adjustedScore = adjustScore(playerHand)
% function adjusts ace cards value and score

    cardValues = [playerHand.cardValue]; % gets an array of card values in players hand
    score = handScore(playerHand); % calculates players current score
    
    if (score > 21)
        numAces = sum(cardValues == 11); % counts total number of ace cards in hand
        while (score > 21 && numAces > 0)
            score = score - 10; % adjusts ace card value to 1 instead of 11
            numAces = numAces - 1;
        end
    else 
        score = score;
    end

    adjustedScore = score; % updates players score with new score

end 


