#!/bin/bash


read message < /home/thib/Documents/Cherry/pyector/src/reponse.txt

pico2wave -l fr-FR -w coucou.wav "$message"; aplay coucou.wav
