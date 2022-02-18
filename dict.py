#!/usr/bin/python3

import phonetisaurus
import pandas as pd
words = {}

for line in open("db/en.dic"):
    items = line.split()
    if items[0] not in words:
         words[items[0]] = []
    words[items[0]].append(" ".join(items[1:]))

extra_dic_words={}
for line in open("db/extra.dic"):
    items = line.split()
    if items[0] not in words:
         words[items[0]] = []
    extra_dic_words[items[0]] = []
    words[items[0]].append(" ".join(items[1:]))
    extra_dic_words[items[0]].append(" ".join(items[1:]))

new_words = set()
for line in open("db/extra.txt"):
    for w in line.split():
        if w not in words:
             new_words.add(w)


for w, phones in phonetisaurus.predict(new_words, "db/en-g2p/en.fst"):
    words[w] = []
    if w in extra_dic_words.keys():
        phones.append(extra_dic_words[w])
    words[w].append(" ".join(phones))

for w, phones in words.items():
    for p in phones:
        print (w, p)


