# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

  
# Event.create!(event_date: "2025-01-01", locale: "Evento Bandaoke TESTE", description: "Evento TESTE Rock Flowerz - brinque aqui!")
# Event.create!(event_date: "2025-05-29", locale: "Gaz Burning", description: "Rock Flowerz no Gaz - Quinta dia 29/Mai")


# EventSongQueue.destroy_all
# Song.destroy_all

Song.create!( name: "All My Life", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "8X G5
G5
All my life
I`ve been searching for something
Something never comes
Never leads to nothing
Nothing satisfies
But I`m getting close
Closer to the prize
At the end of the rope
All night long
I dream of the day
When it comes around
Then it`s taken away
Leaves me with the feeling
That I feel the most
The feeling comes to life
When I see your ghost
2x Gm  C5
Gm  C#5-
Gm                        C5
Come down don`t you resist
Gm                            C#5-
You have such a delicate wrist
Gm                       C5
And if I give it a twist
Gm                                     C#5-
Something to hold when I lose my grip
Gm                           C5
Will I find something in there
Gm                         C#5-
So give me just what I need
Gm                      C5
Another reason to bleed
Gm
One by one hidden up my sleeve
G5 [muted intro]
One by one hidden up my sleeve
Primeiro Refrão:
Eb                          G5
Hey don`t let it go to waste
I love it but I hate the taste
C5     F5         Bb5
Weight keeping me down
Eb                          G5
Hey don`t let it go to waste
I love it but I hate the taste
C5     F5         Bb5
Weight keeping me down
1x Gm  C5    Gm  C#5-
Gm                    C5
Will I find a believer
Gm                       C#5-
Another one who believes
Gm                     C5
Another one to deceive
Gm                             C#5-
Over and over down on my knees
Gm                  C5
If I get any closer
Gm                      C#5-
And if you open up wide
Gm                       C5
And if you let me inside
Gm
On and on I`ve got nothing to hide
G5 [muted intro]
On and on I`ve got nothing to hide
Eb                          G5
Hey don`t let it go to waste
I love it but I hate the taste
C5     F5         Bb5
Weight keeping me down
Eb                          G5
Hey don`t let it go to waste
I love it but I hate the taste
C5     F5         Bb5
Weight keeping me down
1x Gm  C5  Gm  C#5-
8x: G5 intro
G5
All my life
I`ve been searching for something
Something never comes
Never leads to nothing
Nothing satisfies
But I`m getting close
Closer to the prize
At the end of the rope
(ACORDE Gm)
All night long
I dream of the day
When it comes around
Then it`s taken away
Leaves me with the feeling
That I feel the most
The feeling comes to life
When I see your ghost
Done Done  on to the next one
3x
Done Done and I`m on to the next one
3x
Done Done and I`m on to the next one
1x
Done I`m Done
and I`m on to the next
4x intro G5
[scream]
Done Done and I`m on to the next one
Done I`m Done
and I`m on to the next one
Done Done and I`m on to the next one
Done I`m Done
and I`m on to the neeext
Eb                          G5
Hey don`t let it go to waste
I love it but I hate the taste
C5     F5         Bb5
Weight keeping me down
Eb                          G5
Hey don`t let it go to waste
I love it but I hate the taste
C5     F5         Bb5
Weight keeping me down
2x intro G5
[1x scream]
Done Done and I`m on to the next one
Done I`m Done
and I`m on to the next")

Song.create!( name: "Arlandria", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Riff   C#m pent.
Ain`t that the way it always starts.
A simple round of conversation.
Became a shameful equation.
I flipped you station to station.
Hey.     Don`t go and turn the other way.
Don`t say there`s nothin more to... say.
C`mon hear me out.
[bends 9a]
Hush, hush, settle down.
Button up, don`t make a sound.
Shame, shame, go away.
Come again some other day.
C#m                       A
You used to say I couldn`t save you enough,
E                       B             F#
So I`ve been savin` it up, I started savin it up.
C#m                         A
And when you said I couldn`t give you enough,
E                         B        C
I started giving you up, I started giving you up.
C#m           F#           A         B     C
You are not me, Arlandria, Arlandria.
C#m               F#          A
You and what army, Arlandria, Arlandria?
B          C				C#
Oh, God you gotta make it stop.
2x  F#4 F#3
[clean]
Chase all of those memories away
Save them all for another day
Don`t you remember it was rain that drowned you?
Wait!
I wanna see if you could
change
I wanna keep all I can
take
I feel much better now
Use me up, spit me out
Let me be your hand me down
Fame, fame, go away
Come again some other day
C#m                       A
You used to say I couldn`t save you enough,
E                       B         F#
So I`ve been savin` it up, I started savin it up.
C#m                         A
And when you said I couldn`t give you enough,
E                         B        C
I started giving you up, I started giving you up.
C#m           F#           A         B     C
You are not me, Arlandria, Arlandria.
C#m               F#          A
You and what army, Arlandria, Arlandria?
B          C
Oh, God you gotta make it stop.
C#m   A		E
My sweet Virginia
B      F#      C#m
I`m the same as I was in your arms
C#m  A             E
My sweet Virginia
B      C      C#m
I`m the same as I was in your heart
[clean so guit]
Shame, shame, go away
Come again some other day
Memories keep haunting me
Help me chase them all away
Hush now, settle down
Button up, don`t make a sound
Close your eyes, turn around
Help me burn this to the ground
[bends 9a]
Come now take the blame
That`s ok. I`ll play the game
I don`t care it`s all the same
Watch you all go up in flames
Use me up, spit me out
Let me be your hand me down
[screams]
Fame, fame, go away
Come again some other day
C#m                       A
You used to say I couldn`t save you enough,
E                       B         F#
So I`ve been savin` it up I started savinit up.
C#m                         A
And when you said I couldn`t give you enough,
E                         B        C
I started giving you up, I started giving you up.
C#m           F#           A         B     C
You are not me, Arlandria, Arlandria.
C#m               F#          A
You and what army, Arlandria, Arlandria?
B            C
Oh, God you gotta make it stop.
C#m               F#          A
My sweet Virginia
B        C
Oh, God you gotta make it stop.
C#m               F#          A
My sweet Virginia
B                C          [so vox]
Oh, God you gotta make it stop.")

Song.create!( name: "Rescued", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "[Intro Clean] E9M  C#7/Bb
E7M
It came in a flash
C#7/B
It came out of nowhere
E7M
It happened so fast
C#7/Bb [Dist]   A F# G# C#
And then it was over
A F# G# C#
Are you thinking
A F# G# C#
what I’m thinking?
B
Is this happening now?
A   F# G# C#      A   F# G# C#
Are you feeling what I’m feeling?
B
This is happening now
[Clean guit voz]
E
We’re all free to some degree
A riff
To dance under the lights
D      C#       Bm
I’m just waiting to be rescued
A
Bring me back to life
E
Kings and queens and in-betweens
A riff
We all deserve the right
D      C#       Bm
I’m just waiting to be rescued
D      C#       Bm
I’m just waiting to be rescued
Eb4
We’re all just waiting to be rescued
tonight
( E7M  C#7/B )
[Violao Intro]
E7M
I fell in a trap
C#7/B
My hеart’s getting colder
E7M
It’s coming on fast
C#7/Bb  [Dist] A   F# G# C#
It’s over my shouldеr
[Pré-Refrão]
A   F# G# C#      A   F# G# C#
Are you thinking what I’m thinking?
B       A
Is this happening now?
A   F# G# C#			A   F# G# C#
Are you feeling what I’m feeling?
B
This is happening now
[voz e guit]
E
We’re all free to some degree
A riff [DIST]
To dance under the lights
D      C#       Bm
I’m just waiting to be rescued
A
Bring me back to life
E
Kings and queens and in-betweens
A riff
We all deserve the right
D      C#       Bm
I’m just waiting to be rescued
D      C#       Bm
I’m just waiting to be rescued
Eb4
We’re all just waiting to be rescued
E  F#  G
Tonight
A              E  F#  G
To be rescued tonight
A                 E  F#  G
Rescue me tonight
A                 E  F#  G  A
Rescue me tonight
[[voz e violao]]
E
We’re all free to some degree
A
To dance under the lights
Bm
I’m just waiting to be rescued
A
Bring me back to life
E
Kings and queens and in-betweens
A riff [dist]
We all deserve the right
D      C#       Bm
I’m just waiting to be rescued
D      C#       Bm
I’m just waiting to be rescued
Eb4
We’re all just waiting to be rescued
E  F#  G
tonight
A            E  F#  G
To be rescued tonight
A            E  F#  G
Rescue me tonigheeeehhhht
A            E  F#  G
Rescue me tonigheeehhhht
[Final] A")

Song.create!( name: "The Pretender", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Introdução: Am9  F#m7(b5)  F7M
E|-----------7------------------------------|
B|--------10---10----------10---10---10-----|
G|------9---------9---------9----9----9-----|
D|---10-------------10-----10---10---10-----|
A|-0-------------------0-----------0--------|
Am9
Keep you in the dark
D/F#  F7M
You know they all   pretend
Am9
Keep you in the dark
D/F#  F7M
And so it all    began
[Solinho]
E|-0-0-0-0—0-0-5-
B|-5-5-7-5-8-5-5-
Am
Send in your skeletons
D/F#     F9
Sing as their bones go marching in     Again
Am
They need you buried deep
The secrets that you keep are
D/F#       F9        ( F5  G5 )
Ever ready, are you ready?
Am
I`m finished making sense
Done pleading ignorance
D/F#  F9   ( F5  G5 )
That whole defense
[Muted marcado]
Am
Spinning infinity
Boy, the wheel is spinning me
D/F#         F9
It`s never ending, never ending
[subida]
D8  E8  F#8 G5
Same old story
Primeiro Refrão:
Am
What if I say   I`m not like the others?
Am   B  C
What if I say
D/F#
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
I will never surrender?
Am
What if I say
I`m not like the others?
What if I say
D/F#
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
I will never surrender?
A5
[1 riff blues]
Am
In time, or so I`m told
D/F#
I`m just another soul for sale
F9    ( F5  G5 )
Oh, well
[Muted marcado]
Am
The page is out of print
We are not permanent
D/F#      F9
We`re temporary, temporary
[subida]
D8  E8  F#8 G5
Same old story
Am
What if I say
I`m not like the others?
Am   B  C
What if I say
D/F#
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
I will never surrender?
Am
What if I say
I`m not like the others?
Am   B  C
What if I say
D/F#
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
(Riff 1)
I will never surrender?
[subida]
D8  E8  F#8 G5
[riff blues guit]
I`m the voice inside your head
You refuse to hear
I`m the face that you have to face
Mirrorin` your stare
I`m what`s left, I`m what`s right
I`m the enemy
I`m the hand that`ll take you down
Bring you to your knees
So, who are you? Yeah, who are you?
Yeah, who are you? Yeah, who are you?
[CLEAN]
Am9                                F#m7(b5)
Keep you in the dark, you know they all
F7M
Pretend
Am
What if I say
I`m not like the others?
Am   B  C
What if I say
F#m7(b5)
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
I will never surrender?
Am
What if I say
I`m not like the others?
Am   B  C
What if I say
F#m7(b5)
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
I will never surrender?
Am
What if I say    (keep YOU…)
I`m not like the others
Am   B  C
What if I say
F#m7(b5)
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
I will never surrender?
Am
What if I say I`m not like the others?
Am   B  C
What if I say
F#m7(b5)
I`m not just another one of your plays?
You`re the pretender
F7M
What if I say that
D8  E8  F#8 G5
I will never surrender?
( A5 )  [riff blues guit]
So, who are you?
Yeah, who are you?
Yeah, who are you?")

Song.create!( name: "Walk", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "A5                  E
A million miles away
Bm
Your signal in the distance
D5
To whom it may concern
A5                  E
I think I lost my way
Bm
Getting good at starting over
D5
Every time that I return
A5                       E
I`m learning to walk again
Bm
I believe I`ve waited long enough
D5
Where do I begin?
A5                       E
I`m learning to talk again
Bm
Can`t you see I`ve waited long enough
D5
Where do I begin?
A5                     E
Do you remember the day
Bm
We built these paper mountains
D5
And sat and watched them burn
A5                    E
I think I found my place
Bm
Can`t you feel it growing stronger
D5  E  F   G
Little conqueror
A5                       E
I`m learning to walk again
Bm
I believe I`ve waited long enough
D5  E  F  D
Where do I begin?
A5                       E
I`m learning to talk again
Bm
I believe I`ve waited long enough
D5  E  F  G
Where do I begin?
A5
Now
E
For the very first time
F#5
Don`t you pay no lie
D5     Dm
Set me free again
A5
You keep alive a moment at a time
But still inside a whisper to a riot
E
To sacrifice but knowing to survive
The first to find another state of mind
F#5
I`m on my knees, I`m waiting for a sign
D5					Dm
Forever, whenever   I never wanna die
A5
I never wanna die
A5
I never wanna die
A5
I`m on my knees
A5
Never wanna die
E
Dancing on my grave
E
Running through the fight
E
Forever, whenever
E
Never wanna die
F#5
Never wanna leave
F#5
Never say goodbye
D5
Forever, whenever
Dm                    A5
Forever, whenever
A5                       E
I`m learning to walk again
Bm
I believe I`ve waited long enough
D5  E  F   D5
Where do I begin?
A5                       E
I`m learning to talk again
Bm
Can`t you see I`ve waited long enough
A G F# G
Where do I begin?
A5                      E
I`m learning to walk again
Bm
I believe I`ve waited long enough
A G F# G
A5                       E
I`m learning to talk again
Bm
Can`t you see I`ve waited long enough
2x A G F# G A
A A")

Song.create!( name: "Best of you", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Bm7
I`ve got another confession to make
G5(9)
I`m your fool
Bm7
Everyone`s got their chains to break
G5(9)
Holding you
A4
Were you born to resist
G5(9)
Or be abused?
[Refrão]
Bm7
Is someone getting the best
A4                G5(9)
The best, the best, the best of you?
Bm7
Is someone getting the best
A4                G5(9)
The best, the best, the best of you?
Bm7             A4             G5(9)
Or are you gone and on to someone new?
[dist]
[dist]                      Bm7
I needed somewhere to hang my head
G5(9)
Without your noose
Bm7
You gave me something that I didn`t have
G5(9)
But had no use
A4
I was too weak to give in
G5(9)
Too strong to lose
Bm7
My heart is under arrest again
G5(9)
But I break loose
Bm7
My head is giving me life or death
G5(9)
But I can`t choose
A4
I swear I`ll never give in
G5(9)
I refuse
[Refrão]
Bm7
Is someone getting the best
A4
The best, the best,
G5(9)  E
the best of you?
Bm7
Is someone getting the best
A4
The best, the best,
G5(9)  E
the best of you?
[Ponte]
Bm7
Has someone taken your faith?
A4
It`s real, the pain you feel?
G5(9)
Your trust?
E
You must confess
[Refrão]
Bm7
Is someone getting the best
A4
The best, the best,
G5(9)  E
the best of you?
[Solo] Bm7  G5(9)
[Tab - Solo]
F#   E  D#
Oh, ooh
G#   F#  E
Oh, ooh
F#   E  D#
Oh, ooh
G#   F#  E
Oh, ooh
[Ponte]
Bm7
Has someone taken your faith?
A4
It`s real, the pain you feel?
G5(9)                E
The life, the love you`d die to heal
Bm7
The hope that starts
A4
The broken heart
G5(9)             E
Your trust, you must confess
[Refrão]
Bm7
Is someone getting the best
B11/D#
The best, the best,
D5  E
The best of you?
Bm7
Is someone getting the best
B11/D#
The best, the best,
D5  E
The best of you?
[Clean]
Bm7
I`ve got a another confession, my friend
G5(9)
I`m no fool
Bm7
I`m getting tired of starting again
G5(9)
Somewhere new
[dist A4]
Were you born to resist?
G5(9)
Or be abused?
A4
I swear I`ll never give in
G5(9)  [break]
I refuse
Bm7
Is someone getting the best
A4
The best, the best,
G5(9)  E
the best of you?
Bm7
Is someone getting the best
A4
The best, the best,
G5(9)  E
the best of you?
[Ponte]
Bm7
Has someone taken your faith?
B11/C#
It`s real, the pain you feel?
D5
Your trust?
E
You must confess
[Refrão]
Bm7
Is someone getting the best
A4
The best, the best,
G5(9)  E
the best of you?
[Final] Bm7   8x")

Song.create!( name: "Times Like These", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Tom:
[Intro]
D/a [RIFF D 2x]      CLEAN
[ RIFF solo 7 3x]        dist
D/a [RIFF D 2x]
D                 Am
I, I`m a one way motorway
C
I`m a road that drives away
Em
Then follows you back home
D/a [RIFF D 1x]
D                       Am
I, I`m a street light shining
C
I`m a white light blinding bright
Em
Burning off and on
D/a [RIFF D 2x]
C
It`s times like these
Em             D
You learn to live again
C
It`s times like these
Em             D
You give and give again
C
It`s times like these
Em             D
You learn to love again
C
It`s times like these
Em
Time and time again
D/a [RIFF D 2x]
D                 Am
I, I`m a new day rising
C
I`m a brand new sky that
Em
Hang the stars upon tonight
D/a [RIFF D 1x]
D                  Am
I, I`m a little divided
C
Do I stay or run away
Em
And leave it all behind?
D/a [RIFF D 2x]   haaahaahaaaã
[Refrão]
C
It`s times like these
Em             D
You learn to live again
C
It`s times like these
Em             D
You give and give again
C
It`s times like these
Em             D
You learn to love again
C
It`s times like these
Em
Time and time again
[ RIFF solo 7 12x]        dist
[ RIFF solo 7 4x]        dist
[Refrão Final]
C
It`s times like these
Em             D
You learn to live again
C
It`s times like these
Em             D
You give and give again
C
It`s times like these
Em             D
You learn to love again
C
It`s times like these
Em             D
Time and time again
[vox alta]
C
It`s times like these
Em             D
You learn to live again
C
It`s times like these
Em             D
You give and give again
C
It`s times like these
Em             D
You learn to love again
C
It`s times like these
Em             D
Time and time again
[clean]
C
It`s times like these
Em             D
You learn to live again
C
It`s times like these
Em             D
You give and give again
C
It`s times like these
Em             D
You learn to love again
C
It`s times like these
Em             D
Time and time again
[Final] C")

Song.create!( name: "Breakout", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Tom:
B           E             C#m            C
You make me dizzy running circles in my head
B          E         C#m  C
One of these days I`ll chase you down
B                     E
Well look who`s going crazy now
C#m             C
We`re face to face my friend
B   E
Better get out
C#m  C
Better get out
B  G
You know you make me break out
B   E
Make me break out
G                      A  E     A
I don`t want to look like that
G                      A  E     A
I don`t want to look like that
B  G
You know you make me break out
B   E
Make me break out
G                      A  E     A
I don`t want to look like that
G                      A  E     A
I don`t want to look like that
B
You know you make me break out
[inter]
B
You can see this on my face
Em
It`s all for you
B
The more and more I take
Em
I break right through
G
Therapy still scares me
E
Putting me on my back again
B        E              C#m                C
I may be crazy, little frayed around the ends
B          E        C#m C
One of these days I`ll phase you out
B                         E
Burn it in the blast off, burn it in the blast off
C#m               C
Watching me crawl away
B  E         C#m  C [BREAK}
Try to get out, try to get out
B  G
You know you make me break out
B  E
Make me break out
G                      A  E     A
I don`t want to look like that
G                      A  E     A
I don`t want to look like that
B  G
You know you make me break out
B   E
Make me break out
G                      A  E     A
I don`t want to look like that
G                      A  E     A
I don`t want to look like that ye ye
G                      A  E     A
I don`t want to look like that
[riff casa 7]
[scream]
B A C#m E E
Break OUT
B A C#m E E
Break OUT
B A C#m E E
Break OUT
B A C#m E E
Break OUT
4x
B  A  C#m  E E
B  G
You know you make me break out
B  E
Make me break out
G                      A  E     A
I don`t want to look like that
G                      A  E     A
I don`t want to look like that
B  G
You know you make me break out
B   E
Make me break out
G                       A  E     A
I don`t want to look like that
G                       A  E     A
I don`t want to look like that ye ye
G                        A  E     A
I don`t want to look like that
G                        A  E     A
I don`t want to look like that
B A C#m E E
You know you make me break out
B A C#m E E
Make me break out
B A C#m E E
Make me break out
[fim] B A C#m E E")

Song.create!( name: "This is a call", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "E
visiting is pretty
E
visiting is good
G                        A    E
seems that all they ever wanted was a brother
G G      E
this can be a secret
E
we can keep it good
G                       A  E
even all the ever wanting have a problem
[Chorus]
F#       A
this is a call to all my
E        F#
past resignations
A             E         E E  G
this is a call to all
[Verse]
E
fingernails are pretty
E
fingernails are good
G                       A  E
seems that all they ever wanted was a marking
GG    E
them balloons are pretty
E
big and say they should
G
ever fall to ground
A  E
call the magic marker
[Chorus]
F#       A
this is a call to all my
E         F#
past resignations
A           E
this is a call to all
F#         A
this is a call to all my
E         F#
past resignations
A
Oh yeah
[ 6 x E E9+   G A A# B   D  G ]
[Verse]
E
minicyn is pretty
E
minicyn is good
G                                       A     E
seems that all the cysts and mollusks tend to barter
G G    E
ritalin is easy
E
ritalin is good
G
even all the ones
A     E
who watered down the daughter
[Chorus]
F#       A
this is a call to all my
E         F#
past resignations
A           E
this is a call to all
F#         A
this is a call to all my
E         F#
past resignations
A
Oh FUCK
[ 6 x E E9+   G A A# B   D  G ]
[Só GUIT clean]
E
fingernails are pretty
E
fingernails are good
G                        A  E
seems that all they ever wanted was a marking
G  contra
[Volta banda]
E
them balloons are pretty
E
big and say they should
G
ever fall to ground
A    E
call the magic marker
[Chorus]
F#       A
this is a call to all my
E         F#
past resignations
A           E
this is a call to all
F#         A
this is a call to all my
E         F#
past resignations
A
[yaaaahhh SCream]
[4x E E9+   G A A# B   D  G ]
[4x   B5 Bdim B5  D dim
0
(riff corda 6x   E solta, 10, 9)
G    E E E G    E E E G    E E E G   A  E
Thanks for coming
Thanks for letting us live our little Rockn Roll Fantasy")

Song.create!( name: "Rope", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "2x  D5  A5  F5    (bass on 5th - delay )
2x com riff
Riff (e 750 a 750)
Staccato 2x  Bm   F#m   D7
This indecision got me climbing up the walls
I`ve been cheating gravity
and waiting on the fall
How did this come over me,
I thought I was above it all
Our hope`s gone up in smoke, swallow your crown
Choke! On a kiss,
I thought I`d save my breath for you
Choke! On a kiss,
I thought I`d save my breath for you
Refrão
G            Em              Bm               A
Give me some rope I`m coming loose, I`m hanging on you
G            Em              Bm               A
Give me some rope I`m coming loose, I`m pulling for you now
G            Em              Bm               A
Give me some rope I`m coming out of my head, into the  clear   (riff country do# cordas b e g solt)
G     Ab5+   A     Bb5+   Bm
When you    go   I   come    loose
[SOLO]
2 45 78 (10 12) (15 12)
These premonitions got me crying up a storm
Leave your condition, this position does no harm
Choke! On a kiss, I thought I`d save my breath for you
Choke! On a kiss, I thought I`d save my breath for you
Refrão
G            Em              Bm               A
Give me some rope I`m coming loose, I`m hanging on you
G            Em              Bm               A
Give me some rope I`m coming loose, I`m pulling for you now
G            Em              Bm               A
Give me some rope I`m coming out of my head, into the
clear
G     Ab   A     Bb    Bm
When you    go   I   come    loose
BRIDGE  B  A B  D/A  E/B
G  A  E E
G            Em              Bm               A
Give me some rope I`m coming loose,
I`m hanging on you
G            Em              Bm               A
Give me some rope I`m coming loose,
I`m pulling for you now
Give me some rope I`m coming through,
I`m counting on  you
G            Em              Bm               A
Give me some rope I`m coming out of my head, into the
clear
G     Ab   A     Bb    Bm
When you    go   I   come    loose")

Song.create!( name: "My Hero", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Tom:
4x BATERA
[Riff Solinho 2X]
[Intro] E  C#2  E  C#2
E  C#2  E  C#2
( F#m  A2 )
E       C#2            E         C#2
Too alarming now to talk about
E             C#2                E          C#2
Take those pictures down and shake it out
E           C#2         E       C#2
Truth or consequence say it aloud
E          C#2       E        C#2
Use that evidence race it around
[Refrão]
A2
There goes my hero
E
Watch him as he goes
A2
There goes my hero
E
He`s ordinary
A2
There goes my hero
E
Watch him as he goes
A2
There goes my hero
E
He`s ordinary
( F#m  A2 )
[Riff Solinho bend 1X]
E            C#2           E        C#2
Don`t the best of them breathe it out
E            C#2          E        C#2
While the rest of them peter out
E           C#2         E       C#2
Truth or consequence say it aloud
E          C#2       E        C#2
Use that evidence race it around
[Refrão]
A2
There goes my hero
E
Watch him as he goes
A2
There goes my hero
E
He`s ordinary
A2
There goes my hero
E
Watch him as he goes
A2
There goes my hero
E
He`s ordinary
( F#m  A2 )
[Solo] [Riff Solinho bend 4X]
4X batera
4X [Bend]
[Ponte]
E        C#2
Kudos my hero
E           C#2
Leaving all the best
E           C#2
You know my hero
E             C#2
The one that`s on
[Refrão 2X]
A2
There goes my hero
E
Watch him as he goes
A2
There goes my hero
E
He`s ordinary
A2
There goes my hero
E
Watch him as he goes
A2
There goes my hero
E
He`s ordinary
[Refrão 2X]
[Final] F#m  A2")

Song.create!( name: "Aurora", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "noCLK
Guitar Effects:
A (6 bars)
With Bass:
A F#m E/G# E E A A F#m E/G#
[Verse 1]
A                        F#m E/G#
You believe   there`s something else
A                        F#m E/G#
To relieve    your emptiness
A
And you dream   about yourself
F#m 			E/G#
And you bleed and     breathe the air
A                       F#m E/G#
And it`s on and   on and on and on
A
I just kinda died for you
F#m 			E/G#
You just kinda    stared at me
A
We will always have that chance
F#m 			E/G#
We can do this    one more time
[Chorus 1]
A    E/G#             F#m A
Hell yeah      I remember auro--ra
A    E/G#             F#m A
Hell yeah      I remember auro--ra
E/G#     D
All this time
A    E/G#             F#m A
Hell yeah      I remember auro--ra
D       A
Take me now we can
D            A
spin the sun around
D
And the stars
A
will all come out
F
Then we`ll turn
G         A
and come back down
F        G         A   F#m E/G# A A F#m E/G#
Turn and come back down
[Intro 2x rodadas]
A sweep                   F#m E/G#
You believe there`s somewhere else
A                F#m E/G#
Where it`s easier than this
A sweep
And you see  outside yourself
F#m E/G#
And you buy the  hole you`ll fill
A
and still it`s on and
F#m E/G#
on and on and on
[Chorus 2]
A    E/G#             F#m A
Hell yeah      I remember auro--ra
A    E/G#             F#m A
Hell yeah      I remember auro--ra
E/G#     D
All this time
A    E/G#             F#m A
Hell yeah      I remember auro--ra
D       A
Take me now we can
D            A
spin the sun around
D
And the stars
A
will all come out
F
Then we`ll turn
G         A
and come back down
F        G         A
Turn and come back down
[Bridge]
F#m
On and on and on
E
aurora wait for
F
everyone Wait till
G     A
the last one`s done
F#m
On and on and on
E
aurora wait for
everyone
F
Wait till the
G     A
last one`s done
[Chorus 3]
D       A
Take me now we can
D            A
spin the sun around
D
And the stars
A
will all come out
F
Then we`ll turn
G         A
and come back down
F        G         A
Turn and come back down
F        G         A
Turn and come back down
F        G         A
Turn and come back down
(Guitar intro 4X)
1X With Bass:
A   F#m     E/G# Bm  A
[Outro x7]
A		   F#m			E/G#   Bm       A
On and on   and on and on   and
(x4 rodadas de 2 comp)
A4  A9
(x4 rodadas de 2 comp)
A4  A9     (solinho lá)
(x4 rodadas fim no E)
Intro junto com bateria")

Song.create!( name: "Walking After You", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "E
[Intro]
E|---0---2---4---0---5---4---2---0---4---|
B|-----0---0---0---0---0---0---0---0-----|
G|---1---2---4---1---6---4---2---1---4---|
E         E/G#            A5             Bbº  A5
Tonight i`m tangled in my blanket of clouds
B7           E
Dreaming aloud
E/G#           A5         Bbº
Things just won`t do without you matter of fact
A5  B7           E
Oh oh ohh,I`m on your back
E/G#             A5  Bbº     A5
I`m on your back,      Oh oh ohh
B7           E[[Intro]]
I`m on your back
E           E/G#            A5          Bbº  A A9
If you`d accept surrender, give up some more
B7                  E
Weren`t you adored
E/G#            A5           Bbº
I cannot be without you, matter of fact
A   B7              E[Intro]
Oh oh ohh,I`m on your back
F#
Uhhhhuuhhhh uuhhh uhh
A5
If you walk out on me
E
Im walking after you
F#
Uhhhhuuhhhh uuhhh uhh
A5
If you walk out on me
E
Im walking after          yooouuu
C#m                A
Another heart is cracked    in two
F#
I`m on your back   ahh haaammm
[Intro 3x]  Bbº…( E  C#m  A9  Bbº )
E           E/G#            A5           Bbº  A5
I cannot be without you, matter of fact
B7              E
I`m on your back
E/G#             A5  Bbº  A5
I`m on your back,   Oh oh ohh
B7               E[Intro]
I`m on your back
F#
Uhhhhuuhhhh uuhhh uhh
A5
If you walk out on me
E
Im walking after you
F#
Uhhhhuuhhhh uuhhh uhh
A5
If you walk out on me
E
Im walking after you
F#
Uhhhhuuhhhh uuhhh uhh
A5
If you walk out on me
E[intro Final]
Im walking after     YOU")

Song.create!( name: "Sky is a neighborhood", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "[Intro dedilha] Em  B  G  A  C  Em  A  G
Em          B
The sky is a neighborhood
G         A
So keep it down
C                  Em
The heart is a storybook
A  						riff G
A star burned out
Em          B
The sky is a neighborhood
G        A
Don`t make a sound
C               Em
Lights coming up ahead
A
Don`t look now
[Pré-Refrão]
[descida solo]
G       Em          B  G  A
The sky is a neighborhood
C           Em
The sky is a neighborhood
A                [riff G]
Don`t look now
[Refrão]
Em           B                    G
Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow
C
Bangin` on the ceiling
Em                      A            [riff G]
Bangin` on the ceiling, keep it down
Em           B                    G
Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow
C
Bangin` on the ceiling
Em                      A           G
Bangin` on the ceiling, keep it down
[riff trip]
[clean]
Em        B
Mind is a battlefield
G              A
All hope is gone
C                          Em
Trouble to the right and left
A					  [riff G]
Whose side you`re on?
G              Em       B
Thoughts like a minefield
G              A
I`m a ticking bomb
C                   Em
Maybe you should watch your step
A			   [riff G]
Don`t get lost
[descida solinho]
G       Em          B  G  A
The sky is a neighborhood
C           Em
The sky is a neighborhood
A
Don`t get lost
[Refrão]
Em           B                    G
Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow
C
Bangin` on the ceiling
Em                      A            riff G
Bangin` on the ceiling, keep it down
Em           B                    G
Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow
C
Bangin` on the ceiling
Em                      A
Bangin` on the ceiling, keep it down
[SOLO FRASE]
C       Em  Bb  A
The sky is a neighborhood
( G  Gb  F )    [Break]
Em              B        G             A
Heart is a storybook, a star burned out
C                  Em    A
Someone coming up ahead, don`t look now
[BATERA]
Em           B                    G
Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow
C
Bangin` on the ceiling
Em                      A            [riff G]
Bangin` on the ceiling, keep it down
Em           B                    G
Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow
C
Bangin` on the ceiling
Em                      A            G
Bangin` on the ceiling, keep it down
Em
The sky is a neighborhood
B                    G
(Oh my dear, heaven is a big bang now
A
Gotta get to sleep somehow)
C
The sky is a neighborhood
(Bangin` on the ceiling
Em                      A
Bangin` on the ceiling, keep it down)
[Descida solinho]
( C  Em  Bb  A )
G  Gb       F
The sky is a neighborhood")

Song.create!( name: "Learn to Fly", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Tom:
[Intro] B  F#m  E  B  F#m  E
B                      F#m
Run and tell all of the angels
E
This could take all night
B                     F#m                 E
Think I need a devil to help me get things right
B                   F#m
Hook me up a new evolution
E
Cause this one is a lie
B                     F#m
We sat around laughing,and watching
E
the last one die
[Refrão]
B                     F#m
Now looking to the sky to save me
E
Looking for a sign of life
B                        F#m              E
Looking for something to help me burn out bright
B                      F#m
I`m looking for a complication
E
Looking cause I`m tired of trying
G                A
Make my way back home when I learn to fly high
Intro ( B  F#m  E )
( B  F#m  E )
B                      F#m
Think I`m done nursing the patience
E
It could wait one night
B                        F#m              E
I`d Give it all away if you give me one last try
B               F#m             E
We live happily ever trapped if you just
save my life
B                            F#m               E
Run and tell the angels that everything`s alright
[Refrão]
B                      F#m
I`m looking to the sky to save me
E
Looking for a sign of light
B                        F#m             E
Looking for something to help me burn out bright
B                  F#m
I`m looking for a complication
E
Looking cause I`m tired of trying
G                A                    E
Make my way back home when I learn to fly high
G                A                    B
Make my way back home when I learn to fly
G               D                   E
....along with me I can`t quite make it alone
G                A            B
Try to make this life my own … FLY
G               D                   E
...along with me I can`t quite make it alone
G                 A
Try to make this life my own
B                     F#m
I`m looking to the sky to save me
E
Looking for a sign of life
B                        F#m             E
Looking for something to help me burn out bright
B                  F#m
I`m looking for a complication
E
Looking cause I`m tired of trying
G                A
Make my way back home when I learn to
B                     F#m
Looking to the sky to save me
E
Looking for a sign of life
B                        F#m             E
Looking for something to help me burn out bright
B                  F#m
I`m looking for a complication
E
Looking cause I`m tired of trying
G                A                    E
Make my way back home when I learn to fly
G                A                    E
Make my way back home when I learn to fly
G                A
Make my way back home when I learn to, to, to
B   B   B   B     B E F#m")

Song.create!( name: "These days", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "D|---------11----
A|----0----------
E|------12----12-
D|----------0—---
A|---12----------
E|------12----12—
One of these days the ground
Will drop out from beneath your feet
One of these days your heart
Will stop and play its final beat
[2 comp]
One of these days the clocks
Will stop and time won`t mean a thing
One of these days their bombs
Will drop and silence everything
C          G
But it`s alright
D          A
Yet it`s alright
1 2  [break]
C             G         G
I said it`s alright
[DIST]
A5
Easy for you to say
E5
Your heart has never been broken
C5
Your pride has never been stolen
D5
Not yet not yet
A5
One of these days
E5
I bet your heart`ll be broken
C5
I bet your pride`ll be stolen
D5
I`ll bet i`ll bet i`ll bet i`ll bet
A        A4/E
One of these days
A        A4/E
One of these days
[Part A direto]
One of these days your eyes
Will close and pray you`ll disappear
One of these days you
Will forget to hope and learn to fear
C          G
But it`s alright
D          A
Yet it`s alright
C             G
I said it`s alright
[dist]
A5
Easy for you to say
E5
Your heart has never been broken
C5
Your pride has never been stolen
D5
Not yet not yet
A5
One of these days
E5
I bet your heart`ll be broken
C5
I bet your pride`ll be stolen
D5
I`ll bet i`ll bet i`ll bet i`ll bet
A5        D/A
One of these days
A5        D/A
One of these days
C5         G5
But it`s alright
D5         A5
Yet it`s alright
C5            G5
I said it`s alright
D5         A5
Yet it`s alright
C5               G5
Don`t say it`s alright
D5               A5
Don`t say it`s alright
1 2 3 4 [break]
C5               G5         G5
Don`t say it`s alright
[Intro]
[Part A]
One of these days your heart
Will stop and play it`s final beat
C
But it`s alright
[Refrão]
A5
Easy for you to say
E5
Your heart has never been broken
C5
Your pride has never been stolen
D5
Not yet not yet
A5
One of these days
E5
I bet your heart`ll be broken
C5
I bet your pride`ll be stolen
D5
I`ll bet i`ll bet i`ll bet i`ll bet
A        A4
One of these days
A         A4
One of these days
A         A4
One of these days
[Final]  A5  A4")

Song.create!( name: "Big Me", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "[sol agudo na ponta]
[Intro]  C  Am  G  F
C  Am  G  F
C
When I talk about it
Am
It carries on
G             F
Reasons only knew
C
When I talk about it
Am         G
Aries or treasons
F
All renew
E            F
Big me to talk about it
C                  C7
I could stand to prove
E            F
If we can get around it
F                  G
I know that it`s true
C
When I talked about it
Am
Carried on
G             F
Reasons only knew
C  G  F   C   G
But it`s you I fell into
C
When I talked about it
Am
Carried on
G             F
Reasons only knew
C
When I talk about it
Am         G
Aries or treasons
F
All renew
E            F
Big me to talk about it
C                  C7
I could stand to prove
E            F
If we can get around it
F                  G
I know that it`s true
C
Well I talked about it
Am
Put it on
G             F
Never was it true
C  G  F   C   G
But it`s you i fell into
C
Well I talked about it
Am
Put it on
G             F
Never was it true
C  G  F       C
But it`s you i fell into
G  F       C
I fell into
G  F   C    C7
I fell into")

Song.create!( name: "Generator", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "noCLK
[RIFF INTRO]
A                         E
Lately I`m getting better
F#m
Wish I could stay sick with you
D                                       Dm
But there`s too many egos left to bruise
A                                  E
Call it sin or call it what ever
F#
Eating deep inside of you
D                                   [RIFF CURTA]
Well if were me it`s all I`d ever do
&
[RIFF INTRO]
A                       E
Stealing now and forever
F#
I`ll steal something good for you
D                                   [RIFF CURTA]
But the criminal in me is no-one new
A                            E
Til you find somet`ng better
F#
When there`s nothing left to use
D                             [RIFF CURTA]
And everything starts going down on you
A
I`m the generator,
F
Firing whenever you quit,
F#m
Yeah whatever it is,
G8  A  B  C#
You go out and it`s on,
D
Yeah can`t you hear my motor heart,
Dm
You`re the one that started it.
[RIFF INTRO]
A                       E
Standing out on a tether
F#m
Swing me around I`ll spin your news
D                                 [RIFF CURTA]
You let it down I`ll hang around with you
A                            E
Til you find somet`ng better
F#							  E
And there`s no-one left to use
D                                   [RIFF CURTA]
And everyone keeps going down on you
A
I`m the generator,
F
Firing whenever you quit,
F#m
Yeah whatever it is,
G8  A  B  C#
You go out and it`s on,
D
Yeah can`t you hear my motor heart, \
Dm
You`re the one that started it.
4x   E
4x    E  D C# B  A G#    A B C#    E
A
I`m the generator,
F
Firing whenever you quit,
F#m
Yeah whatever it is,
G8  A  B  C#
You go out and it`s on,
D
Yeah can`t you hear my motor heart,
Dm
You`re the one that started it.
A
I`m the generator, I`m the generator,
F
I`m the generator, I`m the generator,
F#m
I`m the generator, I`m the generator,
G8  A  B  C#
You are
D
Yeah can`t you hear my motor heart,
Dm
You`re the one that started it.
[RIFF INTRO diff ]
Fim> E A…A")

Song.create!( name: "Monkey Wrnch [ DRP]", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "Tom:   (DROP D)
[intro guit]
D|-7/9/7/9
A|-5/7/5/7
B                         E     (Riff 1)
What have we done with innocence
B                            E     (Riff 1)
it disappeared with time and never made much sense
B                     E   (Riff 1)
adolescent resident
B                        E           (Riff 1)
wasting another night on planning my revenge
E        (Riff 1)
one in ten,
E        (Riff 1)
one in ten,
E        (Riff 1)
one in ten
B             G#m
Don`t wanna be your monkey wrench
B             G#m
one more indecent accident
B             G#m
I`d rather leave then suffer this
B             G#m
I`ll never be your monkey wrench
[intro guit]
B                           E
Always time to make amends
B                                      E
what do you do when all your enemies are friends
B                              E
now and then Ill try to bend
B                                        E
under the pressure wind up snapping in the end
E
one in ten,
E
one in ten,
E
one in ten
B             G#m
Don`t wanna be your monkey wrench
B             G#m
one more indecent accident
B             G#m
I`d rather leave then suffer this
B             G#m
I`ll never be your monkey wrench
Ab  E B G    F# E F# E E
Temper
Temper
Temper
F# E F# E …   C B
B
One last thing before I quit
F#  E
I never wanted anymore than
B
I could fit into my head
F#  E
I still remember every single
B
word you said and all the shit
F#  E
that somehow  came along with it
B
still there`s one thing that comforts me
F#  E
since I was always chained but now I`m free
E D   E D     E D …
B             G#m
Don`t wanna be your monkey wrench
B             G#m
one more indecent accident
B             G#m
I`d rather leave then suffer this
B             G#m
I`ll never be your monkey wrench
[base parte A]
B             G#m
Don`t wanna be your monkey wrench
Fall in , fall out
B             G#m
Don`t wanna be your monkey wrench
Fall in , fall out
B             G#m
Don`t wanna be your monkey wrench
Fall in , fall out
B             G#m
Don`t wanna be your monkey wrench
F# E F# E …   C B")

Song.create!( name: "Everlong [DROP]", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "[clean] D7M  B5(9)  G5(9)  B5(9)
[dist] D7M  B5(9)  G5(9)  B5(9)
D7M  B5(9)  G5(9)  B5(9)
[Primeira Parte]
D7M
Hello
B5(9)
I`ve waited here for you
G5(9)   B5(9)
Everlong
D7M
Tonight
B5(9)
I throw myself into
G5(9)                 B5(9)
And out of the red, out of her head she sang
( D7M  B5(9)  G5(9)  B5(9) )
[Primeira Parte]
D7M
Come down
B5(9)
And waste away with me
G5(9)       B5(9)
Down with me
D7M
Slow how
B5(9)
You wanted it to be
G5(9)              B5(9)
I`m over my head, out of her head she sang
[Segunda Parte]
[Riff Segunda Parte]
3x( C#  D  E  F#  G  F#  A5 )
And I wonder
When I sing along with you
[Refrão]
B5                       G5                   D5
If everything could ever feel this real forever
B5                     G5              D5
If anything could ever be this good again
B5                     G5              D5
The only thing I`ll ever ask of you
A5              G5
You`ve got to promise not to stop when I say when
She sang
( D7M  B5(9)  G5(9)  B5(9) )
[Primeira Parte]
D7M
Breathe out
B5(9)
So I can breathe you in
G5(9)       B5(9)
Hold you in
D7M
And now
B5(9)
I know you`ve always been
G5(9)              B5(9)
Out of your head, out of my head I sang
[Segunda Parte]
[Riff Segunda Parte]
( C#  D  E  F#  G  F#  A5 )
And I wonder
When I sing along with you
[Refrão]
B5                       G5                   D5
If everything could ever feel this real forever
B5                     G5              D5
If anything could ever be this good again
B5                     G5           D5
The only thing I`ll ever ask of you
A5              G5
You`ve got to promise not to stop when I say when
She sang
[clean] D7M  B5(9)  G5(9)  B5(9)
[dist] D7M  B5(9)  G5(9)  B5(9)
[Riff Segunda Parte]
( C#  D  E  F#  G  F#  A5 )
( C#  D  E  F#  G  F#  A5 )
And I wonder
( C#  D  E  F#  G  F#  A5 )
B5                       G5                   D5
If everything could ever feel this real forever
B5                     G5              D5
If anything could ever be this good again
B5                     G5           D5
The only thing I`ll ever ask of you
A5              G5
You`ve got to promise not to stop when I say when
G5  G5  G5")

Song.create!( name: "The Teacher", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "[Intro] G7M/B
G7M/B
Who`s at the door now?
G7M/B
Who`s at the door now?
[Primeira Parte]
Bm            D             F5 E5 F5  C C4 C
Sun goes down, windows wide
Bm                    D           F5 E5 F5  C C4  C
One step closer to the other side
Bm             D          F5 E5 F5  C C4  C
I can feel what others do
Bm                   D         F5 E5 F5  C C4   C
Can`t stop this if I wanted to
[Refrão]
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
( Bm  D  F5  E5 )
( F5  C  C4  C )
( Bm  D  F5  E5 )
( F5  C  C4  C )
[Segunda Parte]
Bm             D               F5 E5 F5 C C4  C
Hurry now boy, time won`t wait
Bm                    D        F5 E5 F5  C C4  C
The here and the now will separate
Bm                       D             F5 E5 F5  C C4   C
There`re some things you cannot choose
Bm              D              F5 E5 F5  C C4  C
Soul and spirit movin` through
[Refrão]
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
Bm
Who`s at the door now?
Bm
Who`s at the door now?
Am A2 A5
Wake up
Bm
Who`s at the door now?
Am A2  A5
Wake up
Am A2  A5
Wake up
G  G11  G
Wake up
G  G11  G
Wake up
Am A2  A5
Wake up
Am A2  A5
Wake up
( F )
C
Wake up
D5
Wake up
( D5  D2(4)  D5  D2(4) )
( D5  D2(4)  Bm7/D  D2(4)  D5 )
[Terceira Parte]
Bm                   D        F5 E5 F5  C C4  C
Two cold stones on a riverbed
Bm               D           F5 E5 F5  C C4  C
Ripped and torn, cannot mend
Bm                     D           F5 E5 F5  C C4  C
Old white candles on a dusty porch
Bm               D           F5 E5 F5  C C4  C
One flame down, another born
[Refrão]
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F                     Bm
Where will I wake up? Where will I wake up?
Bm
Who`s at the door now?
Bm
Who`s at the door now?
[Ponte]
Bm
You showed me how to breathe, never showed me how to say goodbye
Bm
You showed me how to be, never showed me how to say goodbye
Bm
Every page turns, it`s a lesson learned in time
Bm
You showed me how to breathe, never showed me how to say goodbye
F#m
Try and make good with the air that`s left
E
Countin` every minute, livin` breath by breath
D6
By breath, by breath, by breath, by breath, by breath
F#m
Try and make good with the air that`s left
E
Countin` every minute, livin` breath by breath
D6
By breath, by breath, by breath, by breath, by breath
( Bm )
[Ponte]
Bm
You showed me how to need, never showed me how to say goodbye
Bm
You showed me how to grieve, never showed me how to say goodbye
Bm
Every page turns, it`s a lesson learned in time
Bm
You showed me how to need, never showed me how to say goodbye
F#m
Try and make good with the air that`s left
E
Countin` every minute, livin` breath by breath
D6
By breath, by breath, by breath, by breath, by breath
F#m
Try and make good with the air that`s left
E
Countin` every minute, livin` breath by breath
D6
By breath, by breath, by breath, by breath, by breath
( Bm  D  B7  B7  B5 )
( D  B7  B7  B5 )
( D  B7  B7  B5 )
( D  B7  B7  B5 )
[Final]
D  B7  B5
Goodbye!
D  B7  B5
Goodbye!
D  B7  B5
Goodbye!
D  B7  B5
Goodbye!
—------------
G7M/B
Quem está à porta?
G7M/B
Quem está à porta?
[Primeira Parte]
Bm            D             F5 E5 F5  C C4 C
Sol se poe, um janelão
Bm                    D           F5 E5 F5  C C4  C
Um passo mais ara a escuridão
Bm             D          F5 E5 F5  C C4  C
Posso sentir o que outros fazem
Bm                   D         F5 E5 F5  C C4   C
Nao paro isto mesmo que quisesse
[Refrão]
Bb                             Ab
Hey guri, qual o plano pro amanhã?
G                     F
Onde é que vou acordar? Onde é que vou acordar?
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
( Bm  D  F5  E5 )
( F5  C  C4  C )
( Bm  D  F5  E5 )
( F5  C  C4  C )
[Segunda Parte]
Bm             D               F5 E5 F5 C C4  C
Hurry now boy, time won`t wait
Bm                    D        F5 E5 F5  C C4  C
The here and the now will separate
Bm                       D             F5 E5 F5  C C4   C
There`re some things you cannot choose
Bm              D              F5 E5 F5  C C4  C
Soul and spirit movin` through
[Refrão]
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
Bb                             Ab
Hey kid, what`s the plan for tomorrow?
G                     F
Where will I wake up? Where will I wake up?
Bm
Who`s at the door now?
Bm
Who`s at the door now?
Am A2 A5
Wake up")
