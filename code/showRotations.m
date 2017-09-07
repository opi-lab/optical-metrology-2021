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
    angles = input('Enter [ax,ay,az] in degrees: ');
    ax = angles(1) * pi/180;    % Convert to radians
    ay = angles(2) * pi/180;    % Convert to radians
    az = angles(3) * pi/180;    % Convert to radians
    Rx = [ 1 0 0; 0 cos(ax) -sin(ax); 0 sin(ax) cos(ax)];
    Ry = [ cos(ay) 0 sin(ay); 0 1 0; -sin(ay) 0 cos(ay)];
    Rz = [ cos(az) -sin(az) 0; sin(az) cos(az) 0; 0 0 1];
    trans = input('Enter [X,Y,Z] translation: ');
    t = [trans(1); trans(2); trans(3)];   % translation
    
    R_m_w = Rz * Ry * Rx;               % Rotation matrix
    H_m_w = [ R_m_w  t;  0 0 0 1];      % 4x4 homogeneous transformation
    
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





