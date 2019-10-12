---

tab_title: Introducing OmniReader
title: Introducing OmniReader
subtitle: 'A Vue.js Web Application for enhancing your online-reading and learning experience'
featured_image: '/images/oreader_logo.jpg'
excerpt: What is my motivation for creating OmniReader? What does it do? How did I implement it and with what technologies? This writeup provides a short summary. 
---

![](/images/oreader_logo.jpg)

## Background 

Over this past holiday season, I finally got a long enough break from school to starting thinking about working on a fun side project of my own! I was also curious, after loading up on upper-division computer science courses for two consecutive quarters, wheter my technical skills have reached a point where I could actually create something useful ... at first to my self, then hopefully to many others. 

I knew I wanted to create a Web App, beause I would like all off my friends to be able to use my product, no matter they are on iPhone or Android. Plus, I kept hearing people talking about this framework called React (which I didn't end up using XD) that seemed to be taking over the world. 

I was very lucky to stumble over extremely helpful educational material on the Web. So much so that I would recommend to anyone trying to get started in Web development [CS 193X: Web Programming Fundamentals](http://web.stanford.edu/class/cs193x/), a course Stanford generously published online. The lecture slides are very well made. It teaches the core knowlege of Web Dev using the most up to date approach, and I can speak from personal experience that I had no more problem understanding reference material (MDN, documentation of frameworks, etc. ) after following this course.

In retrospect, just as valuable as the content of that course are various pointers to other really good resources on Web Development, and a general encouragement to go on your own and explore the vast Web eco system. There is simply too much interesting stuff about the Web to fit inside any course. 

Some of those other resources that I really liked are: 

* [Morzilla Developer Network](https://developer.mozilla.org/en-US/) (HTTP, CSS, JS)
* [Google Web Fundamentals](https://developers.google.com/web/fundamentals) (Web Performance, PWA)

## Motivation 

As a long-time student and english learner (being doing it since kindergarten, that's 15+ years), and after witnessing so many people around me sttruggling to acquire a foreign language, I have been intensely intersted in creating tools that would make foreign language study more effective. 

I designed OmniReader to address what I believe to be a pain point in foreign language learning: reading in that foreign language is a wonderful way to improve one's proficiency. As long as the material is intersting, reading is both engaging and effective. However, if one runs into a word that he doesn't recognize, then he is faced with a serious dillema: either pausing and looking up that word in the dictionary, thereby diminishing his enjoyment, or continuing on and risking making erroneous gusses on the meaning of that word. 

In real life, seeing many words that I don't recognize makes me disinclined to continue reading a novel, even though the story line might be good. (ex. my first reading of Harry Potter in elementary school) I recollect having difficulty concentrating for more than 30 minuets at a time. Constantly having to consult the dictionary proved just too exhausting. 

Therefore, a reading enviornment where dicionary look-ups are made effortless can be of trenmendous help to language learners. Another important feature to have is flashcards, which allows learners to deliberately practice words that they are least familiar with. 

These features are at the core of OmniReader's functionalities. Also implemented are the ability to extract content from a given URL and a versatile reader interface, as we will see in the next section. 

## Walkthrough

This secions provides a walkthrough of OmniReader's functionalities. You're invited to follow along at [OReader.app](https://oreader.app)!


<ol>
	<img src="/images/oreader_intro_1.JPG" alt="OReader homepage" style="margin-top: 1rem; margin-bottom: 1rem;">
	<li>
		This first image is the landing page of the Web App. A user can enter a passage or an URL into the text field. If the later is the case, content is automatically extracted from the URL. The submit button leads to the Reader view, which we shall see next.
	</li>
	<img src="/images/oreader_intro_2.JPG" alt="OReader reader view" style="margin-top: 1rem; margin-bottom: 1rem;">
	<li>
		Here is a screenshot of the reader view. Because earlier we entered the URL of a WSJ article on Brexit in the text field, we find that same article, stripped of navigation, ads, etc, in the reader. In addition to offering a number of controls on the upper right, the reader view allows the user to underline words he or she might wish to look up. The browser automatically detects this and the yellow button will be displayed. If the user then click on this button, a dictionary view will pop up, as we illustrate next.
	</li>
	<img src="/images/oreader_intro_3.JPG" alt="OReader dictionary view" style="margin-top: 1rem; margin-bottom: 1rem;">
	<li>
		The dictionary modal provides english-to-english definitions for the seleted word. The part-of-speech is clearly color-coded. Each definition is a drawer, which displays smaple usage when clicked. "English-to-English? What if there is a word in the definition that I don't recognize?" one may well ask. Don't worry! All the words in the definitions are clickable. Looking up that word is as easy as just clicking on it! The breadcrumbs (not shown) provide a way of navigating back. 
	</li>
	<img src="/images/oreader_intro_4.JPG" alt="OReader add to deck feature" style="margin-top: 1rem; margin-bottom: 1rem;"> 
	<li>
		Want to save a word you looked up for later? No problem! Just click on "Add to Deck" on the bottom right of dictionary modal, then the word will be saved under your account. Switch to the Flashcards interface in the left navigation and you can view all of your saved flashcards!
	</li>
	<img src="/images/oreader_intro_5.JPG" alt="OReader sign up interface" style="margin-top: 1rem; margin-bottom: 1rem;">
	<li>
		Don't have an account yet? Create an account right now by providing some basic info xD! 
	</li>
</ol>

## Technical Details 

OmniReader is created with the MEVN stack. That is: MongoDB, Express.js, Vue.js, and Node.js. The choice of backend technologies is influenced by approach adopted by CS 193X. I had no particular preference for a frontend framework, and was pretty evenly split between React and Vue. In the end, I chose Vue because it is a newer framework, and I thought that it would have a "late mover advantage", having observed the merits and pitfalls of React. 

Looking back, this decision has been fortunate. I later learned much more about React during my summer intership and found out that React requires a deeper understanding of ES6 to be useful, which means I probably wouldn't be as productive if I first started out with React. 

The Vue.js frontend is a fairly typical [SPA](https://en.wikipedia.org/wiki/Single-page_application). I used component library [Vuetify](https://vuetifyjs.com/en/) to get a Material design look and feel which I really like.

The Express backend mainly performs CRUD operations on MongoDB. Additionaly, I tried hard to get several cool features (and former stumbling blocks) into the App. These include session, cryptography, [TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security), [ODM (Mongoose)](https://mongoosejs.com/), etc. 

## Future Works 

I temporarily put aside work on this project after deploying the initial version in January 2019 due to school restarting. But I do plan on fleshing out more features because I believe this project has great potential! Among the features I want to get implemented are: 

1. Enhanced, Quizlet-like, flashcard interface with support for interval learning. 
2. Article library, where users can retrieve articles they previously viewed. 
3. Word usage examples from up-to-date news sources in dictionary. 
4. Ability to upload various file formats (PDF, EPUB, Word, etc.)
5. Vocabulary Quiz 
6. Using (5) to predict words user doesn't recognize and automatically display definition. 

## Conclusion

This brings us to the end of our brief tour of OmniReader. If you are intersted in learning more about the App or joining force with me to make it better, please feel free to drop me an email! 