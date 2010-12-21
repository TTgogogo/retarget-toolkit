function count = overlap_number(x, y, patchSize, width, height, overlap)
    maxPatchIdX = floor((width - patchSize )/ overlap) + 1;
    maxPatchIdY = floor((height - patchSize)/ overlap) + 1;
    
    %maxPatchIdX = floor((width - patchSize )/ overlap) + 1;
    %maxPatchIdY = floor((height - patchSize)/ overlap) + 1;
    
%     minPos = x - patchSize + 1;
%     if minPos < 1 && minPos > (1 - patchSize + 1) 
%         minPos = 1;
%     end    
%     
%     minX = floor((minPos + 2)/overlap) + 1;    
%     if minX < 1
%         minX = 1;
%     end    
%     if minX > maxPatchIdX
%         count = 0;
%         return;
%     end
%     maxX = floor((x - 1)/ overlap) + 1;
%     if maxX > maxPatchIdX
%         maxX = maxPatchIdX;
%     end
%     
%     minPos = y - patchSize + 1;
%     if minPos < 1 && minPos > (1 - patchSize + 1) 
%         minPos = 1;
%     end   
%     
%     minY = floor((minPos + 2)/overlap) + 1;    
%     if minY > maxPatchIdY
%         count = 0;
%         return;
%     end
%     if minY < 1
%         minY = 1;
%     end    
%     maxY = floor((y-1) / overlap) + 1;
%     if maxY > maxPatchIdY
%         maxY = maxPatchIdY;
%     end
%     count = (maxX - minX + 1) * (maxY - minY + 1);
corrX = floor((x-1)/overlap) + 1;
corrY = floor((y-1)/overlap) + 1;
pSize = patchSize / overlap;
minX = corrX - pSize + 1;
if(minX < 1)
    minX = 1;
end
minY = corrY - pSize + 1;
if(minY < 1)
    minY = 1;
end
maxX = corrX;
if(maxX > maxPatchIdX)
    maxX = maxPatchIdX;
end
maxY = corrY;
if(maxY > maxPatchIdY)
    maxY = maxPatchIdY;
end

count = (maxX - minX + 1) * (maxY - minY + 1);
end
