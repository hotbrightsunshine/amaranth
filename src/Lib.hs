module Lib where

import Graphics.Gloss
import Canvas as C

-- Variables 
display :: Display
display = InWindow "Amaranth" (500, 500) (0,0)

background :: Color 
background = white

app :: IO ()
app = play Lib.display background 60 C.initial C.render C.handle C.update
