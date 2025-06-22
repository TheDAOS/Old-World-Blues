#!/bin/bash

generate_muggy_quotes() {
    muggy_quotes=(
        "Of course I'm obsessed! They made me this way! You think I don't know how crazy I sound? Of course I do! THEY PROGRAMMED ME TO KNOW THAT TOooo-arrr...",
        "Maybe you've seen some of those big imposing Securitrons with their lovely laser guns and rocket launchers and scary faces? I am not one of those.",
        "You... you really want to know about... me? No one ever asks about Muggy! You've made me so happy!",
        "One time, the Biological research station told me he dropped a mug down his processing chute. When I reached in, he......seeded me!",
        "Mugs, Mugs, Mugs. Mugs, Mugs, Mugs. Mug-a-mug. Mug-a-mug. Mugs! God, why can't I stop singing this fucking song?!",
        "I love mugs so much, I just might kill myself!",
        "While you were out, I spent six hours trying to reach a coffee cup up on a shelf. When I finally got it down I was so happy, I cried... I hate my life!",
        "Do you know how many coffee cups giant robot brains in jars use on a daily basis? NOT FUCKING MANY!",
        "Of course you don't. Why would you? You're not an INSANE robot obsessed with coffee cups. To you they're just worthless junk!",
        "Please, please, please tell me you stomped Dr. 0's brain into a fine paste! Did he squeal? did he beg? God, I hope he begged! Who's the flatware bitch now, O?!",
    )

    limit=$((RANDOM % 10 + 1))

    for ((i=0; i<limit; i++)); do
        random_index=$((RANDOM % ${#muggy_quotes[@]}))
        current_date=$(date +"%b %d %Y")
        echo "$current_date: ${muggy_quotes[$random_index]}" >> muggy.md
        git add --all
        git commit -m "$current_date"
    done

    echo "" >> muggy.md
}

# Call the function
generate_muggy_quotes