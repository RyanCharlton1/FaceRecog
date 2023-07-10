function out=eigenface(setpath)
    imgs = dir(setpath);
    for i = 1:length(imgs)
        disp(imgs(i).name)
    end
    out=imgs;
end