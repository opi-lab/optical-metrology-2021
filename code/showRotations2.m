% This program draws rotating coordinate frames, using the axis-angle
% specification of rotation.
clear all    % It is a good idea to clear the workspace of old variables 
close all    % This closes any open figures


% Repeat forever (hit control-C to end program).
while true
    %%%%%%%%%%%%%%%%%
    % Draw a dot at the origin (this also clears the figure).
    plot3(0,0,0,'.');
    
    % Draw a flat "floor" to help us see the overall scene.
    vertices = [
        -2, -2, -1;     % X,Y,Z
        +2, -2, -1;
        +2, +2, -1;
        -2, +2, -1];
    faces = [1,2,3,4];    % Vertices on the face
    patch('Vertices', vertices, ...
        'Faces', faces, ...
        'FaceColor', 'y', ...
        'FaceAlpha', 0.5, ...
        'EdgeColor', 'none' ...
        );
    
    % Draw the global coordinate frame axes.
    line([0 1], [0 0], [0 0], 'Color', 'r', 'LineWidth', 1.5);    % x axis
    line([0 0], [0 1], [0 0], 'Color', 'g', 'LineWidth', 1.5);    % y axis
    line([0 0], [0 0], [0 1], 'Color', 'b', 'LineWidth', 1.5);    % z axis
    text(0,0,0,'W');
    
    
    %%%%%%%%%%%%%%%%%
    % Create the pose of moving frame 1.
    disp('Define the pose of frame 1.');
    k = input('Enter the axis of rotation [kx,ky,kz]: ');
    k = k/norm(k);              % Make into a unit vector
    kx = k(1);
    ky = k(2);
    kz = k(3);
    theta = input('Enter the angle rotation theta in degrees: ');
    c = cosd(theta);
    s = sind(theta);
    v = 1 - c;
    R_m_w = [
        kx*kx*v + c     kx*ky*v - kz*s      kx*kz*v + ky*s;
        kx*ky*v + kz*s  ky*ky*v + c         ky*kz*v - kx*s;
        kx*kz*v - ky*s  ky*kz*v + kx*s      kz*kz*v + c ];
        
    trans = input('Enter [X,Y,Z] translation: ');
    t = [trans(1); trans(2); trans(3)];   % translation
    H_m_w = [ R_m_w  t;  0 0 0 1];      % 4x4 homogeneous transformation
    
    % Draw the axis of rotation.
    line([0 kx], [0 ky], [0 kz], 'Color', 'k', 'LineWidth', 1.5);
    
    % Transform endpoints of coordinate frame axes to the world frame.
    P0 = H_m_w * [0;0;0;1];   % origin of frame
    ux = H_m_w * [1;0;0;1];     % x axis
    uy = H_m_w * [0;1;0;1];     % y axis
    uz = H_m_w * [0;0;1;1];     % z axis
    
    % Draw the moving coordinate frame axes.
    line([P0(1) ux(1)], [P0(2) ux(2)], [P0(3) ux(3)], 'Color', 'r', 'LineStyle', '--');    % x axis
    line([P0(1) uy(1)], [P0(2) uy(2)], [P0(3) uy(3)], 'Color', 'g', 'LineStyle', '--');    % y axis
    line([P0(1) uz(1)], [P0(2) uz(2)], [P0(3) uz(3)], 'Color', 'b', 'LineStyle', '--');    % z axis
    text(P0(1), P0(2), P0(3),'1');

    axis equal
    axis vis3d
    
    pause           % Pause until user hits a key
end





