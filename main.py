import uuid
from fastapi import FastAPI, Body, status
from fastapi.responses import JSONResponse, FileResponse

app = FastAPI()
 
@app.get("/")
async def main():
    return "hello, skuf)"
 
import uvicorn
