% file name: sensorReader.m
% author: UCHIYAMA Katsu
% date: 2022-07-16

function [ac, gy] = sensorReader(m)

    if m
        ac = m.Acceleration;
        gy = m.AngularVelocity;

    else
        ac = randn([1, 3]);
        gy = randn([1, 3]);

        % Add effect of the acceleration of gravity
        ac(3) = ac(3) - 9.8;

        % Match the sensor's cycle
        pause(0.01);
    end

end
