function [dealer, deck] = dealerTurn(dealer, deck)
    % This displays dealer information
    disp(['Dealer hand: ', num2str(dealer.hand)])
    disp(['Dealer score: ', num2str(dealer.score)])
    
    % If the dealer score is less than 17, takes one card
    if dealer.score < 17
        newCard = deck(1);    % takes first card from deck
        deck(1) = [];         % removes it from deck
        dealer.hand(end+1) = newCard;      % adds card to dealer's hand
        dealer.score = calculateScore(dealer.hand);  % updates score
        
        disp(['Dealer hits. New hand: ', num2str(dealer.hand)])
        disp(['Dealer new score: ', num2str(dealer.score)])
    else
        disp('Dealer stands.')
    end
    
    % This will check if dealer busted
    if dealer.score > 21
        disp('Dealer BUSTS!')
    end
end