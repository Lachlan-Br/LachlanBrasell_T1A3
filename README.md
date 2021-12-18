
# WORD BANK - LachlanBrasell_T1A3
A password bank and generator built by lachlan brasell.


## Github Repository

For all files used within this program please reference:
https://github.com/Lachlan-Br/LachlanBrasell_T1A3

## Statement of Purpose

The terminal application built is for people like myself who forget passwords or are to busy 
with other things to make a password and remember it themselves. This application will create, save,
store, ****(if the gem works) judge/rate the security of the password and help you keep everything in a single place.
The reason for making this application as stated previously is many people seem to forget passwords and have them saved
in very reachable places for people who should not know those given passwords, an application such as this would help 
eliminate atleast a portion of these issues at the least. Again the application will; store, generate and save usernames and
passwords. People who are forgetful, suffer with ADHD or other forms of attention deficit and the general busy population 
are the ones this application has been made for. Those with ADHD have a tendancy to forget very easily and therefore this 
app will help sort thier passwords and usernames for them without the silly post-it notes all around with sensitive data.
Forgetful people hopefully will not forget about the app but very similariry with ADHD will be able to keep everything stored.
The general busy populace will have all thier private passowrds and usernames in one place where it can be accessed without wasting
extra energy and time trying to find them.

### Scope

It is a rather small application that should be able to create a user, save usernames and passwords under that user as a storage application.
contains: 
- Password generator
- Username generator
- Username and password input
- a local bank of users with username and passwords saved
- (bonus) Color customisation
- (bonus) being saved to a file
- (bonus) being able to delete previously saved items

## Features

First feature:
    The first feature is a password generator - you can choose to have symbols, numbers and or capitilisation. This is to help
    people who can't make strong passwords, it will give them an automated generated option they can use without the hassle
    of writing it down or keeping a sticky note in some place that's vulnerable.

Second feature:
    The second feature will consist of a username generator - similar to the password gen it has the same specifications 
    this is again to help people who can't make hard to guess usernames or for people who can't be bothered to make one or remember.

Third Feature:
    The third feature ties in with both of the above, a username and password storage device, it will hold onto the entered
    users and pass's that are made (either through input or generated). The whole app itself is a password storage and gen therefore
    a storage device either through file notation or temporary application running memory is needed.

Fourth Feature: 
    The fourth feature will be a linkage to user creation or profiles. When a user generates or creates a password / username it
    will save those into a profile the user creates. this is done through a name only aand may be updated / advanced later on.
    The piece will allow a user to to verify which account they are accessing when using the view passwords and usernames feature.

Fifth Feature:
    Fifth feature will be a Profile creation feature, this links with the above feature mentioned allowing the user to create
    a seperate ID to save thier usernames and passwords too for access at a later date. 

Sixth Feature: - Was unable to do due to limitations.
    This will be a combo of bonus feature which include a Multi-create which will set a list of passwords and or usernames for the 
    user to choose from and the second half will be a colour choice option at the start of the application to put the writing in.

Seventh Feature:
    Consisting of being able to change the colouring of the main menu / Welcome sign everytime you launch up the piece. Simple yet
    gives the user a sense or personality within the piece.


NOTE: most code explanations were done via the presentation.



Features: - TLDR / NOTES
Password gen
- This can be many lengths - have symbols - numbers - capitalization
Username Gen
- Similar parameters to password gen
Storage of password
- Storing of password (hopefully on a separate file) for later use (named after date / time)
Storage of Username
- '' ''
Linkage to User
- Linking said password and username to a user created
(bonus if i learn it: saving to a file)
profile creation (for storage)
- Profile creation previously stated to be able to store passwords and usernames
Multi-Create (be able to create multiple passwords at once and choose which one to save)
- give out more options.
Choose colouring of page (bonus if i can do it in time)
- give a little customisation to the users.

## Outline Of Interaction

1: The password generator will be located within the start-up menu, it will ask if you'd like to use symbols, numbers and or capitilisation
within your generated password. It will have an input value of Y/N (boolean) and use a push element to input the generated pieces into the array.

2: Very similar to the first feature the second will be a username gen / input and will accompany the password input / gen in 
a single method. The same scramble and input / storage methods. Interface a small menu for the user to navigate.

