delete(instrfind({'Port'},{'COM3'}));
theta = 0:(pi/180):pi;
s = serial('COM3');
s.BaudRate=9600
fopen(s)
k = 0;

inc = 1;

while k<180
   A = fgets(s);
   num(k+1) = str2num(A);
   k = k+1;
end
fclose(s)

j = 1

while j<181
    tab(j,1) = (j-1)*inc
    tab(j,2) = num(j)
    tab(j,3) = num(j)*cosd((j-1)*inc)
    tab(j,4) = num(j)*sind((j-1)*inc)
    j = j+1
end
%figure
%polar(theta,num)


plot(tab(:,3),tab(:,4))


