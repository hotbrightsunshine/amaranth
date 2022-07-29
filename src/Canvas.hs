module Canvas where

import Graphics.Gloss.Data.Picture ( Picture, pictures )
import Graphics.Gloss.Interface.IO.Interact ( Event )

newtype Canvas = Canvas {
    items ::    [Picture]
}

initial :: Canvas
initial = Canvas {
    items =     []
}

render :: Canvas -> Picture
render canvas = pictures ( items canvas ) 

handle :: Event -> Canvas -> Canvas
handle _ _ = initial

update :: Float -> Canvas -> Canvas
update _ _ = initial 