## specifications - contains metadata specifications as defined by SMPTE 268 2014

__/GenericImageData__ contains all generic metadata header information as defined by 268 2014. 

To summarize, DPX files contain four sections of metadata (Data Types):

1. Generic file information, image information, data format, and image origination information 

2. Motion-picture and television industry-specific information 

3. User-defined information. This section provides an extended area for customized information needed by some users. The format of this section is not defined by the standard. This section is variable length with a maximum length of 1 Mbyte. It may be of zero length 

4. Image data

Each metadata field is numbered, has a specific order (offset), and a defined length (in bytes). Some fields are considered of a "core" set, in which they are required by the spec to be filled out in order to read and identify the file properly. 

Fields also include content information, and any associated codes and their representations. 

