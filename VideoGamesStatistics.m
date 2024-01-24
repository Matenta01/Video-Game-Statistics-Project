load videogamesStats.mat

Platform_names=unique(platform);%extracts unique platform names 
number_C=length(Platform_names);%counts number of unique platforms

disp("The number of gaming platforms is: "+number_C);
disp("These are:");
disp(Platform_names);

%% counting the number of times a platform appears

regularity = zeros(1,1);

for i = 1:length(Platform_names)
    regularity(i) = length(find(platform==Platform_names(i)));
end

%% Plotting the platform names against the number of times they appear

b=bar(Platform_names,regularity);
first=min(release_date.Year);
last=max(release_date.Year);
title("The number of games each platform has from the years "+first +" to "+last);
xlabel("Gaming Platforms");
ylabel("Number of Games");
grid on
%% displaying information found

disp("Each platform has a certain number of games. Look at the graph.")
disp(b);
pause(10)
[value,location]=max(regularity);%location stores the indice of highest number
MostGames=Platform_names(location);
disp("The platform with the most games is");
disp(MostGames);

%% Part 2 begins
VideoGamesStatisticsP2









