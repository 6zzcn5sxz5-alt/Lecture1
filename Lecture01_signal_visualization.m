%% Lecture 01 - Signal Visualization
% Simple sine waves, frequency/amplitude comparisons, and noise.
clear; close all; clc;

%% Task 1: Create a Sine Wave
fs = 1000;                 % Sampling frequency (samples/second)
t = 0:1/fs:1;              % Duration = 1 second
A = 1;                     % Amplitude
f = 5;                     % Frequency = 5 Hz
signal = A * sin(2*pi*f*t);

figure;
plot(t, signal, 'LineWidth', 1.2);
title('5 Hz Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Task 2: Compare Different Frequencies
frequencies = [2 5 10];
figure;
for k = 1:length(frequencies)
    y = sin(2*pi*frequencies(k)*t);
    subplot(3,1,k);
    plot(t, y, 'LineWidth', 1.2);
    title(sprintf('%d Hz Sine Wave', frequencies(k)));
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end
sgtitle('Frequency Comparison');
saveas(gcf, 'frequency_comparison.png');

%% Task 3: Compare Different Amplitudes
amplitudes = [0.5 1 2];
common_frequency = 5;
figure;
for k = 1:length(amplitudes)
    y = amplitudes(k) * sin(2*pi*common_frequency*t);
    subplot(3,1,k);
    plot(t, y, 'LineWidth', 1.2);
    title(sprintf('Amplitude = %.1f', amplitudes(k)));
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end
sgtitle('Amplitude Comparison (5 Hz)');
saveas(gcf, 'amplitude_comparison.png');

%% Task 4: Add Noise
clean_signal = sin(2*pi*5*t);
rng(1);                    % Makes the random noise reproducible
noise = 0.3 * randn(size(t));
noisy_signal = clean_signal + noise;

figure;
subplot(2,1,1);
plot(t, clean_signal, 'LineWidth', 1.2);
title('Clean Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t, noisy_signal, 'LineWidth', 1.0);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

sgtitle('Clean vs Noisy Signal');
saveas(gcf, 'clean_vs_noisy_signal.png');