3: A storage device will be the third feature as stated, consists of a hash_array which allows inputs or generated passwords and 
usernames to be stored for later access, this will be accessable through menu inputs gievn to the user interface on startup, can
be edited to add more profile or delete existing profiles. This is representative of both feature 3 and 4, with 4 people an account 
linking service, as stated with the storage system you will be able to create a user and implement those passwords and usernames
to corresponding profiles.

4: Stated previously was the fifth feature which is a profile creation feature, linking further with feature four of linking profiles
and usernames / passwords. This feature is accesssed via pushing of values through to the hash_array and saving said pieces to 
the users input profile name. Accessed via the menu options in the start screen and can view these profiles can be viewed (stated previously)
from the same menu (another option).

5: A combo bonus feature of muilti-creation of passwords and usernames as well as a colourisation option, all will be accessable via
previously stated main menu after the welcome page. The multi-creation passwords would give out a few different combonations and
you would be able to choose one to be saved to your profile of choice. Secondary feature will be a colour customisation, where the user
can choose the colouring of the ascii art and overall letters etc in the whole console application, done via a selection of options 
within the menu itself.

Error Handling:
Nearly all error handling is sorted via redirection to main menu. Other parts are sorted in a semi-loop or if statement to progress without failure.

Inputs of nothing within the user profile recording is allowed on purpose incase people do not wish to save a profile name
password or username and rather only one or two of the choices.


## Diagram and Control flow
<img src="ppt\images used\flowchart2.JPG" title="ControlFlow" alt="Controlflow">


## Trello Board / Implementation Plan

If you would like to see development and pieces which were progressed etc during the process of application creation
you can check the trello board here: https://trello.com/b/3cINOPDM/password-app-t1a3 . It is public and anyone can view.

PLEASE NOTE sample pieces of the previously used template are still in place as i may have needed fresh 
or copy paste cards to produce more cards on documentation etc.

NOTE: if you would like to see the progress of each piece it is uploaded within the trello board part in ppt within the repository.



## Help Documentation
Help documentation which includes a set of instructions which accurately describe how to use and install the application.

Firstly steps with bash:
- Simply run the bash script (RunMe.sh)
- Input colours of choice when prmopted via the terminal (Suggest colours work some colours may not due to gem limitation.)
- If colours are the same you must restart the application.
- Navigate via menu items (by inputing the corrosponding numbers.)
- Each menu is very explanatory for user interaction, good luck!


If bash doesn't work:
(This is the bundled gems you will need bundle installed if you'd like to use this list. (gem install bundler))
source 'https://rubygems.org'
gem 'colorize'
gem 'ascii'
gem 'rspec'
gem 'passgen'
gem 'tty-progressbar'
gem 'bundler'
gem 'artii'

dependencies:
    artii (2.1.2)
    ascii (1.0.1)
    colorize (0.8.1)
    passgen (1.2.0)
    rspec (3.10.0)
    tty-progressbar (0.18.2)
    tty-cursor (0.7.1)
PLATFORMS
    x86_64-linux
BUNDLED WITH
    2.2.33

Colorize command:
gem install colorize

Ascii Command: - Not dependent.
gem install ascii

Passgen Command: - Not dependent.
gem install passgen

Rspec Command: 
gem install rspec

Bundler Command:
gem install bundler

Artii Command:
gem install artii

tty progressbar Command:
gem install tty-progressbar



Once you have downloaded the needed repository (This repository). 
You will need to either use the bash script given named "RunMe.sh"
or manually launch it via Index.rb.

Open your terminal:

Change directories to a directory that holds the repository:

cd LachlanBrasell_t1a3

Change directories to the source directory:
cd src

Once you are in the source directory, run the following command to execute the program:
./RunMe.sh


These are the gems that are required, an OS of windows was used to create this application as that might effect the run conditions
if you cannot run this application, as shown above this is ran and developed within the linux OS on a windows OS. If there are gem issues make sure to use "gem install "name of gem here"" and all current gems used
are the latest itterations.
- First step you would need to use "bundle install" in the command prompt once you have run the the code within a command prompt area.
- Install commands for each gem are above and should be followed if dependents.
- PLEASE MAKE SURE YOU'RE IN THE SRC DIRECTORY WHEN USING "bundle install" or it will NOT install the gems.
- After dependencies are installed make sure to run via "ruby index.rb"














