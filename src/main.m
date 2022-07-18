% file name: main.m
% author: UCHIYAMA Katsu
% date: 2022-07-16

% m = setupMobile();

robot_arm = importrobot('../urdf/ostrich_urdf.urdf');
config = homeConfiguration(robot_arm);

robotDrawer(robot_arm, config);

pause(0.1);

% base = robot_arm.Base;
base = rigidBody("base_link");
% arm1 = rigidBody("arm1_1");
% arm2 = rigidBody("arm2_1");
% arm3 = rigidBody("arm3_1");
% arm4 = rigidBody("arm4_1");
% arm5 = rigidBody("arm5_1");
% arm6 = rigidBody("arm6_1");

base.position

% while 1
for i = 1:100
    delta_q = rand([1 6]) * 2 * pi;
    config = jointPoseUpdater(config, delta_q);
    robotDrawer(robot_arm, config);
    % [ac, gy] = sensorReader(m);
    % delta = angleDiffCalculator(ac, gy)
end

%{

test_mat1 = genHTMatrix(1, 2, 3, 'x', pi);
test_mat2 = genHTMatrix(4, 5, 6, 'y', pi);
test_mat3 = genHTMatrix(7, 8, 9, 'z', pi);

[x,y,z,theta,phi,psi] = ht2pose(test_mat1 * test_mat2 * test_mat3)

%}
