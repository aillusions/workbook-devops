# comment

import subprocess
from collections import Counter
import re
from collections import defaultdict
from collections import deque

print("Hello, World!")

# amount = float(input('amount ?'))
amount = 5

result = amount - 1

print("result: %0.4f ", result)

condition = False

if condition:
    print("You can continue with the program ", type(condition))
else:
    print("The program will end here ", type(condition))

num = 12345678901234567891312312312313123131231231231231231231083234234234123123123123123123L
num = num * num

print("num: ", num)

flt = 12345678901234567891312312312313123131231231231231231231083234234234123123123123123123.123123131231231231231231
flt = flt * flt

print("flt: ", flt)

strVal = """A multiline string
starts and ends with
a triple quotation mark."""

print "strVal: ", strVal

res = subprocess.check_output(["ps", "aux"])
for line in res.splitlines():
    print "line: ", line

cnt = Counter()
for word in ['red', 'blue', 'red', 'green', 'blue', 'blue']:
    cnt[word] += 1
print "cnt: ", cnt

print 'blue: ', cnt['blue']

words = re.findall(r'\w+', open('hamlet.txt').read().lower())
print "most_common: ", Counter(words).most_common(5)

nums = defaultdict(int)
nums['one'] = 1
nums['two'] = 2
print 'one', nums['one']

count = defaultdict(int)
names_list = "Mike John Mike Anna Mike John John Mike Mike Britney Smith Anna Smith".split()
for names in names_list:
    count[names] += 1
print(count)

d = deque('ghi')  # make a new deque with three items
for elem in d:  # iterate over the deque's elements
    print elem.upper()

d.append('j')
d.appendleft('f')

print ('d: ' + str(d))
