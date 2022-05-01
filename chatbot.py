from chatterbot.trainers import ListTrainer
from chatterbot import ChatBot
import spacy
import spacy.cli
spacy.cli.download("en_core_web_md")
spacy.load("en")
bot = ChatBot('Shotty')

conversation = [
    "Hello",
    "Hi there!",
    "How are you doing?",
    "I'm doing great.",
    "That is good to hear",
    "Thank you.",
    "You're welcome."
]

trainer = ListTrainer(bot)

trainer.train(conversation)

response = bot.get_response("Good morning!")
print(response)
