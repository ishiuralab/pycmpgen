import json
import sys

json_name = sys.argv[1]

with open(json_name, 'r') as f:
    result_list = json.loads(f.read())
    print(int(result_list['optimize']))
