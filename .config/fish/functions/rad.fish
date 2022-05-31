# play some internet radio streams with mpv

function rad-play
  mpv --no-terminal "$argv" & disown
end

function rad
  switch "$argv"
    case "amazing"
      rad-play "https://stream4.amazingradio.com:8443/stream.mp3"
    case "amsterdam-funk-channel"
      rad-play "http://213.202.241.199:9292/listen.pls"
    case "balamii"
      rad-play "https://balamii.out.airtime.pro/balamii_a"
    case "cibl"
      rad-play "https://stream02.ustream.ca/cibl128.mp3"
    case "dance-wave"
      rad-play "http://dancewave.online/dance.mp3"
    case "dmt-fm"
      rad-play "http://cp12.serverse.com:7069/live"
    case "dublab"
      rad-play "https://dublab.out.airtime.pro/dublab_a"
    case "hi-online-classic"
      rad-play "http://mediaserv30.live-streams.nl:8088/live"
    case "intense-radio"
      rad-play "https://secure.live-streams.nl/flac.ogg"
    case "joint-radio"
      rad-play "http://192.111.151.2:9998/listen.pls"
    case "kcrw"
      rad-play "http://kcrw.streamguys1.com/kcrw_192k_mp3_e24_internet_radio"
    case "kexp"
      rad-play "http://50.31.180.202/"
    case "kutx"
      rad-play "https://kut.streamguys1.com/kutx-free"
    case "majestic-jukebox"
      rad-play "http://uk3.internet-radio.com:8405/live"
    case "megaton-radio"
      rad-play "https://us2.internet-radio.com/proxy/megatoncafe"
    case "milano-lounge"
      rad-play "http://centova.wlservices.org:8003/autodj"
    case "mi-soul"
      rad-play "http://149.56.195.94:8056/listen.pls"
    case "netil"
      rad-play "https://netilradio.out.airtime.pro/netilradio_a"
    case "nts"
      rad-play "https://stream-relay-geo.ntslive.net/stream"
    case "party-vibe-dnb"
      rad-play "http://www.partyviberadio.com:8004/listen.pls"
    case "party-vibe-hip-hop"
      rad-play "http://www.partyviberadio.com:8016/listen.pls"
    case "pureclassix"
      rad-play "http://server5.radio-streams.net:8001/live"
    case "rinse-fm"
      rad-play "https://streamer-uk.rinse.fm:8443/stream"
    case "real-underground"
      rad-play "http://54.39.247.236:2180/listen.pls"
    case "san-fran-70s"
      rad-play "http://s6.voscast.com:10922/listen.pls"
    case "soho-culture"
      rad-play "https://sohoradioculture.doughunt.co.uk:8010/320mp3"
    case "soho-music"
      rad-play "https://sohoradiomusic.doughunt.co.uk:8010/320mp3"
    case "somafm-70s-soul"
      rad-play "https://somafm.com/7soul.pls"
    case "somafm-80s"
      rad-play "https://somafm.com/u80s256.pls"
    case "somafm-defcon"
      rad-play "https://somafm.com/defcon256.pls"
    case "somafm-drone-zone"
      rad-play "https://somafm.com/dronezone256.pls"
    case "somafm-groove-salad-classic"
      rad-play "https://somafm.com/gsclassic.pls"
    case "somafm-groove-salad"
      rad-play "https://somafm.com/groovesalad256.pls"
    case "somafm-indie-pop"
      rad-play "https://somafm.com/indiepop130.pls"
    case "somafm-lush"
      rad-play "https://somafm.com/lush.pls"
    case "somafm-reggae"
      rad-play "https://somafm.com/reggae256.pls"
    case "somafm-secret-agent"
      rad-play "https://somafm.com/secretagent.pls"
    case "somafm-seventies"
      rad-play "https://somafm.com/seventies320.pls"
    case "somafm-sonic-universe"
      rad-play "https://somafm.com/sonicuniverse256.pls"
    case "somafm-space-station"
      rad-play "https://somafm.com/spacestation130.pls"
    case "somafm-suburbs-of-goa"
      rad-play "https://somafm.com/suburbsofgoa.pls"
    case "superfly-fm"
      rad-play "https://stream01.superfly.fm/live"
    case "thc-radio"
      rad-play "http://37.187.93.104:8116/autodj"
    case "tsf-jazz"
      rad-play "https://tsfjazz.ice.infomaniak.ch/tsfjazz-high.mp3"
    case "wandering-sheep-jazz"
      rad-play "http://radio.wanderingsheep.net:8090/jazzcafe320"
    case "wnyu"
      rad-play "http://cinema.acs.its.nyu.edu:8000/wnyu128.mp3"
    case "worldwide-fm"
      rad-play "https://worldwidefm.out.airtime.pro/worldwidefm_b"
  end
