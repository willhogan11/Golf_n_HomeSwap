# Golf'n Home Swap

- **Students:** Will Hogan & Andrejs Lavrinovics
- **Student Number:** G00318460, G00196984
- **College Name:** GMIT
- **Course:** Software Development
- **Module:** Applied Project and Minor Dissertation
- **Project Supervisor:** John Healy
- **Project Client** Maria Murphy
- **Current College Year:** 4rd Year 
- **Project Title:** Golf'n Home Swap

---

## Introduction
At the beginning of year 4 in Software Development, this software development team were given the opportunity to work on the Golf’n Home Swap project for external client Maria Murphy from the Marketing & Tourism department in GMIT. Upon listening to the initial idea, there was a level of excitement and it was thought that this would be a great way to learn and incorporate several new technologies into a full-scale Web Application. The idea is focused in the direction of the golfing fraternity, that simply allows a user to swap their home with another user. Each user will have a golf membership with their club and the idea is that the members will not only swap houses but can play at the other person’s golf club as a guest for the duration of the swap. Initially, the application will be limited to users from Within Ireland and the UK, with a few to global expansion as the application gains traction.

When the initial meetings commenced with Maria, a project handbook was handed to the development team in the form of a Storyboard. This pdf file contained a visual representation of what Maria had envisioned to be the user's interface. This clearly illustrated how a user would interact with the system and from a development perspective, made a lot more sense as it created a strong Idea about how to structure the application. 

---

### System Architecture
<div align="center"><img src ="https://github.com/willhogan11/Golf_n_HomeSwap/blob/master/Golfnswap%20Project%20Architecture(New).png" height="600" width="800" /></div>

---

### The Application
Golf’n Home Swap is a full scale, multi-faceted, Web Application that allows users to view the Website, apply for membership and once approved by the Administrator, become a fully registered member of the System, which will enable users to view, add homes and golf club information to their account. The information that the user provides can be searched by other users in the system and in the future, a registered user will be able to message other users who wish to swap homes and golf club membership for a duration. Because of the general privacy issues associated with user’s information being available on the internet, the system has been created from the ground up with a keen focus on security. A user’s privileges may be rescinded or reinstated at any time, should the Administrator deem it prudent.

---

### Project Scope
As this is a 4th and final year software development project, it was felt that this project would demonstrate many learning outcomes associated with the required scope at this level. To put this into perspective, when the project specifications were received and because of the varying amount of moving parts in the application, it was decided to choose several different software products to both aid the development process and to compliment the many modular parts and components that make up the System. These ranged from software tools such as Slack that allowed efficient group project collaboration and communication, to using Frameworks within the core development environment that allowed for solid project scaffolding and made the development process much easier.

---

### Key Application Features
The below are the key features of the system and how they work;

* **Client Interface** – The front end of the application was created from the perspective of a given user and what needs and requirements they would have. Whilst the main focus was on the Software development itself, every multi-faceted part of the application was treated as a whole. There was a conscious effort to try and emulate the project storyboard as much as possible to deliver an operational front end, but also one that looks professional.

* **Security** – Works well in every area. A thorough security system has been incorporated into the application, that is robust to meet the needs highlighted in requirements, which not only keeps a user’s data private and safe, but also the system in its entirety.

* **Concurrency** – The system allows multiple users to access the application simultaneously, allowing for swift and scalable access.

* **Validation (Client and Server Side)** – Two types of Validation have been incorporated into the application. Client Side validation using JavaScript which restricts users from entering wrong or incomplete information. Server side validation which is completed on the server.

* **Database / mongodb** – Mongodb was used as a way of storing data layer information. This works with Key value pair information and uses a structure similar to JSON called BSON.

* **OOP / Design patterns** – An Object oriented approach was used in the project and where possible opted to work to abstractions over concrete classes, which allowed for Loose coupling and high cohesion. Several Design Patterns were also incorporated into the project, which helped aid the code flow and promote code reuse. Factory patterns, Singletons, MVC and Template patterns are some of them.

* **Spring Framework** – The Spring framework was quintessential during the Software Development phase. Here are some of the key Spring elements that this application used;
  * Project dependency management using Maven.
  * Web server and servlet incorporation using Tomcat.
  * Bean XML integration which allowed beans to be configured for use with project objects.
  * In depth security implementation.
  
