from collections import Counter
text = "I love NLP I love Python"
words = text.split()
bigrams = list(zip(words[:-1], words[1:]))
bigram_count = Counter(bigrams)
unigram_count = Counter(words)
total_words = len(words)
w1 = "love"
w2 = "Python"
if bigram_count[(w1, w2)] > 0:
    probability = bigram_count[(w1, w2)] / unigram_count[w1]
    print("Using Bigram Probability")
else:
    probability = unigram_count[w2] / total_words
    print("Using Unigram Backoff Probability")
print("Backoff Probability:", probability)
