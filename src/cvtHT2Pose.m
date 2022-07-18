% file name: cvtHT2Pose.m
% author: UCHIYAMA Katsu
% date: 2022-07-16

function [x, y, z, theta, phi, psi] = cvtHT2Pose(ht_matrix)
    % description
    % Roll: theta, Pitch: phi, Yaw: psi
    % ht means homogeneous transform.
    % return pose and Roll Pitch Yaw.

    x = ht_matrix(1, 4);
    y = ht_matrix(2, 4);
    z = ht_matrix(3, 4);

    theta = atan2(-1 * ht_matrix(2, 3), ht_matrix(3, 3));
    phi = atan2(ht_matrix(1, 3), sqrt(ht_matrix(1, 1)^2 + ht_matrix(1, 2)^2));
    psi = atan2(-1 * ht_matrix(1, 2), ht_matrix(1, 1));

end
