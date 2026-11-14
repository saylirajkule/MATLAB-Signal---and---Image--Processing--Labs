clear; clc; close all;

% Parameters
N_bits = 100000; % Transmit 100,000 bits for accurate statistical counting
bits = randi([0 1], 1, N_bits);

% Map bits to QPSK symbols
real_part = (bits(1:2:end) * 2 - 1) / sqrt(2);
imag_part = (bits(2:2:end) * 2 - 1) / sqrt(2);
symbols = real_part + 1i * imag_part;

% Define range of SNR values in dB
snr_db_range = 0:2:10; 
ber_results = zeros(1, length(snr_db_range));

for k = 1:length(snr_db_range)
    snr_db = snr_db_range(k);
    
    % Convert SNR from dB to linear noise standard deviation
    snr_linear = 10^(snr_db / 10);
    noise_sigma = 1 / sqrt(2 * snr_linear);
    
    % Add 2D Gaussian noise
    noise = noise_sigma * (randn(1, N_bits/2) + 1i * randn(1, N_bits/2));
 received_symbols = symbols + noise;
    
    % Receiver decision boundaries
    rec_bit1 = real(received_symbols) >= 0;
    rec_bit2 = imag(received_symbols) >= 0;
    
    received_bits = zeros(1, N_bits);
    received_bits(1:2:end) = rec_bit1;
    received_bits(2:2:end) = rec_bit2;
    
    % Compute Bit Error Rate (BER)
    bit_errors = sum(bits ~= received_bits);
    ber_results(k) = bit_errors / N_bits;
end

% Plot BER vs. SNR on a semilogarithmic scale
figure;
semilogy(snr_db_range, ber_results, 'r-o', 'LineWidth', 2, 'MarkerSize', 8);
grid on;
title('QPSK Bit Error Rate (BER) Performance');
xlabel('SNR (dB)');
ylabel('Bit Error Rate (BER)');
axis([0 10 1e-4 1]);
