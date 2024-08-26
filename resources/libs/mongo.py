from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://lourena:appiumqa@cluster0.czldb.mongodb.net/MarkQA?retryWrites=true&w=majority&appName=Cluster0')

db = client['MarkQA']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Removing task ' + task_name)