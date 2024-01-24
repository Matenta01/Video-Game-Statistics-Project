function indices_L = unpopular(user_review,Number_of_Worst)
indices_L=zeros(1,1);
L_R_N=0; %Lowest Review Number

while length(indices_L) < Number_of_Worst && L_R_N<=2.5 
    indices_L=find(user_review<L_R_N);%finds user_reviews lower than L_R_N
    L_R_N=L_R_N+0.5;%increases L_R_N by 0.5
end
end