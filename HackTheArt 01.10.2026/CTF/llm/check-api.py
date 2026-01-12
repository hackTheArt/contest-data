import google.generativeai as genai
import os
from dotenv import load_dotenv

api_key=""

genai.configure(api_key="")

print("Listing available models...")
for m in genai.list_models():
    if 'generateContent' in m.supported_generation_methods:
        print(m.name)
