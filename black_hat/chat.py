from chatterbot.trainers import ListTrainer
from chatterbot import ChatBot
import spacy
import spacy.cli
spacy.cli.download("en_core_web_md")
spacy.load("en")
bot = ChatBot(
        'Shotty',
        storage_adapter = 'chatterbot.storage.SQLStorageAdapter',
        logic_adapters=[
            'chatterbot.logic.MathematicalEvaluation',
            'chatterbot.logic.TimeLogicAdapter'
        ],
        database_uri='sqlite://database.sqlite3'
)

while True:
    try:
        bot_input = bot.get_response(input())
        print(bot_input)

    except(KeyboardInterrupt, EOFError, SystemExit):
        break

trainer = ListTrainer(bot)

trainer.train([
    'How are you?',
    'I am good.',
    'That is good to hear.',
    'Thank you',
    'You are welcome.',
    ])
