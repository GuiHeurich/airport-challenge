# Airport Challenge

Makers Academy week 1 weekend challenge: create a software that controls the flow of planes in an airport.

## Who is the user and what do they do?

The user is an air traffic controller and they manage the flow of planes.

## What is the input and output?

## What is the acceptance criteria?

Implement the following user stories:

```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport

As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```

## What are possible edge/naive cases?

```
1. planes can only take off from airports they are in 2. planes that are already flying cannot take off and/or be in an airport
3. planes that are landed cannot land again and must be in an airport
```
