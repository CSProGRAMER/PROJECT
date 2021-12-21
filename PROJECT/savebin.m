function []= savebin (yframe, cbframe, crframe, index)
%UNTITLED2 Summary of this function goes here
%Detailed explanation goes here
fileID= fopen(strcat("videocam\savedY", int2str(index),".bin"), 'w');
for r= 1:size (yframe, 1)
    for c= 1:size (yframe, 2)
        fprintf(fileID,"%f\n",yframe(r,c,1));
    end
    fprintf(fileID,"\n");
end
fclose(fileID); 
imtool(yframe)

%%%%
fileID= fopen(strcat("videocam\savedcb", int2str(index), ".bin"), 'w');
for r= 1:size (cbframe, 1)
    for c= 1:size (cbframe, 2)
        fprintf(fileID,"%f\n",cbframe(r,c,1));
    end
    fprintf(fileID,"\n");
end
fclose(fileID); 

%%%%

fileID= fopen(strcat("videocam\savedcr", int2str(index), ".bin"), 'w');
for r= 1:size (crframe, 1)
    for c= 1:size (crframe, 2)
        fprintf(fileID,"%f\n",crframe(r,c,1));
    end
    fprintf(fileID,"\n");
end
fclose(fileID); 
end