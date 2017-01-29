# docker sickrage
This is a Dockerfile to set up "SickRage" - (http://sickrage.tv/)
Build from docker file
```
git clone https://github.com/stratolinux/sickrage.git
cd sickrage
docker build -t sickrage .
```
docker run -d -v /*your_config_location*:/config -v /*your_videos_location*:/videos -v /*your_download_location*:/downloads -p 8081:8081 sickrage
