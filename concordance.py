#! /usr/bin/env python
# concordance.py
# Copyright Daroc Alden 2015
# Released under the LGPL (https://www.gnu.org/licenses/lgpl-3.0.txt)
#
# This program produces Alden-style phrase-based concordances.

import csv, time, sys

def clean(word):
  word = word.lower()
  word = word.replace("'", "").replace('"', "").replace(".", "")
  word = word.replace(",", "").replace(";", "").replace("!", "")
  word = word.replace("?", "").replace("(", "").replace(")", "")
  word = word.replace(":", "")
  return word

def main():
  stopwords = set()
  
  with open(raw_input("The location of the stopword file: ")) as f:
    stopwords = map(clean, f.read().split())
  
  stopwords = set(stopwords)
  
  with open(raw_input("File to parse: ")) as f:
    text = f.read().replace("[", " [").replace("]", "] ").replace("xx", " xx ")

  phrases = text.split("xx")
  text = text.split()
  
  paragraph = "inital"
  phrase = 0
  with open(raw_input("Output file name (ends w/ .csv): "), "w") as out:
    with open(raw_input("Index file name: "), "w") as index:
      output = csv.writer(out, quotechar='"', doublequote=True, quoting=csv.QUOTE_NONNUMERIC)
      for word in text:
        if word.startswith("[") and word.endswith("]"):
          paragraph = word[1:len(word) - 1]
          index.write(paragraph + " - " + phrases[phrase + 1] + "\n")
        elif word == "xx":
          phrase += 1
        elif clean(word) not in stopwords:
          output.writerow([clean(word), paragraph, phrases[phrase]])

  print "Thinking . . ."
  time.sleep(2)
  print "Task Complete"

if __name__ == "__main__":
  if len(sys.argv) == 1:
    main()
  if sys.argv[1] == "--help" or sys.argv[1] == "help" or sys.argv[1] == "-h":
    print """Usage: concordance.py [--help]\nThis program will prompt you for four things:\n\tThe file containing words to ignore (stopwords)\n\tThe text to parse\n\tThe place to save the spreadsheet\n\tAnd the place to save the paragraph indicies."""

