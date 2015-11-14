#Scripts

Commands for writing DPX header information, encoding to derivative files, etc.

##GraphicsMagick

/GraphicsMagick/dpx_gmmetaedit.sh can be used to batch edit metadata in DPX image stacks. 

To use:

- Adjust `dpx:file.copyright=,DPX:file.project.name=,DPX:file.creator=,dpx:mp.frame.rate=` (Line 6) to include any desired metadata fields. 

Example: `dpx:file.copyright=Copyright\ Erik\ Piil,DPX:file.project.name=Jones\ Beach,DPX:file.creator=Erik\ Piil,dpx:mp.frame.rate=24`

- Make executable with `chmod +x dpx_gmmetaedit.sh` on the command line

- Run with `./dpx_gmmetaedit.sh` in any DPX image stack

This script includes metadata fields for Copyright, Project Name, Creator, and Frame Rate, however a user can add or remove these fields according to a desired output. The following metadata fields can be added/edited using GraphicsMagick:

`dpx:file.copyright`

`dpx:file.creation.datetime`

`dpx:file.creator`

`dpx:file.encryption.key`

`dpx:file.filename`

`dpx:file.project.name`

`dpx:file.version`

`dpx:image.orientation`

`dpx:mp.count`

`dpx:mp.film.manufacturer.id`

`dpx:mp.film.type`

`dpx:mp.format`

`dpx:mp.frame.id`

`dpx:mp.frame.position`

`dpx:mp.frame.rate`

`dpx:mp.held.count`

`dpx:mp.perfs.offset`

`dpx:mp.prefix`

`dpx:mp.sequence.length`

`dpx:mp.shutter.angle`

`dpx:mp.slate.info``

`dpx:source.aspect.ratio.horizontal`

`dpx:source.aspect.ratio.vertical`

`dpx:source.border.validity.bottom`

`dpx:source.border.validity.left`

`dpx:source.border.validity.right`

`dpx:source.border.validity.top`

`dpx:source.creation.datetime`

`dpx:source.device.name`

`dpx:source.device.serialnumber`

`dpx:source.filename`

`dpx:source.scanned.size.x`

`dpx:source.scanned.size.y`

`dpx:source.x-center`

`dpx:source.x-offset`

`dpx:source.x-original-size`

`dpx:source.y-center`

`dpx:source.y-offset`

`dpx:source.y-original-size`

`dpx:tv.black.gain`

`dpx:tv.black.level`

`dpx:tv.breakpoint`

`dpx:tv.field.number`

`dpx:tv.gama`

`dpx:tv.horizontal.sampling.rate`

`dpx:tv.integration.time`

`dpx:tv.interlace`

`dpx:tv.sync.time`

`dpx:tv.temporal.sampling.rate`

`dpx:tv.time.code`

`dpx:tv.user.bits`

`dpx:tv.video.signal`

`dpx:tv.white.level`

`dpx:user.data.id`

Note that GraphicsMagick will re-write the pixel data in DPX files along with any header information. 

##FFmpeg

