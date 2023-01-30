# This example requires the 'message_content' intent.

import discord
import os

TOKEN = ""

with open("/home/Apps/Dispy/token.txt", "r") as f:
    TOKEN = f.readline()
    pass

class MyClient(discord.Client):
    async def on_ready(self):
        print(f'Logged on as {self.user}!')

    async def on_message(self, message):
        print(f'Message from {message.author}: {message.content}')

intents = discord.Intents.default()
intents.message_content = True
intents.typing = False

client = MyClient(intents=intents)
client.run(TOKEN)