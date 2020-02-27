import json
import requests
class FavQAPI:
    def __init__(self):
        self.favq_api = '455b9a11ed53d019609a2bc84090b0b7'
        self.response = requests.get('https://favqs.com/api/')
    def responseCheck(self):
        if self.response.status_code == 200:
            print('Success!')
            ## Returns a bunch of garbage
            #print(self.response.content)
            print(self.response.cookies)
        elif self.response.status_code == 404:
            print('Not Found.')
        else:
            print("Unknown Response: " , self.response)
if __name__ == "__main__":
    apiPull = FavQAPI()
    apiPull.responseCheck()
