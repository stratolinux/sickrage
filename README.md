# docker sabnzbd
This is a Dockerfile to set up "SickRage" - (http://sickrage.tv/)
Build from docker file
```
git clone https://github.com/tssgery/strato-sickrage.git
cd strato-sickrage
docker build -t sickrage .
```
docker run -d -v /*your_config_location*:/config -v /*your_videos_location*:/videos -p 8081:8081 sickrage
