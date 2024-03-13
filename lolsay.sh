#!/bin/bash


#!/bin/bash
which cowsay 1>/dev/null
which lolcat 1>/dev/null

# Function to get a random quote
get_random_quote() {
    quotes=(
    "I'm not a regular sheep, I'm a RAM!"
    "Why did the chicken join the computer science class? To learn how to cross the 'byte' road!"
    "Ewe can't CTRL+ALT+DEL love!"
    "I'm not a regular cow, I'm an udderly fantastic coder!"
    "What do you call a pig who knows karate? A pork chop!" 
    "I iz in ur codez, writing bugz" 
    "I can haz codez?" 
    "Meow meow meow codez" 
    "I'm feline good about this code" 
    "Cats are like broken cables - they are always tangled up" 
    "In a world full of cats and broken cables, be a cat who can fix cables"
    "I'm feline fine-tune my purr-ipherals!"
    "I'm not a regular dog, I'm a bark-itecture expert!"
    "I'm not a regular bird, I'm a tweet-er developer!"
    "I'm not a regular fish, I'm a shell-scripting expert!"
    "I'm not a regular hamster, I'm a wheel-y good coder!"
        "I'm not a regular cat, I'm a purr-ogrammer!"
    "I'm not a regular dog, I'm a bark-end developer!"
    "I'm not a regular bird, I'm a tweet-er engineer!"
    "I'm not a regular fish, I'm a shell-scripting fish!"
    "I'm not a regular hamster, I'm a wheel-y good coder!"
    "I'm not a regular rabbit, I'm a hop-timisation expert!"
    "I'm not a regular squirrel, I'm a nut-works specialist!"
    "I'm not a regular owl, I'm a hootware engineer!"
    "I'm not a regular bee, I'm a buzz-iness analyst!"
    "I'm not a regular horse, I'm a neigh-tive language speaker!"
    "I'm not a regular cow, I'm an udderly fantastic developer!"
    "I'm not a regular pig, I'm a pork-grammer!"
    "I'm not a regular sheep, I'm a baa-ckend developer!"
    "I'm not a regular chicken, I'm a peck-nical support specialist!"
    "I'm not a regular duck, I'm a quack-tware engineer!"
    "I'm not a regular frog, I'm a ribbit-ual tester!"
    "I'm not a regular lizard, I'm a reptile database administrator!"
    "I'm not a regular monkey, I'm a banana-script developer!"
    "I'm not a regular elephant, I'm a trunk-line engineer!"
    "I'm not a regular bear, I'm a byte-sized coder!"
     "I'm not a regular key, I'm an ESC-ellent coder!"
    "I'm not a regular switch, I'm a terminal-ogical expert!"
    "I'm not a regular keycap, I'm a console artist!"
    "I'm not a regular layout, I'm a command-line designer!"
    "I'm not a regular RGB, I'm a terminal illuminator!"
    "I'm not a regular modifier key, I'm a console transformer!"
    "I'm not a regular tactile switch, I'm a terminal tactician!"
    "I'm not a regular key switch, I'm a console conductor!"
    "I'm not a regular key press, I'm a terminal typer!"
    "I'm not a regular key rollover, I'm a console acrobat!"
     "I'm not a regular keycap, I'm a terminal typographer!"
    "I'm not a regular layout, I'm a console composer!"
    "I'm not a regular switch, I'm a terminal toggler!"
    "I'm not a regular key, I'm a console commander!"
    "I'm not a regular RGB, I'm a terminal colorist!"
    "I'm not a regular modifier key, I'm a console magician!"
    "I'm not a regular tactile switch, I'm a terminal toucher!"
    "I'm not a regular key switch, I'm a console connector!"
    "I'm not a regular key press, I'm a terminal tapper!"
    "I'm not a regular key rollover, I'm a console juggler!"
    "I'm not a regular keycap, I'm a terminal text-artist!"
    "I'm not a regular layout, I'm a console coder!"
    "I'm not a regular switch, I'm a terminal technician!"
    "I'm not a regular key, I'm a console keymaster!"
    "I'm not a regular RGB, I'm a terminal rainbow maker!"
    "I'm not a regular modifier key, I'm a console sorcerer!"
    "I'm not a regular tactile switch, I'm a terminal touchpad!"
    "I'm not a regular key switch, I'm a console switchboard!"
    "I'm not a regular key press, I'm a terminal typist!"
    "I'm not a regular key rollover, I'm a console roller!"
        "I'm n07 a r3gul4r c47, I'm a purr-0gr4mm1ng ninja!"
    "I'm n07 a r3gul4r d0g, I'm a b4rk-3nd m4573rm1nd!"
    "I'm n07 a r3gul4r b1rd, I'm a 7w337-3r guru!"
    "I'm n07 a r3gul4r f1sh, I'm a 5h3ll-5cr1pt1ng w1z4rd!"
    "I'm n07 a r3gul4r h4m573r, I'm a wh33l-y 5k1ll3d h4ck3r!"
    "I'm n07 a r3gul4r r4bb17, I'm a h0p-71m1514710n 3xp3r7!"
    "I'm n07 a r3gul4r 5qu1rr3l, I'm a nu7-w0rk5 g3n1u5!"
    "I'm n07 a r3gul4r 0wl, I'm a h007w4r3 4rch173c7!"
    "I'm n07 a r3gul4r b33, I'm a buzz-1n355 7yc00n!"
    "I'm n07 a r3gul4r h0r53, I'm a n31gh-71v3 l4ngu4g3 m4573r!"
    "I'm n07 a r3gul4r c0w, I'm an udd3rly f4n74571c c0d3r!"
    "I'm n07 a r3gul4r p1g, I'm a p0rk-6r4mm1ng pr0d1gy!"
    "I'm n07 a r3gul4r 5h33p, I'm a b44-ck3nd g3n1u5!"
    "I'm n07 a r3gul4r ch1ck3n, I'm a p3ck-n1c4l 5upp0r7 guru!"
    "I'm n07 a r3gul4r duck, I'm a qu4ck-7w4r3 3xp3r7!"
    "I'm n07 a r3gul4r fr06, I'm a r1bb17-ual 73573r!"
    "I'm n07 a r3gul4r l1z4rd, I'm a r3p71l3 d474b453 m4573r!"
    "I'm n07 a r3gul4r m0nk3y, I'm a b4n4n4-5cr1p71ng m457r0!"
    "I'm n07 a r3gul4r 3l3ph4n7, I'm a 7runk-l1n3 3xp3r7!"
    "I'm n07 a r3gul4r b34r, I'm a by73-51z3d pr0d1gy!"
        "Why was the cat sitting on the computer? It wanted to keep an eye on the mouse!"
    "Why did the cat join the Red Cross? It wanted to be a first-aid kit!"
    "Why did the cat go to medical school? To become a purr-geon!"
        "Why did the chicken join the coding bootcamp? To learn how to cross the 'byte' road!"
    "Why did the chicken become a web developer? To create a peck-tacular website!"
    "Why did the chicken start a band? Because it had the drumsticks!"
    "Why did the cat invite the chicken over for dinner? It wanted a 'purr-fect' meal!"
    "Why did the cat sharpen its claws before meeting the chicken? It wanted to be 'purr-pared' for the feast!"
    "Why did the cat set up a trap for the chicken? It was 'purr-suing' a tasty snack!"
    "Why did the cat hide behind the bushes when the chicken walked by? It was 'purr-paring' for a surprise attack!"
    "Why did the cat order extra catnip before inviting the chicken over? It wanted to have a 'purr-ty' after the meal!"
    "Why did the cat practice its pounce before approaching the chicken? It wanted to ensure a 'purr-fect' catch!"
    "Why did the cat study the chicken's movements from afar? It was 'purr-fecting' its hunting strategy!"
    "Why did the cat wear a disguise to blend in with the surroundings when stalking the chicken? It was 'purr-tending' to be invisible!"
    "Why did the cat consult with other cats before planning to catch the chicken? It wanted to have a 'purr-fect' team strategy!"
    "Why did the cat sharpen its teeth before approaching the chicken? It wanted to be 'purr-pared' for a delicious meal!"
    )
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
cowsay -f "${animal}" -W 80 "${quote}" | lolcat -a -d 0.1



