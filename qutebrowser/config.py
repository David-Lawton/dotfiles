config.load_autoconfig(False)

#tab traversal
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
# bindings.commands = {"normal": {";w": "hint links spawn --detach mpv --force-window yes {hint-url}", "pt": "pin-tab"}}
config.bind('pt', 'tab-pin')
config.bind('M','hint links spawn --detach mpv --cache=yes --demuxer-max-bytes=300M --demuxer-max-back-bytes=100M {hint-url}')

c.colors.tabs.even.bg = 'grey'
c.colors.tabs.odd.bg = 'darkgrey'
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.page = 'always'
c.scrolling.smooth = True

c.content.blocking.enabled = True
c.content.blocking.method = 'both'
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://easylist.to/easylist/fanboy-social.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
        "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/lan-block.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/ubol-filters.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://www.i-dont-care-about-cookies.eu/abp/",
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"]

c.content.pdfjs = True
c.content.autoplay = False

c.editor.command = ["st", "-e", "nvim", "{file}", "-c", "normal {line}G{column0}l"]

c.input.insert_mode.auto_load = False

c.tabs.background = True
c.tabs.title.format_pinned = '{index} {audio}'

c.url.open_base_url = True
c.url.start_pages = 'about:blank'
c.url.default_page = 'about:blank'

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}

