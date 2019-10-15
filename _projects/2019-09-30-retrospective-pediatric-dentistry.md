---

tab_title: "Retrospective: CCLE Pediatric Dentistry Project" 
title: "Retrospective: CCLE Pediatric Dentistry Project"
subtitle: 'Summer 2019 internship in review'
featured_image: '/images/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_cover.jpg'
excerpt: "Want to learn about a cool project I worked on this summer? How did my buddy and I improve on the way the dentistry program is currently handling its data? And what are my takeaways other than technology? Read here for my rumblings." 
---

![](/images/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_cover.jpg)

## Background

I was very fortunate to be offered an internship position at the department which developes UCLA's very own learning management system: [CCLE](https://ccle.ucla.edu) back in April. After an onboarding process that invlolved familiarizing myself with [Moodle](https://moodle.org/) and the [Agile workflow](https://en.wikipedia.org/wiki/Agile_software_development) using [Jira](https://www.atlassian.com/software/jira), I was introduced to this side project student programmers at CCLE have being working on for quite some time: the Pediatric Dentistry Project. 

The goal is to create a mobile-optimized Web Application that collects information from pediatric dentistry students as they go about learning and performing procedures in dental clinics. The data would be processed to determine whether they passed the clinical course and fulfilled the school of dentistry's competencies. Currently, a system based on paper form exists to accomplish those tasks. The value our app bings is automation and my job is to get familiar enough with the project so I can work on it full-time during summer and hopefully bring it across the finishing line. 

A challenge that pervades this project is the complexity of the business rules that we needed to reason with. As a warm-up exercise, I was given the task to take a look at the current database schema and figure out what seed data should go into the tables. It consisted of more than twenty tables, each reqresenting a type of entities that is believed to be relevant to the business logic. Being enrolled in a database course during that same quarter, I skipped ahead in the textbook in order to understand the schema design, and was able to compile the neccessary seed data and scripts to produce a database dump that was later distributed to other team members. Looking back, this preliminary exercise tied perfectly into my focus for the remainder of the project. That is, understanding and controlling the emerging complexity in the system we are building. 

During the three-month full-time internship, I worked closely with my buddy [Bruce Liu](https://github.com/bruce-c-liu), who was responsible for much of the design and frontend work, while I took over frontend logic and the backend. Many good ideas were born out of lengthy discussions we had on design choices. Without his inputs the project will definitely not be where it is today! 

## Walkthrough 

To put things into perspective, let me first show you what we've accomplished this summer: 

<ol>
<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_1_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_1_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>
</div>
<li> The app launches from an external tools link embeded inside a course on CCLE, using the <a href="https://www.imsglobal.org/basic-overview-how-lti-works">LTI</a> protocol. The link we choose here opens the App in "Day Block" mode, where students can fulfill preliminary requirements for the course. The user is authenticated with a <a href="https://tools.ietf.org/html/rfc7519">JWT</a> received from CCLE and shown the homepage of the App. Notice how the name shown on top and in the greeting provides a customized experience. </li>

<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_2_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_2_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>
</div>

<li>
    The user can create a "Log" which corresponds to one half-day of clinical work by selecting one of the clinical locations. 
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_3_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_3_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>
</div>

<li>
    During each half day, the student may treat several patients. Users create patient entries by providing basic patient information. (which is not meant to uniquely identify a patient to protect privacy.) 
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_4_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_4_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_5_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_5_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>
</div>

<li>
    Students answer questions in the text field for each patient. They can also record the procedures they observed/assisted/performed on that patient. Note "Infant Oral Care", and "Local Anesthesia Administration" procedures are colored red because they require further action; the student needs to answer a few more questions if they observed either procedure. Procedures that are completed or don't require further action are marked green.  
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_6_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_6_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   To complete those two special procedures, the user clicks on the view button to open a modal which contains a checklist of observations to make. Note how certain line items can contain an info box for clarification, and how the procedures turn green after the checklist has been completed. 
</li>


<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_7_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_7_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   In order to submit a Log, the student must first see an instructor to receive a sign-off which verifies the student's attendance in the clinic.  
</li>


<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_8_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_8_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   After verifying attendance, the Submit Log button becomes enabled. We implemented integrity checks at the backend so imcomplete logs can not be submitted. 
</li>


<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_9_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_9_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   Now we've seen pretty much everything noteworthy in the Day Block! You may have wondered what all the other links in the course are for. Well, they open the app in different modes that correspond to later statges of the course. The workflow is the same, but some components are extended with more powerful functionalities. For example, the video above shows for the Week Block we request more information while creating a patient entry, and some of the free-form textfields have been replaced with specific attributes. 
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline>
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_10_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_10_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   The progress modal summarizes the requirements for each block. It specifies that certain procedures needs to be Log in a certain role (One of Observer, Assistent, Competency Assessment, or Competency Exam), how many patients the students should at least see, and how many logs are needed at a minimum, etc.  Students can use this interface to keep track of their progress. This view also maps to the reporting interface that instructors use.  
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline >
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_11_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_11_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   The add a procedure modal in Week Block has also been enhanced to allow users to select a role. In Day Block all the procedures are assumed to be done as an observer. The Competency Exam option is disabled for Clinical Examination because student must first pass Competency Assessment (a mock exam). Note: Patietn Care Assessment is a speical procedure that's added if a procedure is added as either CA or CE. 
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline >
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_12_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_12_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

<video autoplay loop muted playsinline >
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_13_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_13_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>

</div>

<li>
   Another differnece between the Day Block and Week Block is in Week Block, students need to self-assess on a scale of 1 to 3. After which they hand their phones over to instructors who will critique their performance and gave them final grades.    
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline >
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_14_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_14_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>



</div>

<li>
   After verifying attendance, stuents can submit their week block logs, just as in day block. Immediately after submission, the progress bar and modal are updated. It correctly incidates that 1) the user has submitted a log 2) patient care assessment and clinical examination have been completed in the Competency Assessment role.     
