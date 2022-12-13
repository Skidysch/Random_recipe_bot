import os
from dataclasses import dataclass


@dataclass
class Bots:
    bot_token: str
    admin_id: int


@dataclass
class DB:
    db_user: str
    db_pass: str
    db_name: str
    db_host: str
    db_port: int


@dataclass
class Settings:
    bots: Bots
    db: DB


def get_settings():
    return Settings(
        bots=Bots(
            bot_token=os.getenv('TOKEN'),
            admin_id=int(os.getenv('ADMIN_ID')),
        ),
        db=DB(
            db_user=os.getenv('DB_USER'),
            db_pass=os.getenv('DB_PASS'),
            db_name=os.getenv('DB_NAME'),
            db_host=os.getenv('DB_HOST'),
            db_port=int(os.getenv('DB_PORT'))
        )
    )


settings = get_settings()
