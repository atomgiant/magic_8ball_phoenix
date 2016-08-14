
# Elixir Magic8ball Phoenix App

## Overview

This repository contains a simple Magic8ball Phoenix app, which uses the [Magic 8ball API](https://github.com/atomgiant/magic_8ball_api).

This code is used to highlight elements of building APIs with Elixir using Plug as part of an Elixir talk given to the Triangle Elixir meetup.

## Setup

1. Install the dependencies

  ```
  mix deps.get
  ```

1. Start the Phoenix server

  ```
  iex -S phoenix.server
  ```

1. Open the app in your browser

  http://localhost:4000

1. Call the Magic8ball shake api to test it:

  ```
  curl -H 'Content-Type: application/json' "localhost:4000/magic8ball/api/shake"
  ```

  ```json
  {"answer":"My sources say no"}%
  ```

