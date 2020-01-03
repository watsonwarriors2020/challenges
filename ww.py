import requests, json

class WatsonWarriors:
    def __init__(self):
        self.host = "https://ww-local-dev.ngrok.io";
        self.answerDict = {};

    def token(self, token):
        self.token = token;
        return self;

    def getHeaders(self):
        return { 'ww-session': self.token };

    def completeWithFile(self,filepath):
        with open(filepath, 'rb') as f:
            return requests.post(self.host + '/validate/file', headers = self.getHeaders(), files={'file': f }, data = { 'data': self.serializeData(self.answerDict) })

    def step(self,index):
        self.answerDict[index] = 'complete';

    def answer(self,index,value):
        self.answerDict[index] = value;

    def serializeData(self,data):
        return json.dumps(data, separators=(',', ':'));

    def complete(self):
        return requests.post(self.host + '/validate', headers = self.getHeaders(), json = { 'data': self.answerDict });
