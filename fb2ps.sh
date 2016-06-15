#!/bin/sh

convert -crop 1536x1536 +repage +adjoin facebook_pano.jpg facebook_pano_out_%02d.jpg
cube2sphere facebook_pano_out_05.jpg facebook_pano_out_04.jpg facebook_pano_out_00.jpg facebook_pano_out_01.jpg facebook_pano_out_02.jpg facebook_pano_out_03.jpg -r 8704 4352 -fTGA -ostitched
convert stitched0001.tga -quality 100 PANO_facebook_pano_out.jpg
exiftool -ProjectionType="equirectangular" -UsePanoramaViewer="True" -"PoseHeadingDegrees<$exif:GPSImgDirection" -"CroppedAreaImageWidthPixels<$ImageWidth" -"CroppedAreaImageHeightPixels<$ImageHeight" -"FullPanoWidthPixels<$ImageWidth" -"FullPanoHeightPixels<$ImageHeight" -CroppedAreaLeftPixels="0" -CroppedAreaTopPixels="0" PANO_facebook_pano_out.jpg
