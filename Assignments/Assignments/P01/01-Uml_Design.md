# UML Design 

# Overview

This project has three main classes:

### Candy
- Stores candy details name pric and quantity.
- Has a method toDict( to convert its data to a dictionary for saving.

# JSONDBManager
- Loads and saves data to a JSON file.
- Has methods: load() and save(data).

# CandyManager
- Manages a list of Candy objects.
- Uses JSONDBManager to load and save.
- Can add or remove candy and update the database.

# Relationships
- CandyManager uses JSONDBManager association.
- CandyManager has a list of Candy composition.

# Why This Design?
- Each class has one job .
- Easy to update.
