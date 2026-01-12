from scapy.all import *
import struct
import random

# =================CONFIGURATION=================

flag_data = "HCS{Th3_F0rc3_1s_Str0ng_W1th_Th1s_H3ad3r}"
output_pcap = "operation_red_five.pcap"
target_ip = "10.10.10.5" 


REBEL_WINDOW_SIZE = 2187  
BASE_FREQUENCY_PORT = 1977 
# ===============================================


while len(flag_data) % 4 != 0:
    flag_data += " "


chunks = [flag_data[i:i+4] for i in range(0, len(flag_data), 4)]
packets = []

print(f"[*] R2-D2 is encoding {len(flag_data)} bytes into {len(chunks)} transmissions...")


for i, chunk in enumerate(chunks):
    seq_val = struct.unpack(">I", chunk.encode())[0]
    
    
    frequency_port = BASE_FREQUENCY_PORT + i
    
    pkt = IP(dst=target_ip) / TCP(dport=frequency_port, flags="S", seq=seq_val, window=REBEL_WINDOW_SIZE)
    packets.append(pkt)

print(f"[*] R2 signals ready. Generating Imperial jamming noise...")


imperial_windows = [8192, 65535, 14600, 29200]

for _ in range(300):
    noise_seq = random.getrandbits(32)
    noise_port = random.randint(1024, 65535)
    noise_window = random.choice(imperial_windows)
    
    
    if noise_window == REBEL_WINDOW_SIZE: noise_window = 8192
    if noise_port >= BASE_FREQUENCY_PORT and noise_port < BASE_FREQUENCY_PORT + len(chunks): noise_port = 80

    pkt = IP(dst=target_ip) / TCP(dport=noise_port, flags="S", seq=noise_seq, window=noise_window)
    packets.append(pkt)

print("[*] Mixing signals in the ionosphere...")
random.shuffle(packets)

wrpcap(output_pcap, packets)
print(f"[*] Transmission intercepted: {output_pcap}")
print("[!] Challenge Ready. May the Force be with you.")
