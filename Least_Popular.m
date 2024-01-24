Number_of_Worst=input("Please enter the number of worst games you'd like to see. (It should be less than 6 )");
if Number_of_Worst==1
    numbersl=zeros(1,1);
for i = 1:length(NewPlatform_names)
    numbersl(i) = length(find(platform==NewPlatform_names(i) & user_review <= 2.5));
end

[L_number,locl]=max(numbersl);
Un_Popularity=NewPlatform_names(locl);
disp(Un_Popularity);

else
The_Names_l=platform(unpopular(user_review,Number_of_Worst));%Names of unpopular platforms

   indices= zeros(1,1);

for i = 1:length(NewPlatform_names)
    indices(i) = length(find(The_Names_l==NewPlatform_names(i)));
end
%% checking which platform has a high number of user_reviews less than or equal to 2.5

indice_l=zeros(1,1);
m=18800;%total number of records
while m>0 && length(indice_l)<Number_of_Worst
indice_l=find(indices>m);
m=m-1;
end
placeholder_l=NewPlatform_names(indice_l);%stores indices of Worst platform(s)
disp(placeholder_l);
end