* **Cloud based AWS implementation** – The application is housed in the Cloud using Amazon Web Services. This includes the mongodb database layer. Refer to the Architecture Diagram in Chapter 4. The Golf’n Home Swap application is hosted by Amazon Web Services and can be viewed at the below address; [http://52.214.71.85:8080/golfnswap/](http://52.214.71.85:8080/golfnswap/)

* **Administration CSM (Client Service Management) implementation** – A client service management system has been incorporated into the application for the Administration personnel. This provides a robust, simplified and user friendly way for them to manage all types of users, be they fully registered or candidates who are waiting to be approved.

---

### Learning Outcomes

* **Team Players / Teamwork** – Being able to work as part of a team is probably the most important aspect of working in a group project. The software development team that were chosen for this project, work extremely well together, but in the real world, a person won’t usually have the opportunity to choose who they work with, but the job will still need to be completed.

* **Communication** – This is a large part of anyone’s daily life, especially where a team is working together to try and achieve a common goal. It became evident that as the project progressed that the better the communication, the better the result. The more communication between a team, the more issues can be noticed and ironed out before it bubbles into something much larger.

* **Exposure to new Technologies** – Being immersed in new technologies is something that is both challenging and rewarding. In one hand, there is the learning curve associated with learning something new, but equally the elation experienced when something finally clicks into place. Most of the technologies used in this project are modern and cutting edge, displaying modern architectures and methodologies. However, a lot of these were new to the development team and so required a strong mindset and hard work to eventually grasp the core concepts associated with each new technology.

* **Analytical Approach** – From the outset, an analytical approach was encouraged and nurtured in order to reach goals and avoid potential problems. This wasn’t always easy as sometimes it’s easier to just dive into something without thinking things through properly, but as a team learned that analysis even at its smallest level, can help to overcome large-scale issues.

* **Planning** – Is something that can easily be taken for granted and overlooked. All projects need to have some degree of planning in order to succeed. Before starting each section, learning to take a careful approach on how to tackle specific sections of the project, was quintessential.

* **Documentation** – Another learning outcome from this project was the importance of documentation. This may seem obvious, but without properly documenting your project, it makes things extremely difficult for anybody else to understand what’s happening. Everything in this project has been documented. This might be for example using GitHub to commit, comment and branch specific versions of the project, or simply keeping track of a weekly diary which detailed what tasks were completed each week. It might also have been the detailed, in code comments used to explain how each part of the system works. All this makes it much easier for several reasons. For the current developers working on this project, who need to refresh what’s happening at certain points of the application or for the next set of developers who will be involved in the handover process.

* **Problem Solving Skills** – This is one learning outcome, that has made an impact. What was realised as the project progressed, was that there may be any one problem, but there are many ways in which to solve it. In software development, it’s easy to overlook a simple problem and look for something more complex, that takes a person down a never-ending rabbit hole. To avoid this, each problem was analysed, broken down into its simplest form, where an equally simple, but agreeable solution was offered.

### Launching

The Golf’n Home Swap project is a web application which is running on a Tomcat web server. Tomcat, which is a run environment (web server) requires some application structure to be followed. The basic layout for the application must have the following;

1.	WEB_INF/web.xml - The Web *Application Deployment Descriptor* for the application. This is an XML file describing the servlets and other components that make up the application, along with any initialisation parameters and container-managed security constraints.

2.	WEB_INF/classes - This directory contains any Java class files (and associated resources) required for the application, including both servlet and non-servlet classes, that are not combined into JAR files. If the classes are organised into Java packages, it must be reflected in the directory hierarchy under /WEB-INF/classes/.

3.	/WEB-INF/lib/ - This directory contains JAR files that contain Java class files (and associated resources) required for the application, such as third-party class libraries.

To deploy the project a war file needs to be built using eclipse. This war file needs to be placed into the <apache-tomcat>/webapps/ directory. The name for the war file needs to be clear as it will be used when the application launches. When it is done the web server can be started by launching the <apache-tomcat>/bin/startup.bat for Windows-based or <apache-tomcat>/bin/startup.sh for Linux based platforms. Tomcat will create the project directory itself and export the necessary files into it.

The Mongo DB server will also need to be installed and run. Detailed instructions as to how to install and run a MongoDB server for different platforms is documented [here](https://docs.mongodb.com/v3.0/installation/).

When Tomcat is running within the project container and MongoDB are running then everything is ready to start the Golf’n Home Swap web application. As tomcat’s open port is 8080 by default to launch the web application, there is need to enter **localhost:8080/<name_of_war_file>** in the browser’s address bar, for example: **localhost:8080/golfnswap** .

Golf’n Home Swap application is also running on a remote cloud server. Amazon AWS service was used to deploy this system. The address for using project online is [http://52.214.71.85:8080/golfnswap](http://52.214.71.85:8080/golfnswap) .

