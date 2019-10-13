function out = small_elements(X)

% The function takes as input an array named X that is a matrix or a vector.
% The function identifies those elements of X that are smaller than the
% product of their two indexes. For example, if the element X(2,3) is 5,
% then that element would be identified because 5 is smaller than 2 * 3.
% The output of the function gives the indexes of such elements found in
% column-major order. It is a matrix with two columns. The first column
% contains the row indexes, while the second column contains the
% corresponding column indexes. For example, the statement
% indexes=small_elements([1 1; 0 4; 6 5], will make indexes equal to
% [2 1; 1 2; 3 2]. If no such element exists, the function returns an empty
% array.

s=size(X);
outtemp = [];
for c=1:s(2)
    for r=1:s(1)
        if X(r,c)<(r*c)
            temp_out=[r,c];
            outtemp=[outtemp;temp_out];
        end
    end
end
out = outtemp;
end