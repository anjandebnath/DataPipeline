import csv


with open('/Users/anjandebnath/Documents/DataPipeline/data.csv') as f:
	myreader=csv.DictReader(f)
	headers=next(myreader)
	for row in myreader:
		print(row['name'])