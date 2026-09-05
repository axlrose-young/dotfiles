# ============================================================
# QUTEBROWSER
# Minimal Dark Rice
# No custom keybindings
# ============================================================


# ============================================================
# CONFIG
# ============================================================

# Don't load settings from autoconfig.yml.
# This config.py becomes the source of truth.
config.load_autoconfig(False)


# ============================================================
# PALETTE
# ============================================================

BG = "#0f1117"
BG_ALT = "#151820"
BG_HOVER = "#1b1f2a"
BG_SELECTED = "#242936"

FG = "#cdd6f4"
FG_DIM = "#7f849c"

BLUE = "#89b4fa"
GREEN = "#a6e3a1"
RED = "#f38ba8"
YELLOW = "#f9e2af"


# ============================================================
# GENERAL
# ============================================================

c.scrolling.smooth = True
c.scrolling.bar = "never"

c.zoom.default = "100%"

c.search.incremental = True
c.search.wrap = True
c.search.ignore_case = "smart"

c.tabs.background = True


# ============================================================
# TABS
# ============================================================

# Only display the tab bar when there is more than one tab.
c.tabs.show = "multiple"

c.tabs.position = "top"

c.tabs.padding = {
    "top": 5,
    "bottom": 5,
    "left": 10,
    "right": 10,
}

c.tabs.title.alignment = "left"

c.tabs.tooltips = False

c.tabs.favicons.show = "always"

c.tabs.indicator.width = 0

c.tabs.min_width = 100
c.tabs.max_width = 300

c.tabs.select_on_remove = "prev"


# ============================================================
# STATUS BAR
# ============================================================

# Only show it when qutebrowser actually needs it.
c.statusbar.show = "in-mode"

c.statusbar.padding = {
    "top": 3,
    "bottom": 3,
    "left": 8,
    "right": 8,
}


# ============================================================
# COMPLETION / COMMAND MENU
# ============================================================

c.completion.shrink = True
c.completion.height = "30%"

c.completion.scrollbar.width = 6


# ============================================================
# FONTS
# ============================================================

# Change this to another installed monospace font if needed.
c.fonts.default_family = "JetBrains Mono"
c.fonts.default_size = "10pt"

c.fonts.tabs.selected = "10pt JetBrains Mono"
c.fonts.tabs.unselected = "10pt JetBrains Mono"

c.fonts.statusbar = "10pt JetBrains Mono"

c.fonts.completion.entry = "10pt JetBrains Mono"
c.fonts.completion.category = "bold 10pt JetBrains Mono"

c.fonts.hints = "bold 10pt JetBrains Mono"

c.fonts.keyhint = "10pt JetBrains Mono"

c.fonts.messages.error = "10pt JetBrains Mono"
c.fonts.messages.info = "10pt JetBrains Mono"
c.fonts.messages.warning = "10pt JetBrains Mono"

c.fonts.prompts = "10pt JetBrains Mono"


# ============================================================
# TAB COLORS
# ============================================================

c.colors.tabs.bar.bg = BG

# Unselected
c.colors.tabs.odd.bg = BG
c.colors.tabs.even.bg = BG

c.colors.tabs.odd.fg = FG_DIM
c.colors.tabs.even.fg = FG_DIM

# Selected
c.colors.tabs.selected.odd.bg = BG_SELECTED
c.colors.tabs.selected.even.bg = BG_SELECTED

c.colors.tabs.selected.odd.fg = FG
c.colors.tabs.selected.even.fg = FG

# Pinned
c.colors.tabs.pinned.odd.bg = BG_SELECTED
c.colors.tabs.pinned.even.bg = BG_SELECTED

c.colors.tabs.pinned.odd.fg = BLUE
c.colors.tabs.pinned.even.fg = BLUE


# ============================================================
# TAB INDICATOR
# ============================================================

c.colors.tabs.indicator.start = BLUE
c.colors.tabs.indicator.stop = BLUE
c.colors.tabs.indicator.error = RED


# ============================================================
# STATUS BAR COLORS
# ============================================================

c.colors.statusbar.normal.bg = BG
c.colors.statusbar.normal.fg = FG

c.colors.statusbar.insert.bg = BG
c.colors.statusbar.insert.fg = GREEN

c.colors.statusbar.command.bg = BG
c.colors.statusbar.command.fg = FG

c.colors.statusbar.private.bg = BG
c.colors.statusbar.private.fg = RED

c.colors.statusbar.passthrough.bg = BG
c.colors.statusbar.passthrough.fg = YELLOW

# URL
c.colors.statusbar.url.fg = FG

c.colors.statusbar.url.success.https.fg = GREEN
c.colors.statusbar.url.success.http.fg = FG

c.colors.statusbar.url.error.fg = RED
c.colors.statusbar.url.warn.fg = YELLOW
c.colors.statusbar.url.hover.fg = BLUE

c.colors.statusbar.progress.bg = BLUE


# ============================================================
# COMPLETION MENU
# ============================================================

c.colors.completion.fg = FG

c.colors.completion.odd.bg = BG
c.colors.completion.even.bg = BG_ALT

c.colors.completion.category.bg = BG_SELECTED
c.colors.completion.category.fg = BLUE

c.colors.completion.item.selected.bg = BG_HOVER
c.colors.completion.item.selected.fg = FG

c.colors.completion.match.fg = BLUE
c.colors.completion.item.selected.match.fg = BLUE

c.colors.completion.scrollbar.bg = BG
c.colors.completion.scrollbar.fg = BG_SELECTED


# ============================================================
# HINTS
# ============================================================

c.colors.hints.bg = BLUE
c.colors.hints.fg = BG
c.colors.hints.match.fg = RED


# ============================================================
# MESSAGES
# ============================================================

c.colors.messages.error.bg = BG
c.colors.messages.error.fg = RED

c.colors.messages.warning.bg = BG
c.colors.messages.warning.fg = YELLOW

c.colors.messages.info.bg = BG
c.colors.messages.info.fg = FG


# ============================================================
# DOWNLOADS
# ============================================================

c.colors.downloads.bar.bg = BG

c.colors.downloads.start.bg = BG
c.colors.downloads.start.fg = BLUE

c.colors.downloads.stop.bg = BG
c.colors.downloads.stop.fg = GREEN

c.colors.downloads.error.bg = BG
c.colors.downloads.error.fg = RED


# ============================================================
# KEY HINTS
# ============================================================

c.colors.keyhint.bg = BG_ALT
c.colors.keyhint.fg = FG
c.colors.keyhint.suffix.fg = BLUE


# ============================================================
# TOOLTIP
# ============================================================

c.colors.tooltip.bg = BG_ALT
c.colors.tooltip.fg = FG


# ============================================================
# CONTEXT MENU
# ============================================================

c.colors.contextmenu.disabled.bg = BG
c.colors.contextmenu.disabled.fg = FG_DIM


# ============================================================
# WEBPAGE
# ============================================================

# This is the important part:
# Tell websites that we prefer a dark theme.
c.colors.webpage.preferred_color_scheme = "dark"

# Force dark rendering for websites that don't have a
# proper native dark theme.
c.colors.webpage.darkmode.enabled = True

# High-quality color inversion.
c.colors.webpage.darkmode.algorithm = "lightness-cielab"

# Automatically decide whether images should be inverted.
c.colors.webpage.darkmode.policy.images = "smart"

# Automatically determine which pages need inversion.
c.colors.webpage.darkmode.policy.page = "smart"

# Background used when a webpage doesn't specify one.
c.colors.webpage.bg = BG
