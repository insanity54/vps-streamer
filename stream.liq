# logs
set("log.stdout", true)


# internet radio input
jams = input.http(id = "I Love Berlin Internet Radio",
  http://dir.xiph.org/listen/1863179/listen.m3u
)


# add some vidja
video.add_text.gstreamer(
  id = "test text",
  color = 16711884,
  "HELLO WORLD (test)"
)

# audio encoding
audio = %mp3.cbr(
  stereo = true,
  samplerate = 44100,
  bitrate = 128
)

#out(jams) # output to speakers (uncomment for testing)


# stream to twitch
#output.icecast(audio,
#  protocol = "http",
#  host = "audiostream.example.com",
#  port = 8000,
#  password = "hackme",
#  mount = "name/blah.mp3",
#  name = "title of the stream",
#  description = "description of the stream",
#  genre = "Other",
#  url = "http://www.example.com",
#  public = true,
#  icy_metadata = "false",
#  mksafe(mic)
#)
