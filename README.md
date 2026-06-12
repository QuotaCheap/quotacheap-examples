# QuotaCheap Examples

OpenAI-compatible API examples for QuotaCheap.

QuotaCheap lets developers use supported AI models through familiar OpenAI-style endpoints while keeping API keys, quotas, usage logs, token usage, latency, balances, and billing visibility under control.

Base URL:

```bash
https://api.quota.cheap/v1
```

## Examples

- [curl chat completion](examples/curl/chat-completion.sh)
- [Node.js with OpenAI SDK](examples/node/openai-sdk.mjs)
- [Python with OpenAI SDK](examples/python/openai_sdk.py)

## Quickstart

Copy the environment file:

```bash
cp .env.example .env
```

Set your API key:

```env
QUOTACHEAP_API_KEY=your_quota_cheap_api_key
QUOTACHEAP_BASE_URL=https://api.quota.cheap/v1
QUOTACHEAP_MODEL=gpt-5.4-mini
```

Run the curl example:

```bash
bash examples/curl/chat-completion.sh
```

Run the Node.js example:

```bash
cd examples/node
npm install
npm start
```

Run the Python example:

```bash
cd examples/python
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python openai_sdk.py
```

## Notes

- Do not commit API keys or private account data.
- Check the QuotaCheap dashboard after requests for usage logs, token usage, latency, and costs.
- Public model availability and capabilities can change. Check the dashboard or official docs before hardcoding assumptions.
- Supported public models currently focus on text/reasoning workflows. Do not assume image input, embeddings, or TTS unless official docs explicitly list it.

## Useful links

- Website: [quota.cheap](https://www.quota.cheap?utm_source=github&utm_medium=readme&utm_campaign=examples)
- API base URL: `https://api.quota.cheap/v1`
- Telegram: [@quotacheap](https://t.me/quotacheap)
- Support: [support@quota.cheap](mailto:support@quota.cheap)

## Contributing

Good contributions include SDK examples, docs fixes, framework integrations, error handling examples, and agent workflow examples.

Please never include API keys, secrets, private account identifiers, or billing details in public issues or pull requests.
