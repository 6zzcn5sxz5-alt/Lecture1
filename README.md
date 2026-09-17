# Lecture01 - Signal Visualization

This assignment demonstrates how to create and visualize simple sine-wave signals in MATLAB and how frequency, amplitude, and noise affect a signal.

## Task 1: Create a Sine Wave

A sine wave was generated with:

- Amplitude: 1
- Frequency: 5 Hz
- Duration: 1 second

The signal was plotted with a title, axis labels, and a grid.

## Task 2: Compare Different Frequencies

Three sine waves were generated at 2 Hz, 5 Hz, and 10 Hz using the same amplitude.

1. **Which signal changes fastest?**  
   The 10 Hz signal changes fastest because it completes the most cycles in one second.

2. **Which signal has the lowest frequency?**  
   The 2 Hz signal has the lowest frequency.

3. **How can you see the difference in the plots?**  
   In the same one-second interval, the 2 Hz signal completes about 2 cycles, the 5 Hz signal completes about 5 cycles, and the 10 Hz signal completes about 10 cycles. A higher frequency therefore appears more compressed horizontally and oscillates more often.

## Task 3: Compare Different Amplitudes

Three 5 Hz sine waves were generated with amplitudes 0.5, 1, and 2.

1. **Which signal has the largest amplitude?**  
   The signal with amplitude 2 has the largest amplitude.

2. **Does changing amplitude change frequency?**  
   No. Changing amplitude changes the vertical size of the wave but does not change how many cycles occur per second.

3. **Give one real-world example where amplitude is important.**  
   In an audio signal, amplitude is related to signal strength and is associated with perceived loudness when other conditions are unchanged.

## Task 4: Add Noise

Random noise was added to a clean 5 Hz sine wave.

1. **What changed after adding noise?**  
   The waveform became irregular and no longer followed a perfectly smooth sine-wave shape because random variations were added to the signal.

2. **Can you still recognize the original signal?**  
   Yes. With the noise level used here, the general periodic shape of the original sine wave is still visible.

3. **Give one real-world source of signal noise.**  
   One example is electrical interference in a microphone or electronic sensor measurement.

## Task 5: Saved Figures

The MATLAB script saves these figures:

- `frequency_comparison.png`
- `amplitude_comparison.png`
- `clean_vs_noisy_signal.png`

## Task 6: Use AI Responsibly

**AI Tool Used:**  
ChatGPT

**Prompt:**  
Help me create a MATLAB script for comparing sine-wave frequencies and amplitudes and for adding random noise to a sine wave. The plots should use subplots and be saved as PNG files.

**What AI Suggested:**  
ChatGPT suggested using the sine-wave equation `A*sin(2*pi*f*t)`, MATLAB `subplot` for comparisons, `randn` for random noise, and `saveas` to save the required figures.

**Did the code work immediately?**  
This should be answered after running the script in MATLAB. Replace this sentence with your actual result, for example: "Yes, the script ran without errors."

**What did you modify?**  
This should describe any changes you actually make after testing. If you make no changes, you can write: "I did not need to modify the code after testing it."

**How did you verify the result?**  
I ran the MATLAB script and checked that the plots showed the expected number of cycles, the expected amplitudes, and visible random variation in the noisy signal. I also checked that the three required PNG files were created.


