## specifications - contains metadata specifications as defined by SMPTE 268 2014

__/GenericImageData__ contains all generic metadata header information as defined by 268 2014. 

To summarize, DPX files contain four sections of metadata (Data Types):

1. Generic file information, image information, data format, and image origination information 

2. Motion-picture and television industry-specific information 

3. User-defined information. This section provides an extended area for customized information needed by some users. The format of this section is not defined by the standard. This section is variable length with a maximum length of 1 Mbyte. It may be of zero length 

4. Image data

Each metadata field is numbered, has a specific order (offset), and a defined length (in bytes). Some fields are considered of a "core" set, in which they are required by the spec to be filled out in order to read and identify the file properly. 

Fields also include content information, and any associated codes and their representations. 

**Metadata Type**|**Field**|**Data Type**|**Code / representation**
:-----:|:-----:|:-----:|:-----:
File information|Magic number (SDPX ASCII)|U32| 
File information|Offset to image data in bytes|U32| 
File information|Version number of header format (V1.0)|ASCII| 
File information|Total image file size in bytes|U32| 
File information|Ditto key (0 = same as previous frame; 1 = new) |U32| 
File information|Generic section header length in bytes|U32| 
File information|Industry specific header length in bytes |U32| 
File information|User-defined header length in bytes|U32| 
File information|Image filename|ASCII| 
File information|Creation date/time: YYYY:MM:DD:HH:MM:SS:LTZ |ASCII| 
File information|Creator|ASCII| 
File information|Project name|ASCII| 
File information|Right to use or copyright statement|ASCII| 
File information|Encryption key (FFFFFFFF unencrypted) |U32| 
File information|Reserved for future use|TBD| 
Image information|Image orientation (see table 2) |U16| 
Image information|Number of image elements|U16| 
Image information|Pixels per line|U32| 
Image information|Lines per image element|U32| 
Image information|Data sign (0 = unsigned; 1 = signed) / Core set images are unsigned.|U32| 
Image information|Reference low data code value|U32| 
Image information|Reference low quantity represented|R32| 
Image information|Reference high data code value|U32| 
Image information|Reference high quantity represented|R32| 
Image information|Descriptor for image element 1 (see table 1)|U8| 
Image information|Transfer characteristic for image element 1 |U8|0 User defined, 1 Printing density , 2 Linear, 3 Logarithmic, 4 Unspecified video, 5 SMPTE 240M, 6 CCIR 709-1, 7 CCIR 601-2 system B or G (625), 8 CCIR 601-2 system M (525), 9 Composite video (NTSC); see SMPTE 170M, 10 Composite video (PAL); see CCIR 624-4, 11 Z (depth) -- linear, 12 Z (depth) -- homogeneous (distance to screen and angle of view must also be specified in user-defined section), 13-254 Reserved for future use
Image information|Colorimetric specification for image element 1|U8|0 User defined, 1 Printing density , 2 Not applicable, 3 Not applicable, 4 Unspecified video, 5 SMPTE 240M, 6 CCIR 709-1, 7 CCIR 601-2 system B or G (625), 8 CCIR 601-2 system M (525), 9 Composite video (NTSC); see SMPTE 170M, 10 Composite video (PAL); see CCIR 624-4, 11 Not applicable, 12 Not applicable, 13-254 Reserved for future use
Image information|Bit size for image element 1 (see table 3A)|U8| 
Image information|Packing for image element 1 (see table 3B)|U16| 
Image information|Encoding for image element 1 (see table 3C)|U16| 
Image information|Offset to data for image element 1|U32| 
Image information|End-of-line padding for image element 1|U32| 
Image information|End-of-image padding for image element 1|U32| 
Image information|Description of image element 1|ASCII| 
Image information|Image element 2|Structure| 
Image information|Image element 3|Structure| 
Image information|Image element 4|Structure| 
Image information|Image element 5|Structure| 
Image information|Image element 6|Structure| 
Image information|Image element 7|Structure| 
Image information|Image element 8|Structure| 
Image information|Reserved for future use|TBD| 
Image orientation information|X offset|U32| 
Image orientation information|Y offset|U32| 
Image orientation information|X center|R32| 
Image orientation information|Y center|R32| 
Image orientation information|X original size|U32| 
Image orientation information|Y original size|U32| 
Image orientation information|Source image filename|ASCII| 
Image orientation information|Source image date/time: YYYY:MM:DD:HH:MM:SS:LTZ |ASCII| 
Image orientation information|Input device name|ASCII| 
Image orientation information|Input device serial number|ASCII| 
Image orientation information|Border validity: XL, XR, YT, YB border |U16*4| 
Image orientation information|Pixel aspect ratio (horizontal:vertical)|U32*2| 
Image orientation information|Reserved for future use|TBD| 
Motion-picture film information|Film mfg. ID code (2 digits from film edge code)|ASCII| 
Motion-picture film information|Film type (2 digits from film edge code)|ASCII| 
Motion-picture film information|Offset in perfs (2 digits from film edge code)|ASCII| 
Motion-picture film information|Prefix (6 digits from film edge code)|ASCII| 
Motion-picture film information|Count (4 digits from film edge code)|ASCII| 
Motion-picture film information|Format -- e.g. Academy|ASCII| 
Motion-picture film information|Frame position in sequence|U32| 
Motion-picture film information|Sequence length (frames)|U32| 
Motion-picture film information|Held count (1 = default)|U32| 
Motion-picture film information|Frame rate of original (frames/s)|R32| 
Motion-picture film information|Shutter angle of camera in degrees|R32| 
Motion-picture film information|Frame identification -- e.g. keyframe|ASCII| 
Motion-picture film information|Slate information|ASCII| 
Motion-picture film information|Reserved for future use|TBD| 
Television Information|SMPTE time code|R32| 
Television Information|SMPTE user bits|R32| 
Television Information|Interlace (0 = noninterlaced; 1 = 2:1 interlace)|U8| 
Television Information|Field number|U8| 
Television Information|Video signal standard (see table 4)|U8| 
Television Information|Zero (for byte alignment)|U8| 
Television Information|Horizontal sampling rate (Hz)|R32| 
Television Information|Vertical sampling rate (Hz)|R32| 
Television Information|Temporal sampling rate or frame rate (Hz)|R32| 
Television Information|Time offset from sync to first pixel (‘_s)|R32| 
Television Information|Gamma|R32| 
Television Information|Black level code value|R32| 
Television Information|Black gain|R32| 
Television Information|Breakpoint|R32| 
Television Information|Reference white level code value|R32| 
Television Information|Integration time (s)|R32| 
Television Information|Reserved for future use|TBD| 
User-defined data|User identification|ASCII| 
User-defined data|User defined ---- Postage stamp, processing logs, etc.|TBD| 
Image data|Image data should start at block boundary (8-K blocks are recommended for efficient use of tape storage devices)|Array / U8*4| 

