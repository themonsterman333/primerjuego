#!/bin/bash

GAME=primerjuego

rm $GAME.love

zip -j --no-dir-entries $GAME.love ../*

rm win32/$GAME.exe
cat ../love2d/love-0.10.2-win32/love.exe $GAME.love > $GAME-win32/$GAME.exe

zip $GAME-win32 $GAME-win32/*
