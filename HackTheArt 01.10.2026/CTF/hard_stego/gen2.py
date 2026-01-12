import cv2
import numpy as np
import random
import math

# --- CONFIGURATION ---
INPUT_IMAGE = "23_new_low_res_zlota_rama.jpg"
OUTPUT_IMAGE = "challenge_steg.png"
FLAG = "HCS{b3ksinsk1_sk3tches_hid3s_1he_tru1h}"

# "Brush" settings
NUM_STROKES_PER_CELL = 8  
STROKE_OPACITY = 1.0  
STROKE_LENGTH_VAR = 0.8  
RANDOM_JITTER = 0  


def string_to_binary(s):
    return "".join(format(ord(c), "08b") for c in s)


def get_luminance(img_chunk):
    """Calculates average luminance of a BGR image chunk."""
    gray = cv2.cvtColor(img_chunk, cv2.COLOR_BGR2GRAY)
    return np.mean(gray)


def draw_sketch_lines(img, x, y, w, h, angle_deg, color):
    """Draws randomized sketchy lines in a specific direction with alpha blending."""
    overlay = img.copy()

    cx, cy = x + w // 2, y + h // 2
    length = int(min(w, h) * STROKE_LENGTH_VAR)

    angle_rad = math.radians(angle_deg)

    dx = int((length / 2) * math.cos(angle_rad))
    dy = int(
        (length / 2) * math.sin(angle_rad)
    )  

 
    for _ in range(NUM_STROKES_PER_CELL):
        jx = random.randint(-RANDOM_JITTER, RANDOM_JITTER)
        jy = random.randint(-RANDOM_JITTER, RANDOM_JITTER)

       

        p1 = (cx - dx + jx, cy + dy + jy)  
        p2 = (cx + dx + jx, cy - dy + jy)  

        thickness = random.randint(1, 2)

        cv2.line(overlay, p1, p2, color, thickness, lineType=cv2.LINE_AA)

    cv2.addWeighted(overlay, STROKE_OPACITY, img, 1 - STROKE_OPACITY, 0, img)


def main():
    img = cv2.imread(INPUT_IMAGE)
    if img is None:
        print(f"Error: Could not load {INPUT_IMAGE}")
        return

    binary_flag = string_to_binary(FLAG)
    total_bits = len(binary_flag)

    
    aspect = img.shape[1] / img.shape[0]
    rows = int(math.sqrt(total_bits / aspect))
    cols = math.ceil(total_bits / rows)


    cell_h = img.shape[0] // rows
    cell_w = img.shape[1] // cols

    print(f"Encoding {total_bits} bits.")
    print(f"Grid: {cols} columns x {rows} rows (Total capacity: {cols * rows})")
    print(f"Cell size: {cell_w}x{cell_h}")

    bit_idx = 0

    for r in range(rows):
        for c in range(cols):
            if bit_idx >= total_bits:
                break

            bit = binary_flag[bit_idx]

            x = c * cell_w
            y = r * cell_h

            roi = img[y : y + cell_h, x : x + cell_w]
            avg_lum = get_luminance(roi)

            if avg_lum < 100:
                stroke_color = (220, 220, 220) 
            else:
                stroke_color = (40, 40, 40) 


            if bit == "1":
                angle = 45
            else:
                angle = 135

            draw_sketch_lines(img, x, y, cell_w, cell_h, angle, stroke_color)

            bit_idx += 1

    cv2.imwrite(OUTPUT_IMAGE, img)
    print(f"Challenge saved to {OUTPUT_IMAGE}")


if __name__ == "__main__":
    main()
