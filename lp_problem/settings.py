from decouple import config
from pydantic import HttpUrl, BaseModel, IPvAnyAddress

HOST = config("HOST", "127.0.0.1")
PORT = config("PORT", default=8000, cast=int)
BASE_URL = config("BASE_URL", f"http://{HOST}:{PORT}", cast=str)


class Settings(BaseModel):
    host: IPvAnyAddress = HOST
    port: int = PORT
    base_url: HttpUrl = BASE_URL