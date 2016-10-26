
handle = open("mbox-short.txt")
lst = list()
counts = dict()


for mail in handle : 
    if not mail.startswith("From:"): continue
    mail = mail.strip().split()
    lst.append(mail[1])
        
 
counts = dict()
for word in lst:
    counts[word] = counts.get(word, 0) + 1

bigcount = None
bigword = None
for word, count in counts.items():
    if bigcount == None or count > bigcount:
        bigword = word
        bigcount = count 

print bigword, bigcount
        
