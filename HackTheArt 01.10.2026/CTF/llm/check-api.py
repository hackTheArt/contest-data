import google.generativeai as genai
import os
from dotenv import load_dotenv

api_key="AIzaSyDpQzPttCmBRLgN9xHOJSqot40uNgfjypY"

genai.configure(api_key="AIzaSyDpQzPttCmBRLgN9xHOJSqot40uNgfjypY")

print("Listing available models...")
for m in genai.list_models():
    if 'generateContent' in m.supported_generation_methods:
        print(m.name)
