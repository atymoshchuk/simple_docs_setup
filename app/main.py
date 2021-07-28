"""Simple application to see how documentation works"""
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    """My simple docstring for Hello World basic function"""
    return {"message": "Hello World"}
