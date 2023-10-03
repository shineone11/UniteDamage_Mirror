import requests
from bs4 import BeautifulSoup as bs
import re

url = 'https://unite-db.com/'
res = requests.get(url)

soup=bs(res.text,"html.parser")

print(res)
