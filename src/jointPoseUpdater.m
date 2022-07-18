% file name: jointPoseUpdater.m
% author: UCHIYAMA Katsu
% date: 2022-07-16

function config = jointPoseUpdater(config, delta_q)

    config(1).JointPosition = config(1).JointPosition + delta_q(1);
    config(2).JointPosition = config(2).JointPosition + delta_q(2);
    config(3).JointPosition = config(3).JointPosition + delta_q(3);
    config(4).JointPosition = config(4).JointPosition + delta_q(4);
    config(5).JointPosition = config(5).JointPosition + delta_q(5);
    config(6).JointPosition = config(6).JointPosition + delta_q(6);

end
