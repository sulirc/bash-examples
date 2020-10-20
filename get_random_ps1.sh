#!/bin/
# 😺 😸 😹 😻 😼 😽 🙀 😿 😾

get_random_emoji() {
  local emojis=(🃏 💎 🎰 🌊 🙆‍♂️ 📺 🍑 🀄️ 🐙 🦄)
  local emojis_length=${#emojis[@]}

  local emoji=${emojis[$RANDOM % $emojis_length]}

  PS1="\n$emoji \w\n$ "

  return 0
}

get_random_emoji
# export PS1