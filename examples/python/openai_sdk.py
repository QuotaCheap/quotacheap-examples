import os
from openai import OpenAI

api_key = os.environ.get("QUOTACHEAP_API_KEY")
base_url = os.environ.get("QUOTACHEAP_BASE_URL", "https://api.quota.cheap/v1")
model = os.environ.get("QUOTACHEAP_MODEL", "gpt-5.4-mini")

if not api_key:
    raise SystemExit("Set QUOTACHEAP_API_KEY first.")

client = OpenAI(api_key=api_key, base_url=base_url)

response = client.chat.completions.create(
    model=model,
    messages=[{"role": "user", "content": "Say hello from QuotaCheap."}],
)

print(response.choices[0].message.content)