</li>

<div class="video-wrap">
<video autoplay loop muted playsinline  width="100%">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_15_2pass_q30.webm" type="video/webm">
    <source src="/videos/2019-09-30-retrospective-pediatric-dentistry/pediatric_dentistry_retro_15_crf35.mp4" type="video/mp4">
    I'm sorry; your browser doesn't support HTML5 video.
</video>
</div>

<li>
  Finally, I would like to show you the reporting interface we implemented for instructors. it essentially displays what students sees inthe progress modal, but in aggregate so instructors can easily keep track of every stuent's progress. 
</li>


</ol>

## Reflections 

Wooo... that was a long walthrough, wasn't it? And that's after omitting numerous minor features and edge scenarios. By its length you can probably tell that the business logic we implemented was quite complex.   

Yes, our time this summer was split pretty evenly between planning and implementation. The first part includes gethering requiremnts, designing an UI based on our understanding of client's needs and limitations of technology, present our design and revise to gain approval. 

### Takeaway #1: Communication is key

In retrospect, my first and perhaps most instructive realization is: the success of our project absolutely depended on an effective communication channel that we maintained between the stakeholders, especially the client, and us, the developers. Communication is so key because many technical challenges could be sidesteped by exploring reasonable alternatives. 

For example, our client presented us with paper forms that our app is meant to replace. Being developed independently, the forms for each block all had a different strucutures. 
Rather than creating multiple user interfaces to match each set of forms, we communicated to our client why that would be time-consuming to implement, and collaborated to worked out a uniform interface that would fit all blocks. 

In another scenario that arose repeatedly, our client is indifferent to several approaches that we can potentially take to solve a requirement, and we were able to use the approach that is loggically most consistent with what's already in place and therefore easiest to implement because we clarified this with her. 

Through effective communications, we were also able to identify client's pain points and propose "killer" features. The progress bar/modal and reporting interfaces are examples of this. We stood in the shoes of dentistry students and instructors and thought about how our app can provide value beyond simply automating forms. 

The rest of my takeaways are all somewhat technical. After all, I thought hard about those enginnering challenges!

### Takeaway #2: Stick to the Agile workflow when business needs are not yet well understood

Teams use Agile so they can incrementally deliver value to clients, which reduces risk and provides all stakeholders a clearer picture of where this project is headed. When I first joined the team in spring, we were in a position where the entire schema has been designed and more than 50% of backend code has been written but none of the front-end components has been fully implemented. It freqently happens that the frontend person needs data from the backend in a certain way, which was different than previously envisioned. So backend code needs to change, and quite possibly the schema to boot. Much of the backend person's time is absorbed in handling such request, and we kept missing delivery targets.  

