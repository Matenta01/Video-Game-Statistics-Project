load Optimised_VideoGames.mat

NewPlatform_names=unique(platform);
number_NewP=length(NewPlatform_names);

disp("The same platforms have been grouped together for better analysis.");
disp(" ");
disp("The platform Nintentdo consists of: ");
disp("3DS, DS, Nintendo 64, Switch, Wii, Wii U, Game Boy Advance and GameCube.");
disp(" ");
disp("The platform Xbox consists of: ");
disp("Xbox, Xbox 360, Xbox One and Xbox Series X");
disp(" ");
disp("The platform PlayStation consists of: ");
disp("PlayStation, PlayStation 2, PlayStation 3, PlayStation 4, PlayStation 5, PlayStation Vita and PSP");
disp(" ");
disp("The platforms PC, DreamCast and Stadia are unchanged.");
disp(" ");
disp("Therefore, there are "+ number_NewP+" Platforms.");
disp(" ");


%% Counting the number of games for each platform and editing bar chart.

frequencies = zeros(1,1);

for i = 1:length(NewPlatform_names)
    frequencies(i) = length(find(platform==NewPlatform_names(i)));
end
new_p=bar(NewPlatform_names, frequencies);%new_p means new platforms
grid on
first=min(release_date.Year);
last=max(release_date.Year);
title("The number of games each platform has from the years "+first +" to "+last);
xlabel("Gaming Platforms");
ylabel("Number of Games");
new_p.FaceColor="b";
new_p.EdgeColor="b";

%% Continued

[value,loc]=max(frequencies);
Most_Games=NewPlatform_names(loc);
disp("The platform with the most games is :");
disp(Most_Games);
disp("The graph shows the number of games the platforms have.")
disp(new_p);


%% Part 3: Choose.

X=input("Do you want to see the most popular platform (1) or the least popular platform (2)");
while ~(X==1) && ~(X==2)
    disp("Please enter '1' or '2'.");
    X=input("Do you want to see the most popular platform (1) or the least popular platform (2)");
end

if X==1
    Most_Popular

else 
    Least_Popular

end
