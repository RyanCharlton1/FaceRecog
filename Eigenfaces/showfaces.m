function out=showfaces(faces)
    faces = reshape(faces, [16,64,64]);
    for i = 1:16
        subplot(4, 4, i);
        imshow(mat2gray(reshape(faces(i, :, :), [64, 64])));
    end
    
    %out = (faces);
end
