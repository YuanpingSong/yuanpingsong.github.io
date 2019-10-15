---

tab_title: "IDEA Hacks 2019 Entry: Filterist"  
title: "IDEA Hacks 2019 Entry: Filterist"
subtitle: 'An affordable IoT air purifier'
featured_image: '/images/2019-01-10-IDEA-Hacks-2019-filterist/filterist_cover.jpg'
excerpt: What did I make for my first hardware hackathon? A smart purifier inspired by their high cost at home. 
---

![](/images/2019-01-10-IDEA-Hacks-2019-filterist/filterist_cover.jpg)


## Background

After taking an introductory course in electrical engineering, I have been itching to find a venue to apply my arduino skills and hardware knowledge. IDEA Hacks seemed like the perfect oppurtunity, so I joined the fray with a team of friends!

When I was brainstorming ideas, air quality issues back home (Shanghai) was at the top of my list, because it severly affects people's health. Air purifiers are effective as a short-term solution, but families typically don't have enough air purifiers for the amount of living space they have because commercial air purifiers are quite costly.

Looking into the mechanics of air purifiers, I discovered that its is surprisingly simple. All you need to build a bare bones air purifier is just a fan plus a filter. Such an air purifier designed from minimalist principles can be much cheaper than those sold on the market because most of the bells and whistles are not needed. 

So I did some research and figured out which components I would need to actually build one, ordered them, and brought them back to school as the new quarter started. 

## Project 

<img src="/images/2019-01-10-IDEA-Hacks-2019-filterist/filterist_filter.png" style="width: 60%;" >


Here is an image of the air purifier we created! The purple cylinder is the filter, it is sealed off at the bottom, and we have a computer fan drawing air on the top, so air would flow into the filter from the sides. We 3D-printed the blue plastic parts so we can have a really good seal between the filter and the fan. 
The fan uses [PWM]() control, and we connected it to a WIFI-capable arduino so you can control it from an app: 

<img src="/images/2019-01-10-IDEA-Hacks-2019-filterist/filterist_app.jpg" style="width: 60%;" >

The app receive sensor data (temperature, humidity) from the purifier, and can send commands to ajust the fan's speed. 

## Cost
By our estimation, the prototype we built only cost half sa much as commercial air purifiers. And cost difference will be even greater if our purifier is produced in larger quantities. 
### This Project 

| Part               | Cost        |
| ------------------ | ----------- |
| Filter             | $20         |
| Arduino MKR 1000   | $35         |
| Computer Fan       | $15         | 
| Sensors            | $20         | 
| *Total*            | *$90*       |

### When Mass Produced ...

| Part               | Cost        |
| ------------------ | ----------- |
| Filter             | $5-20       |
| PCB                | ~$5         |
| Custom Fan         | ~$10        | 
| Sensors            | ~$10        | 
| *Total*            | *<$45*      |


For reference, most air purifiers in the market right now sells for more than $150. 

## Team 

I was very lucky to be in a team with diverse skillsets. Between the four of us we were able to cover 3D printing, arduino programming, andriod development, circuit design, and web development! I really enjoyed going through the entire process from envisioning a product to delivering it with this team!

### And here is a team photo: 

![](/images/2019-01-10-IDEA-Hacks-2019-filterist/filterist_team.jpg)
