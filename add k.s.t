from collections import Counter
text = "I love NLP I love Python"
words = text.split()
bigrams = list(zip(words[:-1], words[1:]))
bigram_count = Counter(bigrams)
unigram_count = Counter(words)
V = len(unigram_count)
k = 0.5
w1 = "love"
w2 = "NLP"
count_bigram = bigram_count[(w1, w2)]
count_unigram = unigram_count[w1]
probability = (count_bigram + k) / (count_unigram + k * V)
print("Add-k Smoothing Probability:", probability)
