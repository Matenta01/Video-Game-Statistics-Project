Number_of_Best=input("Please enter the number of best gaming platforms you'd like to see. (It should be less than 6)");
if Number_of_Best==1
    numbers=zeros(1,1);
    for i = 1:length(NewPlatform_names)
    numbers(i) = length(find(platform==NewPlatform_names(i) & user_review >= 7.5));
    end

    [H_number,loc]=max(numbers);
    Popularity=NewPlatform_names(loc);
    disp(Popularity);

else
The_Names_h=platform(popular(user_review,Number_of_Best));%Names of popular platforms

frequency = zeros(1,1);

for i = 1:length(NewPlatform_names)
    frequency(i) = length(find(The_Names_h==NewPlatform_names(i)));
end
%% checking which platform has a high number of user_reviews greater than or equal to 7.5

indice_h=zeros(1,1);
s=18800;%total number of records
while s>0 && length(indice_h)<Number_of_Best
indice_h=find(frequency>s);
s=s-1;
end
placeholder_h=NewPlatform_names(indice_h);%stores indices of Best platform(s)
disp(placeholder_h);
end
