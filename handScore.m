% Initializing players and dealer
numPlayers = input('Enter number of players (1-4): ');

players = struct();  % Asking for name of players based off previous input
for i = 1:numPlayers
    players(i).name = input(['Enter name for player ', num2str(i), ': '], 's');
    players(i).hand = [];
    players(i).score = 0;
end



% Dealer
dealer.name = 'Dealer';
dealer.hand = [];
dealer.score = 0;

% Player turn
function [player, deck] = playerTurn(player, deck)
    
end


%Bust if score is over 21
function bust = isBust(score)
    bust = score > 21;
end