const CONFIG = {
  baseURI: '<WEBROOT>',
  dbCleanInterval: 1000 * 60 * 60,
  dbPath: '/flood-db/',
  floodServerHost: '0.0.0.0',
  floodServerPort: 3000,
  floodServerProxy: '',
  maxHistoryStates: 30,
  pollInterval: 1000 * 5,
  torrentClientPollInterval: 1000 * 2,
  secret: '<FLOOD_SECRET>',
  scgi: {
    host: 'localhost',
    port: 5000,
    socket: true,
    socketPath: '/tmp/rtorrent.sock'
  },
  ssl: false,
  sslKey: '',
  sslCert: ''
};

module.exports = CONFIG;
