tell application "Spotify"
	if player state is not stopped then
		set currentArtist to artist of current track as string
		set currentTrack to name of current track as string
		set spotTrack to currentArtist & "-" & currentTrack
		set base to "http://eksisozluk.com?q="
		set theUrl to base & quoted form of currentTrack
		set theUrl to "curl -G -Ls -o /dev/null -w %{url_effective} --data-urlencode \"q=" & currentTrack & "\" https://eksisozluk.com"
		set theUrl to do shell script theUrl
		do shell script "open " & theUrl & "?a=nice"
	end if
end tell
