const CONFIG = {
  baseURI: process.env.FLOOD_BASE_URI || '/',
  dbCleanInterval: 1000 * 60 * 60,
  dbPath: '/flood-db/',
  floodServerHost: '0.0.0.0',
  floodServerPort: 3000,
  maxHistoryStates: 30,
  pollInterval: 1000 * 5,
  torrentClientPollInterval: 1000 * 2,
  secret: process.env.FLOOD_SECRET || 'secret',
  scgi: {
    host: process.env.RTORRENT_SCGI_HOST || 'localhost',
    port: process.env.RTORRENT_SCGI_PORT || 5000,
    socket: process.env.RTORRENT_SOCK == 'true',
    socketPath: '/tmp/rtorrent.sock'
  },
  ssl: false,
  sslKey: '',
  sslCert: ''
};

module.exports = CONFIG;
