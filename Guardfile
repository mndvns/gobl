#!/usr/bin/env python
from livereload.task import Task
from livereload.compiler import shell

Task.add("**/*.jade", shell('make build'))
Task.add("*.styl", shell('make build'))
Task.add("**/*.ls", shell('make build'))
Task.add("Makefile", shell('make build'))
