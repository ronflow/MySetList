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
Song.create!( name: "Wheels", artist: "Foo Fighters", tags: "rock; internacional", lyrics: "
D5                   A5     F#5  E5
I know what you're thinking
 D5            A5   F#5  E5
We were going down
D5               A5     F#5  E5
I could feel us sinking
D5                A5   F#5  E5
And then i came around

   D5           A5         F#5  E5
And everyone i love before
  D5              A5   F#5  E5
Flashed before my eyes
   D5                A5      F#5  E5
And nothing mattered anymore
   D5               A5  F#5  E5
I looked into the sky

[Pré-Refrão]

        D5                  A5
Well we all want something better than
    F#5                E5
We wish for something new
        D5                  A5
Well we all want something beautiful
 F#5                 E5
Wish for something true
       D5            A5
Being looking for a reason man
 F#5          E5
Something to lose

[Refrão]

           D5         A5  F#5  E5
When the wheels come down
           D5           A5  F#5  E5
When the wheels touch ground
         D5                A5
And you feel like it's all over
          F#5              E5
There's another round for you
           D5         A5  F#5  E5
When the wheels come down

( D5  A5  F#5  E5 )

[Segunda Parte]

 D5                A5     F#5  E5
Now your head is spinning
  D5                A5  F#5  E5
Broken hearts will mend
  D5           A5     F#5  E5
This is our beginning
 D5          A5  F#5  E5
Coming to an end

[Pré-Refrão]

         D5               A5
Well we wanted something better than
    F#5                E5
We wish for something new
          D5               A5
Well you wanted something beautiful
 F#5                 E5
Wish for something true
      D5            A5
Been looking for a reason man
 F#5          E5
Something to lose

[Refrão]

           D5         A5  F#5  E5
When the wheels come down
           D5           A5  F#5  E5
When the wheels touch ground
         D5                A5
And you feel like it's all over
          F#5              E5
There's another round for you
           D5         A5  F#5  E5
When the wheels come down

( D5  A5  F#5  E5 )
( D5  A5  F#5  E5 )

[Solo  A maj ]


[Refrão]

           D5         A5  F#5  E5
When the wheels come down
           D5           A5  F#5  E5
When the wheels touch ground
         D5                A5
And you feel like it's all over
          F#5              E5
There's another round for you
           D5         A5  F#5  E5
When the wheels come down

[Final]  D5 A5 F#5 E5

")