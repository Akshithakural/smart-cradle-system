% Smart Cradle System using IoT Simulation

% Initialize variables
bedHumidity = randi([30, 50]); % Random initial bed humidity (30-50%)
wetness = randi([0, 100]); % Random initial wetness (0-100%)

% Main loop (simulating continuous monitoring)
while true
    % Update bed humidity and wetness (simulated)
    bedHumidity = bedHumidity + randn * 0.1; % Simulated humidity change
    wetness = wetness + randn * 1; % Simulated wetness change
    
    % Check if wetness threshold is exceeded
    if wetness > 80
        % Send notification
        disp('WARNING: Baby is wet! Change diaper.');
    end
    
    % Plot pie chart of bed humidity and wetness
    figure(1);
    labels = {'Bed Humidity', 'Wetness'};
    data = [bedHumidity, wetness];
    pie(data, labels);
    title('Bed Humidity and Wetness');
    
    % Update plot
    drawnow;
    
    % Pause for simulated time interval (e.g., 1 minute)
    pause(60); % Pause for 1 minute
end
