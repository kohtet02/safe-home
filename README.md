# safe-home (Stay@Home:house: and Wash Your Hands:hand:)
This app is created to get more awareness of people around you
 - your family:family:
 - your friends:beer:
 - your beloved ones:couple_with_heart: and
 - people around the world:earth_asia:

Washing hands is the only way to keep the virus out and take action properly to take control of novel pandemic COVID 19.

## About Me
Before explaining about my project UI design, let me introduce myself and why I started this project.

I am Software Engineer(fullstack) and currently working in Japan.<br>
I am father of young princess:princess: who is still 10 months old(while I am writing this ReadMe).<br>
I have no idea how to help people to be safe and there is nothing much I can do except from washing hands everyday and everytime.
(I still have to go to work place while I started this project and all I can do is washing my hands to keep myself and my family safe)

COVID19 is new disease and flutter is as new as COVID19 for me.<br>
So I started to think of making this app idea come up from no where and wanted to make self-awareness as well as for others.

That's all folks, I am just a normal geek who is trying to make an app which can help people alittle bit for raising their awareness.

## Explanation about UI
### 0.Overall and Transactions
[Description]
Overall design view for safehome application.<br>
Check this link to see the UI demo created by [fluidui](https://www.fluidui.com/editor/live/preview/cF9DRDR0bkNKSjVzM0xPdFBaYWFSNWtEQmM1ZGNIMU5VUA==). <br>
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/0.safehome_overall.jpg" width="600">
### 1.Login
[Description]
 - Login page view.
 - Can login with Social Media(Facebook, Google, Twitter) as well as Login as Guest
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/1.safehome_login.jpg" width="300">

### 2.WashHand
[Description]
 - After login, the screen will direct to WashHand page
 - Read the instructions and press done if you washed your hands. Do not forget to tell where you are now by choose home, work, outside icon buttons. The timer will tells you, how long it has been since you have washed your hands last time.
 - Can navigate to profile, home, invite friend, share pages from this page
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/2.safehome_washhand.jpg" width="300">

### 3.WashHand(Done)
[Description]
 - After pressing done button from WashHand page, the screen will direct to WashHand(done) page
 - App will tells you how often you must wash your hands depends on where you are at.
 - Can navigate to profile, home pages from this page
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/3.safehome_washhand_done.jpg" width="300">

### 4.Home
[Description]
 - This page will show by pressing button with home icon at the bottom nav bar
 - You can see your groups and members and check whether they are washing their hands often.(If you don't have any groups yet, you will be directed to home_blank page)
 - Member icon will be
   - Green: If he/she wash their hands often
   - Orange: If he/she forgot to wash their hands in time
   - Red: Contact to that person directly to wash their hands immediately because they are not washing their hands for long time.
 - You can see how many people are doing well and how many are not.
 - The person who said they got infected will show with red-cross sign at the top of their avator icon
 - Click Grid/List toggle button to switch your groups in grid view and list view
 - Click plus icon button to create new group
 - Remember you can only add member to group in list view which has already created
 - Can navigate to profile, washhand, home_blank, invite friend, share pages from this page<br>
[Grid View]
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/4.safehome_home_grid.jpg" width="300">
[List View]
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/5.safehome_home_list.jpg" width="300">
[Blank/Create Groups]
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/6.safehome_home_blank.jpg" width="300">

### 5.Invite Friend
[Description]
 - This page will show by pressing button with plus and person icon at the bottom nav bar
 - Find user who is already using app or invite them by sending app link
 - Send or accept friend requests
 - Can navigate to profile, home pages from this page
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/7.safehome_invite_friend.jpg" width="300">

### 6.Profile
[Description]
 - This page will show by pressing avatar icon at app top bar.
 - Can edit profile info like name, country, city and most important is to tell your family and friends about your health status
 - Click save button if you have any changes
 - Can navigate to home page from this page
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/8.safehome_profile.jpg" width="300">

### 7.Share
[Description]
 - This page will show by pressing button with arrow icon at the bottom nav bar
 - Choose social media where you would like to share about this app
 - Can navigate to home page from this page
<img src="https://github.com/kohtet02/safe-home/blob/master/ui_ux_design/9.safehome_share.jpg" width="300">

## Architecture Design
 - Client: Mobile App (android/IOS)
 - Server: GraphQL Server with Social Media Authentication
 - Services/Tools: Firebase(cloud), AWS_AppSync, AWS_lambda, Flutter, GraphQL, DynamoDB
 - CI/CD: CodeMagic
 - Design Tool: FluidUI

## Goal
Just simple.Complete project. Realease it.Spread the app to make people wash their hands.<br>It doesn't matter whoever release the similar app with the same idea before me. After all, this idea is to help people around the world to make awareness to wash their hands.

## Road Map
Phase|ToDo|Description|Progress|Status
-----|----|-----------|--------|------
phase1|UI Design|Create UI design|done|:white_check_mark:
phase1|Flutter Client|Create Flutter Client based on UI design|on progress|:rocket:
phase1|Social Login|Authenticate using firebase cloud with social media|on progress|:rocket:
phase1|GraphQL Server|Create GraphQL Server using AWS AppSync|postponed|:zzz:
phase1|Firebase Backend|Create Firebase database and connect with Client|on progress|:rocket:

## Contribution
Welcome anyone who would like to help to complete this project or can make a better idea.<br>
Any kind of suggestions and improvements which helps this project are accepted to make further improvements.

## Contributors
 - Thanks to **Khine Wai Oo** @KhineWai710 for her awesome scripts in flutter for UI and it is a big help!:heart:

## Say Something
 - Stay strong and I believe that we can overcome this disease.:heart:
 - Wishing all the best to people around the world.:pray:
 - Stay at home, wash your hands and write codes.:sparkles:
