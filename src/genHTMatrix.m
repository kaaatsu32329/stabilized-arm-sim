% file name: genHTMatrix.m
% author: UCHIYAMA Katsu
% date: 2022-07-16

function ht_matrix = genHTMatrix(x, y, z, axis, angle)

    ht_matrix = zeros(4);

    ht_matrix(:, 4) = [x; y; z; 1];

    if axis == 'x'
        ht_matrix(1:3, 1:3) = [
                            1 0 0;
                            0 cos(angle) -sin(angle);
                            0 sin(angle) cos(angle);
                            ];
    elseif axis == 'y'
        ht_matrix(1:3, 1:3) = [
                            sin(angle) 0 cos(angle);
                            0 1 0;
                            cos(angle) 0 -sin(angle);
                            ];
    elseif axis == 'z'
        ht_matrix(1:3, 1:3) = [
                            cos(angle) -sin(angle) 0;
                            sin(angle) cos(angle) 0;
                            0 0 1;
                            ];
    else
    end

end
