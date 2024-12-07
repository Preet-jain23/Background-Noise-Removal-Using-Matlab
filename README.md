Loading the Audio File:The code starts by loading an audio file (audio.mp3) using the audioread function. This gives us two outputs:
x: The original clean audio signal.
Fs: The sampling frequency of the audio signal.

Adding Noise to the Audio Signal:The next step adds noise to the original audio signal (x) using the awgn function.
The function introduces white Gaussian noise with a signal-to-noise ratio (SNR) of 15 dB.
The resulting noisy signal is stored in the variable xn.

Denoising the Noisy Signal:The code then applies the wdenoise function to denoise the noisy signal (xn).
This function uses the Bayesian denoising method with a soft thresholding rule to reduce the noise.
The denoising is performed using the Symlets 8 (sym8) wavelet, and the number of decomposition levels is set to 8.
The cleaned audio signal is stored in the variable xden.

Plotting the Signals:
The code then plots three signals in separate subplots:
Original Signal (x): The clean, original audio signal.
Noisy Signal (xn): The audio signal with noise added (displayed in red).
Denoised Signal (xden): The result after denoising (displayed in green).

This visual comparison helps to clearly observe the effect of noise and the success of the denoising process.
