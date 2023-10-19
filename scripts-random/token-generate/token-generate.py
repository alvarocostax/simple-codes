import requests
import json

url = ''


for i in range(10, 110):
	payload = {"form":{"username":"teste{}".format(i),"password":"","document":"","invitecode":""}
	r = requests.post(url, json=payload)
	print(r.json())
