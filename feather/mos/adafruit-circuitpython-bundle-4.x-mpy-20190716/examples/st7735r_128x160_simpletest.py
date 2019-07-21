"""
This test will initialize the display using displayio
and draw a solid red background
"""

import board
import displayio
from adafruit_st7735r import ST7735R

spi = board.SPI()
tft_cs = board.D5
tft_dc = board.D6

displayio.release_displays()
display_bus = displayio.FourWire(spi, command=tft_dc, chip_select=tft_cs, reset=board.D9)

display = ST7735R(display_bus, width=128, height=160, bgr=True)

# Make the display context
splash = displayio.Group(max_size=10)
display.show(splash)

color_bitmap = displayio.Bitmap(128, 160, 1)
color_palette = displayio.Palette(1)
color_palette[0] = 0xFF0000

bg_sprite = displayio.TileGrid(color_bitmap,
                               pixel_shader=color_palette,
                               x=0, y=0)
splash.append(bg_sprite)

while True:
    pass
