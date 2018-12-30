%{
    Read data, extract statistical features and 
    plot an output graph

    input file is found in /data folder

    !! Sampling rate = 256 Hz !!
    !! Normalized Frequency = cut-off frequency/(sampling rate/2) !!
%}

s = load('data/seeg.mat');
x = s.xx;

original_signal = x(30, 1:10800); % A single channel of an original signal
filtered_signal = highpass(original_signal, (50/(256/2))); % filtered channel

subplot(1,2,1);
plot(original_signal);
grid on;
title('Stereo EEG without Notch filter');
xlabel('Time(seconds)'), ylabel('Amplitude');

subplot(1,2,2);
plot(filtered_signal);
grid on;
title('Stereo EEG with Notch filter applied');
xlabel('Time(seconds)'), ylabel('Amplitude');

%{
    Filtering all the channels
%}
data(1, 1:263228) = 0;
filtered_signals(1:126, 1:263228) = 0;

for j = 1:126
    data = x(j, :);
    filtered_signals(j, :) = highpass(data, (50/(256/2))); 
end
fprintf('Filtering all channels: Done! \n\n');

%{
    Mean
%}
mean_result(1, 1:263228) = 0; % mean result vector
mean_temp(1, 1:263228) = 0;
for i = 1:263228 
    mean_temp = filtered_signals(:,i);
    mean_result(:, i) = mean(mean_temp); 
end

fprintf('Mean of the filtered signal: Done!\n\n');
figure;
plot(mean_result);
title('Mean of the filtered signal');
xlabel('Time slot'), ylabel('Mean value');
grid on;

%{
    Standard Deviation
%}
sd_temp(1, 1:263228) = 0;
sd_result(1, 1:263228) = 0; % standard deviation result vector
for i = 1:263228 
    sd_temp = filtered_signals(:,i);
    sd_result(1, i) = std(sd_temp); 
end
figure;

plot(sd_result);

%bar(mean_result);
%hold on;
%bar(sd_result);
title('Standard Deviation of the filtered signal');
fprintf('Standard deviation of the filtered signal: Done!\n\n');

%{
    Skewness 
%}
skew_temp(1, 1:263228) = 0;
skew_result(1, 1:263228) = 0; % skewness result vector
for i = 1:263228 
    skew_temp = filtered_signals(:,i);
    skew_result(1, i) = skewness(skew_temp); 
end
figure;
plot(skew_result);
title('Skewness of the filtered signal');
fprintf('Skewness of the filtered signal: Done!\n\n');


%{
    Kurtosis
%}
kurt_temp(1, 1:263228) = 0;
kurt_result(1, 1:263228) = 0; % kurtosis result vector
for i = 1:263228 
    kurt_temp = filtered_signals(:,i);
    kurt_result(1, i) = std(kurt_temp); 
end
figure;
plot(kurt_result);
title('Kurtosis of the filtered signal');
fprintf('Kurtosis of the filtered signal: Done!\n\n');
