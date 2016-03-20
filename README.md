[![Build Status](https://travis-ci.org/corajr/elm-fourspace.svg?branch=master)](https://travis-ci.org/corajr/elm-fourspace)

> elm-fourspace

## Overview

This library aims to provide a basic datatype and set of shaders for displaying
four-dimensional geometry (such as tesseracts).

The regular 4-D polytopes are the 5-, 8-, 16-, 24-, 120-, and 600-cell, available by pressing keys 1 through 6 in the [demo](http://corajr.github.io/elm-fourspace).

## Installation

Make sure the following are installed:

* NodeJs (and npm)
* Elm 0.16.0 (`npm install -g elm@0.16.0`)
* Compass (for SASS) (`gem update --system && gem install compass`)

## Usage

1. Serve locally, and watch file changes:

`gulp`

2. Prepare file for publishing (e.g. minify, and rev file names):

`gulp publish`

. Deploy to GitHub's pages (`gh-pages` branch of your repository):

`gulp deploy`

## Unit Tests

In order to view the tests on the browser Start elm reactor (elm-reactor) and navigate to http://0.0.0.0:8000/src/elm/TestRunner.elm

## License

MIT
