from fastapi import FastAPI
from random import choice

app = FastAPI()

quotes = [
    "Life is what happens when you're busy making other plans. – John Lennon",
    "Get busy living or get busy dying. – Stephen King",
    "You only live once, but if you do it right, once is enough. – Mae West",
    "Many of life’s failures are people who did not realize how close they were to success when they gave up. – Thomas A. Edison",
    "If you want to live a happy life, tie it to a goal, not to people or things. – Albert Einstein"
]

@app.get("/quote")
async def read_quote():
    return {"quote": choice(quotes)}