Our approach back then was very much anti-agile, and we paid dearly in terms of productively. What's more, when Bruce and I took a closer look at the proposed frontend design in early July, we realized that it could not have worked outside of the mockups. It used a card-stacking design and was not scallable. It might do Ok in simple Day Block with 3 cards, but would do very poorly in later blocks where the UI would need to display a stack of 10 or so cards.  

That discovery led us to a painful refactor which resulted in rewriting the majority of fontend code and tightly-coupled backend code. And thereafter we followed a story-based approach to avoid history repeating. 

Taking a step back, now that I have complete the project, I believe in using the Agile workflow in face of uncertainty in requirements. But if I were to do this project again from scratch, given what I know now, I would have taken an even more radical approach: have everyone work on the frontend in the beggining, and use hard-coded api responses when needed. The most productive thing is to show client working prototypes, based on which she could give us the next set of requirements. What about the backend and database? Well, the backend is essentially a CRUD app; there is very little risk that it couldn't be done, after we have most of the front-end figured out. That way we discover the requirements quicker and minimize time spent rewriting the backend. 

### Takeaway #3: Flat is better than nested
When we redesigned our app, we modeled the frontend after the logical hierarchy of the forms: A Block has serveral Logs, which has one or more patients, which has one or more procedures, which has one or more steps. And the components we created has exactly these parent-child relationships. 

Looking back, adopting this highly-nested design might not be the optimal approach, as it posed serveral challenges when implemented in React.js. The first has to do with shareing state between multiple levels of components. Passing everything as props would not be scalable as the complexity of the App grows. So we looked into [Context API](https://reactjs.org/docs/context.html), and put state that every component might be interested in inside a GlobalContext object. While this largely solves our problem, I still think that managing state would be less of a hassel if we didn't have so many levels of components to begin with. (What about Redux? Bruce suggested that Redux requires too much boilerplate code and isn't really suited to our App)

Another problem we had is to determine what piece of state should live where. We had to make compromises between minimizing the number of API calls and simplifying the way we reason about the components. While networking efficiency favors that a root component bulk-downloads the state in a single API call, it is much easier to program the components when thinking of them as managing their own state. We also implemented optimisitic rendering to achive a level of responsiveness that approaches natives apps, which further complicate matters. In the end, we stroke the balance so that Patient manages the state of its children, but ancestors of Patient manage their own state.

What would I have done differently? Probably go for a flatter, more traditional-looking mobile-app layout.

### Takeaway #4: Don't skimp on tests

Testing is another really effective way to keep risks under control in software engineering. On the other hand, writing large amounts of code without ever running it is dangerous! There is almost surely more bugs hidden in the code than you would think.

When I started working on the backend, I invested quite sometime into setting up [Jest](https://jestjs.io/) for testing, and it paid off handsomely. Thanks to the test environment, I could isolate and run individual functions, without having to deal with the entire server at the same time. Even after I finish debugging, A test suite that can detect most breaking changes is a very comforting tool to have. 

Unit testing is not the only way to test though. I think there is a point where the marginal benefit of writing more unit tests is just too low. I felt that my software development cycle became significantly more fun and engaging when I got the first functioning frontend and could see how well my backend code is doing in the network panel of Chrome's inspector. 


Based on those observations, I would recommend testing your code early and often, using whichever aproach you find most effective, espeically when you are writing in a dynamically typed language like Javascript, for which IDEs aren't of as much help. 

## The Stack

I can't finish this write-up without giving a short summary of the tech stack we've used hehe. 

You already know that we used React.js for the frontend, but I want to add Bruce found this really useful libary [styled-components](https://www.styled-components.com/), which we used to produce (hopefully you will agree) a really beautiful interface! 

As for the backend, we used Express.js and MySQL. What's really new this time around is our extensive use of [Sequelize](https://sequelize.org/), an ORM, which has proven very useful.  

## Afterword 

I've throughly enjoyed my summmer interning at CCLE. The dentistry project is challengeing and will be remembered. I am pleased by the fact that we pulled it off. More important are the people I met during the intership. We continue to be friends after the experience, and who knows if we wouldn't band together and work on something even more fun and exciting in the future?  