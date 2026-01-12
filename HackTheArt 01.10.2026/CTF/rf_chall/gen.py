import numpy as np
from scipy.io import wavfile
import matplotlib.pyplot as plt


def generate_challenge(input_wav, output_iq):
    print("--- Loading Audio ---")
    samp_rate_audio, audio_data = wavfile.read(input_wav)

    if audio_data.dtype == np.int16:
        audio_data = audio_data / 32768.0

    rf_samp_rate = 1_000_000  # 1 MSPS
    upsample_factor = int(rf_samp_rate / samp_rate_audio)

    print(f"Upsampling by {upsample_factor}x...")
    audio_upsampled = np.repeat(audio_data, upsample_factor)

    print("Modulating to NFM...")
    f_deviation = 5000.0  # 5kHz deviation (Standard NFM)

    phase = 2 * np.pi * f_deviation * np.cumsum(audio_upsampled) / rf_samp_rate
    iq_signal = np.exp(1j * phase)  # This creates the Complex IQ


    print("Applying simulated Doppler drift...")
    duration_sec = len(iq_signal) / rf_samp_rate
    t = np.linspace(0, duration_sec, len(iq_signal))

    # Create a frequency curve that moves over time
    freq_drift = np.linspace(-10000, 10000, len(iq_signal))  # Hz

   
    drift_phase = 2 * np.pi * np.cumsum(freq_drift) / rf_samp_rate
    iq_signal = iq_signal * np.exp(1j * drift_phase)

    print("Adding atmospheric noise...")
    noise_power = 0.01
    noise = (
        np.random.randn(len(iq_signal)) + 1j * np.random.randn(len(iq_signal))
    ) * noise_power
    iq_signal = iq_signal + noise

    print(f"Saving to {output_iq}...")
    iq_signal.astype(np.complex64).tofile(output_iq)
    print("Done! Challenge created.")

try:
    generate_challenge("chall.wav", "satellite_capture.iq")
except FileNotFoundError:
    print("Error: Please put your SSTV wav file named 'sstv_flag.wav' in this folder.")

