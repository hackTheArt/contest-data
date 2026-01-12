import numpy as np
from scipy.io import wavfile
import scipy.signal as signal


def solve_doppler(iq_filename, output_wav):
    print(f"Loading {iq_filename}...")
    iq_data = np.fromfile(iq_filename, dtype=np.complex64)

    SAMPLE_RATE = 1_000_000 
    CHUNK_SIZE = 4096  
    print("Tracking signal drift and demodulating...")

    demodulated_audio = []

    for i in range(0, len(iq_data), CHUNK_SIZE):
        chunk = iq_data[i : i + CHUNK_SIZE]
        if len(chunk) < 2:
            break

        fft_result = np.fft.fft(chunk)
        fft_freqs = np.fft.fftfreq(len(chunk), 1 / SAMPLE_RATE)

        peak_idx = np.argmax(np.abs(fft_result))
        peak_freq = fft_freqs[peak_idx]


        t = np.arange(len(chunk)) / SAMPLE_RATE
        shifter = np.exp(-1j * 2 * np.pi * peak_freq * t)
        centered_chunk = chunk * shifter


        phase_diff = np.angle(centered_chunk[1:] * np.conj(centered_chunk[:-1]))

        demodulated_audio.extend(phase_diff)

    demodulated_audio = np.array(demodulated_audio)


    decimation_factor = int(SAMPLE_RATE / 48000)
    audio_final = signal.decimate(demodulated_audio, decimation_factor)

    audio_final = audio_final / np.max(np.abs(audio_final))

    print(f"Saving decoded audio to {output_wav}...")
    wavfile.write(output_wav, 48000, (audio_final * 32767).astype(np.int16))


# RUN SOLVER
solve_doppler("satellite_capture.iq", "solution_audio.wav")
