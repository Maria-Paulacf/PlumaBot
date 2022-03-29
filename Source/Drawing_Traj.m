clear all

drawPoint = [0.059 0.059 6;
             0.068 0.075 2;
             0.068 0.049 1;
             0.047 0.000 4;
             0.025 0.049 1;
             0.025 0.074 4;
             0.034 0.059 10;
             0.059 0.059 8;
             0.081 0.036 9;
             0.052 0.012 10;
             0.041 0.012 8;
             0.013 0.036 2;
             0.034 0.059 4];

[n,j]=size(drawPoint);

for i = 1 : n - 1

    Traject = drawPoint(i:i+1,:);
    Traj = Traj_Planner(1,Traject,1,0.2,0.05);
    %    Traj = [ Traj;Traj_Planner(1,Traject,0.5,0.2,0.05)];
    plot3( Traj(:,1), Traj(:,2), Traj(:,2).*0, '-o' );
    hold on
    grid on

end 


