function [player, deck] = playerTurn(player, deck)
 
    disp(['Player: ', player.name])
    disp(['Your hand: ', num2str(player.hand)])
    disp(['Your score: ', num2str(player.score)])
    

    choice = input('Do you want to (h)it or (s)tand? ','s');
    

    if choice == 'h'
        newCard = deck(1);     % this takes the first card from the deck
        deck(1) = [];          % removes it from deck
        player.hand(end+1) = newCard;  % adds card to player hand
        player.score = calculateScore(player.hand);  % updates score
        
        % This is the updated hand and score
        disp(['New hand: ', num2str(player.hand)])
        disp(['New score: ', num2str(player.score)])
        
        % Checks for a bust
        if player.score > 21
            disp('BUST! You went over 21.')
        end
    else
        disp('Player stands.')
    end
end