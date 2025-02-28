# Wczytaj dane tekstowe
# Wczytaj plik tekstowy z lokalnego dysku
text <- readLines(file.choose(), encoding="UTF-8")
text

# Sprawd� cz�sto�ci s��w za pomoc� pakietu qdap
install.packages("qdap")
library(qdap)


# Tworzenie chmury s��w za pomoc� pakietu wordcloud
install.packages("wordcloud")
library(wordcloud)

frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)

# Utw�rz chmur� s��w
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)

# Opcje chmury s��w
?wordcloud
# Zmiana warto�ci min.freq i max.words w celu wy�wietlenia mniejszej/wi�kszej liczby s��w.
# min.freq: s�owa o cz�sto�ci poni�ej tej warto�ci nie b�d� wy�wietlane
# max.words: maksymalna liczba s��w do wy�wietlenia

# Ograniczenie liczby s��w w chmurze poprzez okre�lenie minimalnej cz�sto�ci
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)



# Ograniczenie liczby s��w w chmurze poprzez okre�lenie maksymalnej liczby s��w
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)



#najczestsze slowa z 2024: president, i'm, american, it's, - 
#najczestsze slowa z 2021: american, jobs, plan, americans, -

#Czy priorytety wykryte w obu przem�wieniach s� podobne czy r�ni� si�?
#Tylko jedno ze s��w si� powtarza, wi�c s� raczej r�zne 