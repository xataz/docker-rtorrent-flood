## xataz/rtorrent-flood

### Actually beta version

![](https://camo.githubusercontent.com/d8f5cb502f06e0ea1cc171550c2bed035293c1a9/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6a6f686e667572726f772e636f6d2f73686172652f666c6f6f642d73637265656e73686f742d612d303630362e706e67)

[![Build Status](https://drone.xataz.net/api/badges/xataz/docker-rtorrent-flood/status.svg)](https://drone.xataz.net/xataz/docker-rtorrent-flood)

[![](https://images.microbadger.com/badges/version/xataz/rtorrent-flood:latest.svg)](https://microbadger.com/images/xataz/rtorrent-flood:latest "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/xataz/rtorrent-flood:latest.svg)](https://microbadger.com/images/xataz/rtorrent-flood:latest "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/xataz/rtorrent-flood:filebot.svg)](https://microbadger.com/images/xataz/rtorrent-flood:filebot "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/xataz/rtorrent-flood:filebot.svg)](https://microbadger.com/images/xataz/rtorrent-flood:filebot "Get your own image badge on microbadger.com")


> This image is build and push with [drone.io](https://github.com/drone/drone), a circle-ci like self-hosted.
> If you don't trust, you can build yourself.

#### Main features
- Based on Alpine Linux.
- rTorrent and libtorrent are compiled from source.
- Provides by default a solid configuration.
- No **ROOT** process
* Persitance custom configuration for rtorrent
- [Filebot](http://www.filebot.net/) is included on xataz/flood:filebot, and creates symlinks in `/data/Media`.
- [Flood](https://github.com/jfurrow/flood), a modern web UI for rTorrent with a Node.js backend and React frontend.

#### Build-time variables
- **RTORRENT_VER** : rtorrent version
- **LIBTORRENT_VER** : libtorrent version
- **FILEBOT_VER** : filebot version
- **FLOOD_VER** : Flood version
- **BUILD_CORES** : number of cores used during build

#### Environment variables
- **UID** : user id (default : 991)
- **GID** : group id (defaut : 991)
- **FLOOD_SECRET** : flood secret key (defaut : mysupersecretkey) (CHANGE IT)
- **WEBROOT** : context path (base_URI) (default : /)
- **RTORRENT_SCGI** : SCGI port (default : 0 for use local socket)
- **PORT_RTORRENT** : Default : 45000
- **DHT_RTORRENT** : Default : off
- **PKG_CONFIG_PATH** : `/usr/local/lib/pkgconfig` (don't touch)

#### Ports
- **45000** (bind it).
- **3000**

#### Volumes
- **/data** : your downloaded torrents, session files, symlinks...
- **/flood-db** : Flood databases.
- **/config/rtorrent** : Persistant volume for rtorrent configuration
