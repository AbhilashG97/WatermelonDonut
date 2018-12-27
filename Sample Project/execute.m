%{
    Read data, exctract statistical features and 
    plot an output graph

    input file is found in /data folder
%}

s = load('data/seeg.mat');
x = s.xx;

original_signal = x(30, :); % original signal
filtered_signal = highpass(original_signal, (50/(256/2))); % filtered-signal

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

result = [0, 1:263228]; % result matrix

%{
    Mean
%}

for i = 1:263228 
    temp = x(i,:);
    result(1, i) = mean(temp); 
end

mean_filtered = mean(filtered_signal);
mean_original = mean(original_signal);

fprintf('The mean of the filtered signal: %f \n', mean_filtered);
fprintf('The mean of the original signal: %f \n\n', mean_original);

%{
    Standard Deviation
%}
sd_filtered = std(filtered_signal);
sd_original = std(original_signal);

fprintf('The standard deviation of the filtered signal: %f \n', sd_filtered);
fprintf('The standard deviation of the original signal: %f \n\n', sd_original);

%{
    Skewness 
%}
skewness_filtered = skewness(filtered_signal);
skewness_original = skewness(original_signal);

fprintf('The skewness of the filtered signal: %f \n', skewness_filtered);
fprintf('The skewness of the original signal: %f \n\n', skewness_original);

%{
    Kurtosis
%}
kurtosis_filtered = kurtosis(filtered_signal); 
kurtosis_original = kurtosis(original_signal);

fprintf('The kurtosis of the filtered signal %f: \n', kurtosis_filtered);
fprintf('The kurtosis of the original signal %f: \n\n', kurtosis_original);
