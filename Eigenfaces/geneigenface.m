function out=geneigenface(setpath)
    imgpaths = dir(setpath);
    n = length(imgpaths);

    % read images into array
    % first 2 dirs are .(here) and ..(back)
    img = zeros(n - 2, 64, 64, 'int8');
    for i = 3:n
        path = fullfile(setpath, imgpaths(i).name);
        f = imread(path);
        img(i - 2, :, :) = f;
    end
    imsave(reshape(uint8(mean(img)), [64, 64]))
    % convert array to doubles for upcoming
    img = double(img);
    % make mean subtracted images

    
    img = img - mean(img);
    

    out=img;
end