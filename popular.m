function indices_H = popular(user_review,Number_of_Best)
indices_H=zeros(1,1);
H_R_N=10; %Highest Review Number

while length(indices_H) < Number_of_Best && H_R_N>=7.5 
    indices_H=find(user_review>H_R_N);%finds user_reviews greater than H_R_N
    H_R_N=H_R_N-0.5;%reduces H_R_N by 0.5
end
end
