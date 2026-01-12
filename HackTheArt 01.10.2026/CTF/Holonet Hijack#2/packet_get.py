from scapy.all import IP, ICMP, UDP, send
import time
import random
import string
import requests

# ========== CONFIGURATION ==========
TARGET_IP = "127.0.0.1"  
FLAG = "HCS{u_succ3sfull7_1nt3rc3p73d_th3_h0l0n3t_n3tw0rk}"
WEBHOOK_URL = "https://large-carpenter-42.webhook.cool"
SEND_TO_WEBHOOK = False  
NOISE_PACKET_COUNT = 50
# ===================================

def text_to_binary(text):
    return ''.join(f"{ord(c):08b}" for c in text)

def send_timing_channel_packets(flag_bin):
    print(">> Sending ICMP timing-based packets...")
    for bit in flag_bin:
        pkt = IP(dst=TARGET_IP)/ICMP()
        send(pkt, verbose=False)
        if SEND_TO_WEBHOOK and WEBHOOK_URL:
            requests.post(WEBHOOK_URL, json={"bit": bit, "method": "u might want to check the timing"})
        time.sleep(0.1 if bit == '0' else 0.5)

def send_ipv4_id_flag_packets(flag_bin):
    print(">> Sending UDP IPv4-ID encoded flag packets...")
    chunks = [flag_bin[i:i+16].ljust(16, '0') for i in range(0, len(flag_bin), 16)]
    for chunk in chunks:
        ident = int(chunk, 2)
        pkt = IP(dst=TARGET_IP, id=ident)/UDP(dport=random.randint(1024, 65535), sport=random.randint(1024, 65535))
        send(pkt, verbose=False)
        if SEND_TO_WEBHOOK and WEBHOOK_URL:
            requests.post(WEBHOOK_URL, json={"id": ident, "method": "ipv4_id"})

def send_noise_packets(count):
    print(f">> Sending {count} noise packets...")
    for _ in range(count):
        random_payload = ''.join(random.choices(string.ascii_letters + string.digits, k=random.randint(10, 30)))
        pkt = IP(dst=TARGET_IP, id=random.randint(0, 65535))/UDP(dport=random.randint(1000, 65535))/random_payload
        send(pkt, verbose=False)
        if SEND_TO_WEBHOOK and WEBHOOK_URL:
            requests.post(WEBHOOK_URL, json={"noise": random_payload})

def main():
    flag_bin = text_to_binary(FLAG)

    send_noise_packets(NOISE_PACKET_COUNT)
    send_timing_channel_packets(flag_bin)
    send_noise_packets(NOISE_PACKET_COUNT)
    send_ipv4_id_flag_packets(flag_bin)
    send_noise_packets(NOISE_PACKET_COUNT)

    print(">> All packets sent.")

if __name__ == "__main__":
    main()