end

complete -c rad -fa "amazing" -d "UK Emerging"
complete -c rad -fa "amsterdam-funk-channel" -d "Funk"
complete -c rad -fa "balamii" -d "UK Techno"
complete -c rad -fa "cibl" -d "Montréal"
complete -c rad -fa "dmt-fm" -d "Psych Techno"
complete -c rad -fa "dublab" -d "Los Angeles"
complete -c rad -fa "intense-radio" -d "House"
complete -c rad -fa "hi-online-classic" -d "Classic"
complete -c rad -fa "joint-radio" -d "Reggae"
complete -c rad -fa "kcrw" -d "Los Angeles"
complete -c rad -fa "kexp" -d "Seattle"
complete -c rad -fa "kutx" -d "Austin"
complete -c rad -fa "megaton-radio" -d "Fallout"
complete -c rad -fa "milano-lounge" -d "Chillout"
complete -c rad -fa "mi-soul" -d "Rap/RnB/etc"
complete -c rad -fa "netil" -d "London"
complete -c rad -fa "nts" -d "London"
complete -c rad -fa "party-vibe-dnb" -d "DnB"
complete -c rad -fa "party-vibe-hip-hop" -d "Hip Hop"
complete -c rad -fa "pureclassix" -d "Classic Rock"
complete -c rad -fa "rinse-fm" -d "Techno"
complete -c rad -fa "san-fran-70s" -d "Disco"
complete -c rad -fa "soho-culture" -d "Culture"
complete -c rad -fa "soho-music" -d "NY / London"
complete -c rad -fa "somafm-70s-soul" -d "70s Soul"
complete -c rad -fa "somafm-80s" -d "80s"
complete -c rad -fa "somafm-defcon" -d "Hacking"
complete -c rad -fa "somafm-drone-zone" -d "Drone"
complete -c rad -fa "somafm-groove-salad" -d "Chill"
complete -c rad -fa "somafm-groove-salad-classic" -d "Chill"
complete -c rad -fa "somafm-indie-pop" -d "Indie Pop"
complete -c rad -fa "somafm-lush" -d "Lush Electronic"
complete -c rad -fa "somafm-reggae" -d "Reggae"
complete -c rad -fa "somafm-secret-agent" -d "James Bond"
complete -c rad -fa "somafm-seventies" -d "70s"
complete -c rad -fa "somafm-sonic-universe" -d "70s Underground"
complete -c rad -fa "somafm-space-station" -d "Space Station"
complete -c rad -fa "somafm-suburbs-of-goa" -d "Goa"
complete -c rad -fa "superfly-fm" -d "Superfly" 
complete -c rad -fa "thc-radio" -d "Rave"
complete -c rad -fa "tsf-jazz" -d "Jazz"
complete -c rad -fa "wandering-sheep-jazz" -d "Jazz"
complete -c rad -fa "wnyu" -d "NYU"
complete -c rad -fa "worldwide-fm" -d "Worldwide"

