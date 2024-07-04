from fastapi import FastAPI
from fastapi.responses import FileResponse

file_path = "video.mp4"
app = FastAPI()


@app.get("/", response_class=FileResponse)
async def main():
    return file_path