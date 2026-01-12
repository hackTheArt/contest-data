from scapy.all import *
import struct

# Configuration
pcap_file = "operation_red_five.pcap"
REBEL_WINDOW_SIGNATURE = 2187
BASE_PORT_INDEX = 1977

print("[-] Attempting to decode Rebel transmission...")
pcap = rdpcap(pcap_file)
plans_fragments = {}

for pkt in pcap:
    if pkt.haslayer(TCP):
        if pkt[TCP].window == REBEL_WINDOW_SIGNATURE and pkt[TCP].flags == "S":
            
            index = pkt[TCP].dport - BASE_PORT_INDEX
            
            seq_data = pkt[TCP].seq
            
            try:

                fragment = struct.pack(">I", seq_data)
                plans_fragments[index] = fragment
            except Exception as e:
                print(f"[!] Error decoding fragment {index}: {e}")

full_transmission = b""
print(f"[-] Found {len(plans_fragments)} pieces of the plans.")
for i in sorted(plans_fragments.keys()):
    full_transmission += plans_fragments[i]

print("\n=== DECODED TRANSMISSION ===")
print(full_transmission.decode(errors='ignore'))
print("============================")
