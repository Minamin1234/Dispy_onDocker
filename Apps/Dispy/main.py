# This example requires the 'message_content' intent.

import discord
import sys

TOKEN = sys.argv[1]
VOLUME = sys.argv[2]

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