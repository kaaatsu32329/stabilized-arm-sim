% file name: setupMobile.m
% author: UCHIYAMA Katsu
% date: 2022-07-16

function [m, status] = setupMobile()

    if exist('m', 'var')
        clear m
    end

    try
        m = mobiledev;
        m.SampleRate = 'high';
        m.AccelerationSensorEnabled = 1;
        m.AngularVelocitySensorEnabled = 1;
        m.OrientationSensorEnabled = 0;
        m.MagneticSensorEnabled = 0;
        m.PositionSensorEnabled = 0;
        disp('Start your MATLAB Mobile')

        while isempty(m.Orientaion); end

    catch
        m = false;
    end

end
