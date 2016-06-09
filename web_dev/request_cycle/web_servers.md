#Web servers research questions and answers

*What are some of the key design philosophies of the Linux operating system?*
The Linux operating system allows the user to be all powerful, compared to other OS that have inflexible GUI (graphical user interface) where users can only do what developers think you should be allowed to do. 

Linux also has multiple GUI desktop environments so users can choose the one they like the best.

Linux is also an OS developed by the public, anyone around the world can develop and debug it. There is no one organzation that is responsible for the stystem or develops it. 

*In your own words, what is a VPS (virtual private server)?* 
A VPS is a virtual computer in a sense that it has its own operating system and is hosted on the internet. 
*What, according to your research, are the advantages of using a VPS?*
An advantage of using a VPS is that you can test programs and even if everything goes horribly wrong and you fry your server, it is merely virtual and you can create another one in just a few minutes! 
In terms of companies using VPS, since you have complete root access you can install custom software packages without waiting for the hosting provider to support it. It is also more green since with VPS many more people can share the esources of a physical server that is sliced into many virtual environments. 
VPS is also easily scalable, so if your website initially only wanted to host a minimal amount of users but you were growing your company, you could simply allocate more ram to your container (the place your enivornment is hosted in) with the click of the button, instead of having to physically install more ram into your server which would require downtime. 

*Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?* 
Running programs as a root user makes your program susceptible to dleete everything in the system, as well as be mroe vulnerable to malicious software since it has full permission, and you don't generally need to be on root unless for administrative work. 