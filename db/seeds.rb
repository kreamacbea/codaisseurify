Artist.destroy_all
Song.destroy_all

# ARTISTS
artist1 = Artist.create!({ name: "Odesza", image_url: "/assets/images/odesza.jpg" })
artist2 = Artist.create!({ name: "Moloko", image_url: "/assets/images/odesza.jpg" })
artist3 = Artist.create!({ name: "Goldfrapp", image_url: "/assets/images/odesza.jpg" })
artist4 = Artist.create!({ name: "Royksopp", image_url: "/assets/images/odesza.jpg" })
artist5 = Artist.create!({ name: "Bat For Lashes", image_url: "/assets/images/odesza.jpg" })
artist6 = Artist.create!({ name: "Air", image_url: "/assets/images/odesza.jpg" })

# SONGS
Song.create!([
  { title: "Intro", length: "1:03", artist_id: artist1 },
  { title: "A Moment Apart", length: "3:54", artist_id: artist1 },
  { title: "Higher Ground (feat. Naomi Wild)", length: "3:35", artist_id: artist1 },
  { title: "Boy", length: "3:03", artist_id: artist1 },
  { title: "Line Of Sight (feat. WYNNE & Mansionair)", length: "3:57", artist_id: artist1 },
  { title: "Late Night", length: "3:48", artist_id: artist1 },
  { title: "Across The Room (feat. Leon Bridges)", length: "4:43" },
  { title: "Meridian", length: "3:55", artist_id: artist2 },
  { title: "Everything At Your Feet (feat. The Chamanas)", length: "3:28", artist_id: artist2 },
  { title: "Just A Memory (feat. Regina Spektor)", length: "3:56", artist_id: artist2 },
  { title: "Divide (feat. Kelsey Bulkin)", length: "4:01", artist_id: artist2 },
  { title: "Thin Floors And Tall Ceilings", length: "2:58", artist_id: artist2 },
  { title: "La Ciudad", length: "4:31", artist_id: artist2 },
  { title: "Falls (feat. Sasha Sloan)", length: "3:52", artist_id: artist3 },
  { title: "Show Me", length: "3:38", artist_id: artist3 },
  { title: "Corners Of The Earth (feat. RY X)", length: "5:05", artist_id: artist3 },
  { title: "Radio Moscow", length: "0:25", artist_id: artist3 },
  { title: "Pure Pleasure Seeker (feat. Todd Edwards)", length: "6:31", artist_id: artist3 },
  { title: "Absent Minded Friends", length: "4:45", artist_id: artist3 },
  { title: "Indigo", length: "5:36", artist_id: artist4 },
  { title: "Being Is Bewildering", length: "4:07", artist_id: artist4 },
  { title: "Remain the Same", length: "3:39", artist_id: artist4 },
  { title: "A Drop In the Ocean", length: "1:58", artist_id: artist4 },
  { title: "Dumb Inc.", length: "4:26", artist_id: artist4 },
  { title: "The Time Is Now", length: "5:18", artist_id: artist4 },
  { title: "Mother", length: "4:45", artist_id: artist5 },
  { title: "It's Your Problem", length: "1:05", artist_id: artist5 },
  { title: "It's Nothing", length: "5:12", artist_id: artist5 },
  { title: "Bingo Massacre", length: "0:25", artist_id: artist5 },
  { title: "Somebody Somewhere", length: "5:42", artist_id: artist5 },
  { title: "Just You and Me Dancing", length: "1:17", artist_id: artist5 },
  { title: "If You Have a Cross to Bear You May As Well Use It As a Crutch", length: "2:56", artist_id: artist6 },
  { title: "Keep Stepping", length: "0:21", artist_id: artist6 },
  { title: "Sing It Back (Boris Dlugosch Musical Mix)", length: "9:20", artist_id: artist6 }
])
