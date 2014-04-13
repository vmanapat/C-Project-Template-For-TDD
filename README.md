C Project Template for TDD
==========================
This is a template you can use to start a project in C using TDD. It uses the
Unity testing library as a git submodule.

To install run the following: 


```
$ mkdir template
$ git clone https://github.com/vmanapat/C-Project-Template-For-TDD.git template/
$ cd template
$ git submodule init
$ git submodule update
```


Explanation
-----------
I wasn't able to find a basic setup to get started in TDD in C so I made this. 
It differs from the examples provided by the Unity framework in that it 
provides a way to make a distributable binary that does not include any 
built-in tests. It also does not use rake in the build process 
(for better or worse).

To create your program, run:

`$ make dist`

To run tests: 

`$ make test`

TODO
-----------------
Eventually I'll provide a tutorial for adding new tests, and an explanation of
how everything fits together. 
