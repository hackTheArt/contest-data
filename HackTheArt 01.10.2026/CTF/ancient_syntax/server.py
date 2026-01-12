import socket
import tempfile
import shutil
import os
import subprocess
import threading
import sys

HOST = '0.0.0.0'
PORT = 1337
DELIMITER = b"END_OF_TRANSMISSION"

def handle_client(conn, addr):
    print(f"Connection from {addr}")
    tmp_dir = tempfile.mkdtemp()
    try:

        cwd = os.getcwd()
        for f in ['main.c', 'checker.py', 'flag.txt']:
            src = os.path.join(cwd, f)
            if os.path.exists(src):
                shutil.copy(src, tmp_dir)
            else:
                conn.sendall(f"Error: Missing {f} on server.\n".encode())
                return

        conn.sendall(f"Send your C code. End with '{DELIMITER.decode()}' on a new line.\n".encode())
        
        code_buffer = b""
        while True:
            data = conn.recv(4096)
            if not data:
                break
            code_buffer += data
            if DELIMITER in code_buffer:
                break
        
        if DELIMITER in code_buffer:
            code_content = code_buffer.split(DELIMITER)[0]
        else:
            code_content = code_buffer 
        with open(os.path.join(tmp_dir, "solution.c"), "wb") as f:
            f.write(code_content)
            

        proc = subprocess.run(
            [sys.executable, "checker.py"],
            cwd=tmp_dir,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        
        output = proc.stdout + proc.stderr
        conn.sendall(output.encode())
        
    except Exception as e:
        error_msg = f"Server Error: {str(e)}\n"
        conn.sendall(error_msg.encode())
    finally:
        conn.close()
        shutil.rmtree(tmp_dir)
        print(f"Closed connection from {addr}")

def main():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        try:
            s.bind((HOST, PORT))
            s.listen()
            print(f"Server listening on {HOST}:{PORT}")
            while True:
                conn, addr = s.accept()
                t = threading.Thread(target=handle_client, args=(conn, addr))
                t.start()
        except KeyboardInterrupt:
            print("\nServer stopping...")
        except Exception as e:
            print(f"\nServer failed to start: {e}")

if __name__ == "__main__":
    main()
