#!/bin/bash


#!/bin/bash
which cowsay 1>/dev/null
which lolcat 1>/dev/null

# Function to get a random quote
get_random_quote() {
    quotes=("I iz in ur codez, writing bugz" "I can haz codez?" "Meow meow meow codez" "I'm feline good about this code" "Cats are like broken cables - they are always tangled up" "In a world full of cats and broken cables, be a cat who can fix cables")
    random_index=$(( $RANDOM % ${#quotes[@]} ))
    echo "${quotes[$random_index]}"
}

# Function to get a random animal for cowsay
get_random_animal() {
    animals=("beavis.zen" "bong" "bud-frogs" "bunny" "cheese" "cower" "daemon" "default" "dragon" "dragon-and-cow" "elephant" "elephant-in-snake" "eyes" "flaming-sheep" "ghostbusters" "head-in" "hellokitty" "kiss" "kitty" "koala" "luke-koala" "meow" "milk" "moofasa" "moose" "mutilated" "ren" "satanic" "sheep" "skeleton" "small" "sodomized" "stegosaurus" "stimpy" "supermilker" "surgery" "telebears" "three-eyes" "turkey" "turtle" "tux" "udder" "vader" "vader-koala" "www")
    random_index=$(( $RANDOM % ${#animals[@]} ))
    echo "${animals[$random_index]}"
}

# Get a random quote
quote=$(get_random_quote)

# Get a random animal for cowsay
animal=$(get_random_animal)

# Display the random animal with the random quote
cowsay -f "${animal}" -W 80 "${quote}" | lolcat 



