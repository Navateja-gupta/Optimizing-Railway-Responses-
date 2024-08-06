
import pandas as pd
import numpy as np
# ML Packages For Vectorization of Text For Feature Extraction
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
# Visualization Packages
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn import linear_model

def prediction_result(tweet): 
    check = tweet
    df = pd.read_csv("train.csv",encoding="ISO-8859-1")
    df_data = df[["SentimentText","Sentiment"]]
    df_data.columns
    df_x = df_data['SentimentText']
    df_y = df_data['Sentiment']
     

    df_data['processed_tweet'] = np.vectorize(process_tweet)(df_data['SentimentText'])
    # #### Feature Extraction From Text
    # + CountVectorizer
    # + TfidfVectorizer

    # Extract Feature With CountVectorizer
    corpus = df_data['processed_tweet']
    #print(corpus)
    cv = CountVectorizer(ngram_range=(1,2))
    X = cv.fit_transform(df_data['processed_tweet']) # Fit the Data
    #print(X)

    #X.toarray()

    # get the feature names
    #cv.get_feature_names()

    from sklearn.model_selection import train_test_split
    X_train, X_test, y_train, y_test = train_test_split(X , df_data['Sentiment'], test_size=0.2, random_state=69)
    X_train
    # Naive Bayes Classifier
    from sklearn.naive_bayes import MultinomialNB
    clf = MultinomialNB()
    #clf=linear_model.LogisticRegression(fit_intercept=False)
    clf.fit(X_train,y_train)
    clf.score(X_test,y_test)

    # Accuracy of our Model
    #print("Accuracy of Model",clf.score(X_test,y_test)*100,"%")
    




    ### Save the Model 

    import pickle 

    naivebayesML = open("Cyberbull.pkl","wb")

    pickle.dump(clf,naivebayesML)

    naivebayesML.close()


    # Load the model


    ytb_model = open("Cyberbull.pkl","rb")

    new_model = pickle.load(ytb_model)

    new_model    


    # Sample Prediciton 3
    comment2 = [check]
    vect = cv.transform(comment2).toarray()
    #new_model.predict(vect)   


    if new_model.predict(vect) == 1:
        result = 'positive'
        #print("not bullying")
    else:
        result = 'negative'
       # print("bullying") 
    return result

    
def emoji(tweet):
    # Smile -- :), : ), :-), (:, ( :, (-:, :') , :O
    tweet = re.sub(r'(:\s?\)|:-\)|\(\s?:|\(-:|:\'\)|:O)', ' positiveemoji ', tweet)
    # Laugh -- :D, : D, :-D, xD, x-D, XD, X-D
    tweet = re.sub(r'(:\s?D|:-D|x-?D|X-?D)', ' positiveemoji ', tweet)
    # Love -- <3, :*
    tweet = re.sub(r'(<3|:\*)', ' positiveemoji ', tweet)
    # Wink -- ;-), ;), ;-D, ;D, (;,  (-; , @-)
    tweet = re.sub(r'(;-?\)|;-?D|\(-?;|@-\))', ' positiveemoji ', tweet)
    # Sad -- :-(, : (, :(, ):, )-:, :-/ , :-|
    tweet = re.sub(r'(:\s?\(|:-\(|\)\s?:|\)-:|:-/|:-\|)', ' negetiveemoji ', tweet)
    # Cry -- :,(, :'(, :"(
    tweet = re.sub(r'(:,\(|:\'\(|:"\()', ' negetiveemoji ', tweet)
    return tweet


 


import re

def process_tweet(tweet):
    tweet = tweet.lower()                                             # Lowercases the string
    tweet = re.sub('@[^\s]+', '', tweet)                              # Removes usernames
    tweet = re.sub('((www\.[^\s]+)|(https?://[^\s]+))', ' ', tweet)   # Remove URLs
    tweet = re.sub(r"\d+", " ", str(tweet))                           # Removes all digits
    tweet = re.sub('&quot;'," ", tweet)                               # Remove (&quot;) 
    tweet = emoji(tweet)                                              # Replaces Emojis
    tweet = re.sub(r"\b[a-zA-Z]\b", "", str(tweet))                   # Removes all single characters
    #for word in tweet.split():
       # if word.lower() in contractions:
            #tweet = tweet.replace(word, contractions[word.lower()])   # Replaces contractions
    tweet = re.sub(r"[^\w\s]", " ", str(tweet))                       # Removes all punctuations
    tweet = re.sub(r'(.)\1+', r'\1\1', tweet)                         # Convert more than 2 letter repetitions to 2 letter
    tweet = re.sub(r"\s+", " ", str(tweet))                           # Replaces double spaces with single space    
    return tweet

