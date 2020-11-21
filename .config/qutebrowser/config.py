import dracula.draw

# clone into ~/.config/qutebrowser/
# git clone https://github.com/dracula/qutebrowser-dracula-theme.git dracula
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://docs.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://drive.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

c.content.private_browsing = True

c.downloads.location.directory = '/home/HDD/Downloads'

c.statusbar.show = 'in-mode'

c.statusbar.padding = {'top': 6, 'right': 8, 'bottom': 6, 'left': 8}

c.tabs.favicons.scale = 1

c.tabs.padding = {'top': 6, 'right': 8, 'bottom': 6, 'left': 8}

c.tabs.show = 'multiple'

c.tabs.indicator.width = 1

c.url.start_pages = 'https://duckduckgo.com/?k7=282a36&k8=f8f8f2&k9=50fa7b&kae=t&kt=p&ks=m&kw=n&km=l&ko=s&kj=282a36&ka=p&kaa=bd93f9&ku=-1&kx=f1fa8c&ky=44475a&kaf=1&kai=1&kf=1'

c.colors.downloads.system.bg = 'none'
c.colors.tabs.indicator.system = 'none'
