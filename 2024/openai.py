# Python code to interact with OpenAI's GPT-4 API
import openai

openai.api_key = 'your-openai-api-key'

def chat_with_gpt4(prompt):
    response = openai.Completion.create(
        engine="gpt-4",  # Use GPT-4 model
        prompt=prompt,
        max_tokens=150
    )
    return response.choices[0].text.strip()

# Example interaction
prompt = "Explain the concept of Quantum Computing in simple terms."
response = chat_with_gpt4(prompt)
print(response)
