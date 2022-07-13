robot_arm = importrobot('urdf/ostrich_urdf.urdf');
show(robot_arm);

base = robot_arm.Base;
arm1 = rigidBody("arm1_1");
arm2 = rigidBody("arm2_1");
arm3 = rigidBody("arm3_1");
arm4 = rigidBody("arm4_1");
arm5 = rigidBody("arm5_1");
arm6 = rigidBody("arm6_1");
