# Movie Lovers!

We are going to create a movie quiz web app!! So lets see the main points of our quiz:
- Use sinatra to create the web application. So far, you only know about that one, hehe.
- Let's use IMDB gem to get the movie information.
- Use RSpec to test your classes

Go step by step and do not move forward until you finish one step!

###1 Make a search and show 9 posters!

- Create a page that will ask for a word on an input field.
- The form will do a post to another page that will do a search in IMDB with that string
- Get the first 9 results of the search
- Show the posters of those 9 results on a new page

**Make sure that there are always 9 posters**

###2 Trivia about the movies!

You are going to create a question about those 9 movies. For example you could ask "Which movie was released in 1999?"

- Choose one question that you will always ask
- Show this question on the page where you show the 9 posters
- Get the answer from the 9 movies and store it
- Create a button for each movie. Place it at the bottom of the poster for example
- The button should do a new request
- Check the answer on the new request
- Redirect to another page that tells you whether you were right or not

**Make sure there is only one correct answer**

##Extra Behaviors

### Make images clickable

Can you think of a way to be able to choose your answer selecting the image instead of the button?
Try it out!

### More questions

Create more questions to ask about the movies.
Choose one answer randomly and choose the answer for that one.
Show that question on the page.

**Make sure there is only one correct answer**

### No search query

Show 9 random movies that you can search with a random word for example.
Do not expect the user to ask you for a word.

### The whole Quiz!

After answering a question you get the answer. Store if that was correct or not.
Ask the user if he/she wants another question and show it to him/her.
When he decides to stop answering. Show him the total score!

##TIPS

### Classes and methods

If you had any, remove all the logic inside the *get* and *post* requests.
You should be only instantiating a class and calling a method on each of them. Or a few methods maximum for each of them.

Create the classes and methods that you need.
Separate different behavior in different classes. Do not use only one huge class.
Create a file for each class. Require it where you want to use it.

### Test those classes

Create the specs to test that the classes and methods work properly. The proper way to do it is creating the test BEFORE you start to code.
There should be a spec file that requires the files with the classes and checks them.

**Recommendation: Use stubs if there is a dependency on IMDB gem because every query you make can last forever**
