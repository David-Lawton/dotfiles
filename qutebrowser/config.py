config.load_autoconfig(False)

# bindings.commands = {"normal": {";w": "hint links spawn --detach mpv --force-window yes {hint-url}", "pt": "pin-tab"}}
config.bind('pt', 'tab-pin')
config.bind(';w','hint links spawn --detach mpv --force-window yes {hint-url}')
config.bind(';W','spawn --detach mpv --force-window yes {url}')
# password management
config.bind('ee','spawn --userscript qute-pass')
config.bind('eu','spawn --userscript qute-pass --username-only')
config.bind('ep','spawn --userscript qute-pass --password-only')
config.bind('eo','spawn --userscript qute-pass --otp-only')

c.colors.tabs.even.bg = 'grey'
c.colors.tabs.odd.bg = 'darkgrey'
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.page = 'always'
c.scrolling.smooth = True

c.content.blocking.method = 'both'
c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://easylist.to/easylist/fanboy-social.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
        "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
        #"https://gitlab.com/curben/urlhaus-filter/-/raw/master/urlhaus-filter.txt",
        "https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts",
        "https://pgl.yoyo.org/adservers",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://www.i-dont-care-about-cookies.eu/abp/",
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt",
        "https://github.com/brave/adblock-lists/blob/master/brave-unbreak.txt",
        "https://github.com/brave/adblock-lists/blob/master/brave-lists/brave-cookie-specific.txt",
        "https://github.com/brave/adblock-lists/blob/master/brave-lists/brave-firstparty-cname.txt",
        "https://github.com/brave/adblock-lists/blob/master/brave-lists/brave-firstparty.txt",
        "https://github.com/brave/adblock-lists/blob/master/brave-lists/brave-social.txt",
        "https://github.com/brave/adblock-lists/blob/master/brave-lists/brave-sugarcoat.txt"]

c.content.pdfjs = True
c.content.autoplay = False

c.editor.command = ["st", "-e", "nvim", "{file}", "-c", "normal {line}G{column0}l"]

c.input.insert_mode.auto_load = True
c.spellcheck.languages = ["en-US", "de-DE"]

c.tabs.background = True
c.tabs.title.format_pinned = '{index} {audio}'

c.url.open_base_url = True
c.url.start_pages = 'about:blank'
c.url.default_page = 'about:blank'

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}

