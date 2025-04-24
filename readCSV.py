import csv

# Mac Env
# with open('/Users/anjandebnath/Documents/DataPipeline/data.csv') as f:

# Ubuntu Env
with open('/home/vagrant/data/data.csv') as f:
	myreader=csv.DictReader(f)
	headers=next(myreader)
	for row in myreader:
		print(row['name'])