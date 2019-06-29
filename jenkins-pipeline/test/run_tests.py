import urllib.request

result1 = urllib.request.urlopen("http://localhost:8081").read()
result2 = urllib.request.urlopen("http://localhost:8081").read()

print("result1: ", result1)
print("result2: ", result2)

if result1 == result2:
    raise Exception('Test failed')