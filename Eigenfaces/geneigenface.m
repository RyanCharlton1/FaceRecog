function out=geneigenface(setpath)
    imgpaths = dir(setpath);
    n = length(imgpaths);

    % read images into array
    % first 2 dirs are .(here) and ..(back)
    img = zeros(n - 2, 64 * 64, 'int8');
    for i = 3:n
        path = fullfile(setpath, imgpaths(i).name);
        f = imread(path);
        img(i - 2, :, :) = reshape(f, [1, 64 * 64]);
    end

    % convert array to doubles for upcoming
    img = double(img);

    % make mean subtracted images
    %for i=1:n-2
    %    img(i, :) = img(i, :) - mean;
    %end
    %img = img - mean(img);
    imshow(mat2gray(reshape(mean(img), [64, 64])))
    % calc covariance 
    c = img * img';
    %c = cov(img);
    % calc eigen vectors and values
    [evec, eval] = eig(c);

    faces = zeros(n - 2, 64 * 64, 'double');
    for i = 1:(n-2)
        faces(i, :) = evec(:, end-(i-1))' * img;
    end

    out=faces;
end