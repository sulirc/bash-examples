#!/bin/bash

for remote in `git branch -r `; do git branch --track $remote; done