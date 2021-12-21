function cframe = decoding(frame,yframe,cbframe,crframe)


%     cbframe = imresize (cbframe,2);
%     crframe = imresize (crframe,2);

    
    D = 8;
    T = dctmtx(D);
    %dct = @(block_struct) T * block_struct.data * T';
    Y = (yframe);
    Cb =(cbframe);
    Cr =(crframe);
    
%     Y = im2double(frame(:,:,1));
%     Cb = im2double(frame(:,:,2));
%     Cr = im2double(frame(:,:,3));
    
    I2Y = blkproc(Y,[D D],'P1*x*P2',T',T);     
    I2Cb = blkproc(Cb,[D D],'P1*x*P2',T',T);
    I2Cr = blkproc(Cr,[D D],'P1*x*P2',T',T);

    imgycbcr(:,:,1) = im2uint8(I2Y);
    imgycbcr(:,:,2) = im2uint8(I2Cb);
    imgycbcr(:,:,3) = im2uint8(I2Cr);
    cframe = ycbcr2rgb(imgycbcr);
%     imtool(cframe);
end 