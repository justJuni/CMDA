#Jun Kim CMDA CS 3654 Fall 2015

#Inclass4 Part 2

"""What does the code below do? Run the code in iPython.
    For each line of code, add an explanation
    through a comment."""

#PART I
#Prints a String
print "I will now count my chickens:"
#Prints number of hens and roosters are through the equation
print "Hens", 25 + 30 / 6
print "Roosters", 100 - 25 * 3 % 4
#Prints the string
print "Now I will count the eggs:"
#Prints result of the equation which is the number of eggs
print 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
#Prints another string
print "Is it true that 3 + 2 < 5 - 7?"
#Prints result of the equation in the string
print 3 + 2 < 5 - 7
#Prints the result of the equation in the string
print "What is 3 + 2?", 3 + 2
print "What is 5 - 7?", 5 - 7
#Prints more string
print "Oh, that's why it's False."

print "How about some more."

#Prints the result of the equation in the string
print "Is it greater?", 5 > -2
print "Is it greater or equal?", 5 >= -2
print "Is it less or equal?", 5 <= -2

#PART II
#Creates string objects
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"
#Prints string and object values
print "Here are the days: ", days
print "Here are the months: ", months

#PART III
#Creates arrays objects with values and strings
the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#For loop used to print out the numbers in the_count
for number in the_count:
    print "This is count %d" % number

#For loop used to print out the fruits
for fruit in fruits:
    print "A fruit of type: %s" % fruit

#For loop to print number (%r) and string (%i)
# Use %r format when you don't know
#if the elements are strings or integers
for i in change:
    print "I got %r" % i

# we can also build lists, first start with an empty one
elements = []

# then use the range function to do 0 to 5 counts
for i in range(0, 6):
    print "Adding %d to the list." % i
    # append is a function that lists understand
    elements.append(i)

#For loop used to print values
for i in elements:
    print "Element was: %d" % i





#Lecture 14
#Intro to Python III


#Working with Lists

#Creates a string under name ten_things
ten_things = "Apples Oranges Crows Telephone Light Sugar"

#print "Wait there are not 10 things in that list. Let's fix that."

#Split method splits the strings into an array and places ' ' between the existing spaces.
#more_stuff creates another array of strings
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#while the length of the stuff array is not equal to 10
while len(stuff) != 10:
    next_one = more_stuff.pop()     #pops off of more_stuff's last item
    print "Adding: ", next_one      #prints the popped off item
    stuff.append(next_one)          #adds the popped item to stuff
    print "There are %d items now." % len(stuff)    #prints current number of items after the pop

#print the stuff list
print "The 'stuff' list: ", stuff

#Working with Dictionaries

#Creates structure by key
d1 = {'a': 'some value', 'b': [1, 2, 3, 4]} #can contain lists

#Access an element by key
print d1['a']

#Add an element (a pair key: value) to the dict
d1[7] = 'an integer'
print d1

#Check if the dict contains a certain key
print "b" in d1

#Delete a value

del d1[7]
print d1

#Use functions defined for dictionaries
print "Keys", d1.keys()
print "Values", d1.values()





#Inclass4 Part 3

"""What does the code below do? Run the code in iPython.
    For each line of code, add an explanation
    through a comment."""

#PART I

#Use the code from Lecture14.py to create and change the
#'stuff' list; Then comment on each line of the code below
#what it does, and what the result is

#Prints stuff defined in Lecture14.py
print stuff[1]                  #prints out stuff position 1
print stuff[-1]                 #prints out stuff position -1 which wraps around to last position
print stuff.pop()               #pops and prints stuff, which pops from the last position
print ' '.join(stuff)           #joins stuff with spaces
print '#'.join(stuff[3:5])      #joins stuff positions 3 and 5 with '#'

#PART II

#Create comments where marked with # to explain the code below

#Creates a list with keys of states
states = {
    'Oregon': 'OR',
    'Florida': 'FL',
    'California': 'CA',
    'New York': 'NY',
    'Michigan': 'MI'
}

#Creates a list with keys for cities
cities = {
    'CA': 'San Francisco',
    'MI': 'Detroit',
    'FL': 'Jacksonville'
}

#Adds to cities these items
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#prints ten dashes, and cities that matches the keys of the states
print '-' * 10
print "NY State has: ", cities['NY']
print "OR State has: ", cities['OR']

#prints ten dashes, and abbreviations of states by their keys
print '-' * 10
print "Michigan's abbreviation is: ", states['Michigan']
print "Florida's abbreviation is: ", states['Florida']

#prints ten dashes, and cities that matches the keys of the states' keys
print '-' * 10
print "Michigan has: ", cities[states['Michigan']]
print "Florida has: ", cities[states['Florida']]

#prints ten dashes, and all of the abbreviated state names and their abbreviations
print '-' * 10
for state, abbrev in states.items():
    print "%s is abbreviated %s" % (state, abbrev)

#prints ten dashes, and all of the abbreviations and their city names
print '-' * 10
for abbrev, city in cities.items():
    print "%s has the city %s" % (abbrev, city)

#prints ten dashes, and all of the state names, abbreviations, and cities by abbreviation keys
print '-' * 10
for state, abbrev in states.items():
    print "%s state is abbreviated %s and has city %s" % (
                                                          state, abbrev, cities[abbrev])