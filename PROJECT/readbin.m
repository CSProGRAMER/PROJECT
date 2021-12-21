function [frame] = readbin (name, width, height)
fileID = fopen (name, 'r'); % data-fread(fileID);
imageWidth = width; 
imageHeight = height; 
numColor = 1;
newData = zeros(imageHeight, imageWidth); 
newData=im2double(newData);
l=1;
count = 1;
[v] = fscanf(fileID, '%f');
for i = 1:imageHeight %for i 0 to maxColumn 
        for j = 1:imageWidth % for j 0 to maxRow 
            for k= 1:numColor
            newData(i,j,1)=v(count);
            count =count+1; 
            end
            l=1+1;
        end
end
fclose(fileID);
frame=newData;
end