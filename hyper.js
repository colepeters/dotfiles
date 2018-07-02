module.exports = {
  config: {
    fontSize: 12,
    fontFamily: '"IBM Plex Mono", monospace',
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    padding: '12px 14px',

    // cursorColor: 'rgba(248,28,229,0.75)',
    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BEAM',

    // custom css to embed in the main window
    css: ``,

    // custom css to embed in the terminal window
    termCSS: ``,

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    shell: '/usr/local/bin/zsh',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: 'true'
  },

  plugins: ["hypercwd", "hyper-pane", "hyper-whimsy"],

  localPlugins: []
}
