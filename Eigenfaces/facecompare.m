function out=facecompare(efaces, face)
    face = reshape(face, 64 * 64);
    face = face - mean(face);
    
end
