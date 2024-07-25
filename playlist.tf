resource "spotify_playlist" "Favourites"{
    name="Favourites"
    tracks=["0YQJoDL6f46J0n1rOVkpxJ","16kiQQ4BoLHDyj5W2fkfNK"]
}

data "spotify_search_track" "diljit_dosanjh"{
    name="diljit_dosanjh"
    limit=3
}

data "spotify_search_track" "Taylor_Swift"{
    name="Taylor_Swift"
    limit=10
}

resource "spotify_playlist" "mix"{
    name= "mix"
    tracks=[data.spotify_search_track.diljit_dosanjh.tracks[0].id,data.spotify_search_track.diljit_dosanjh.tracks[1].id,
    data.spotify_search_track.Taylor_Swift.tracks[5].id,data.spotify_search_track.Taylor_Swift.tracks[7].id]
}
