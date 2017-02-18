imaqhwinfo('winvideo')
vidobj=videoinput('winvideo',1,'YUY2_640x360')
preview(vidobj)
img=getsnapshot(vidobj);
img=ycbcr2rgb(img)
imshow(img)

import java.awt.Robot;
import java.awt.event.*;
mouse=Robot;
mouse.mouseMove(100,100);
img_ref=withoutmarker
for i=1:100
    img=getsnapshot
    img=img-img_ref
    img.bw_
    coordinates
    mouse
end