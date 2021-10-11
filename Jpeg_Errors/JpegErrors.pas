unit JpegErrors;

interface

const
  cstrJVERSION =	'6a  7-Feb-96';
  cstrJCOPYRIGHT	= 'Copyright (C) 1996, Thomas G. Lane';
  JMSG_STR_PARM_MAX = 80; // defined in jpeg.pas, copied here

  cstrJMSG_NOMESSAGE = 'Bogus message code %d'; (* Must be first entry! *)
  (* For maintenance convenience, list is alphabetical by message code name *)
  cstrJERR_ARITH_NOTIMPL = 'Sorry, there are legal restrictions on arithmetic coding';
  cstrJERR_BAD_ALIGN_TYPE = 'ALIGN_TYPE is wrong, please fix';
  cstrJERR_BAD_ALLOC_CHUNK = 'MAX_ALLOC_CHUNK is wrong, please fix';
  cstrJERR_BAD_BUFFER_MODE = 'Bogus buffer control mode';
  cstrJERR_BAD_COMPONENT_ID = 'Invalid component ID %d in SOS';
  cstrJERR_BAD_DCTSIZE = 'IDCT output block size %d not supported';
  cstrJERR_BAD_IN_COLORSPACE = 'Bogus input colorspace';
  cstrJERR_BAD_J_COLORSPACE = 'Bogus JPEG colorspace';
  cstrJERR_BAD_LENGTH = 'Bogus marker length';
  cstrJERR_BAD_LIB_VERSION
   = 'Wrong JPEG library version: library is %d, caller expects %d';
  cstrJERR_BAD_MCU_SIZE = 'Sampling factors too large for interleaved scan';
  cstrJERR_BAD_POOL_ID = 'Invalid memory pool code %d';
  cstrJERR_BAD_PRECISION = 'Unsupported JPEG data precision %d';
  cstrJERR_BAD_PROGRESSION
   = 'Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d';
  cstrJERR_BAD_PROG_SCRIPT
   = 'Invalid progressive parameters at scan script entry %d';
  cstrJERR_BAD_SAMPLING = 'Bogus sampling factors';
  cstrJERR_BAD_SCAN_SCRIPT = 'Invalid scan script at entry %d';
  cstrJERR_BAD_STATE = 'Improper call to JPEG library in state %d';
  cstrJERR_BAD_STRUCT_SIZE
   = 'JPEG parameter struct mismatch: library thinks size is %u, caller expects %u';
  cstrJERR_BAD_VIRTUAL_ACCESS = 'Bogus virtual array access';
  cstrJERR_BUFFER_SIZE = 'Buffer passed to JPEG library is too small';
  cstrJERR_CANT_SUSPEND = 'Suspension not allowed here';
  cstrJERR_CCIR601_NOTIMPL = 'CCIR601 sampling not implemented yet';
  cstrJERR_COMPONENT_COUNT = 'Too many color components: %d, max %d';
  cstrJERR_CONVERSION_NOTIMPL = 'Unsupported color conversion request';
  cstrJERR_DAC_INDEX = 'Bogus DAC index %d';
  cstrJERR_DAC_VALUE = 'Bogus DAC value 0x%x';
  cstrJERR_DHT_COUNTS = 'Bogus DHT counts';
  cstrJERR_DHT_INDEX = 'Bogus DHT index %d';
  cstrJERR_DQT_INDEX = 'Bogus DQT index %d';
  cstrJERR_EMPTY_IMAGE = 'Empty JPEG image (DNL not supported)';
  cstrJERR_EMS_READ = 'Read from EMS failed';
  cstrJERR_EMS_WRITE = 'Write to EMS failed';
  cstrJERR_EOI_EXPECTED = 'Didn''t expect more than one scan';
  cstrJERR_FILE_READ = 'Input file read error';
  cstrJERR_FILE_WRITE = 'Output file write error --- out of disk space?';
  cstrJERR_FRACT_SAMPLE_NOTIMPL = 'Fractional sampling not implemented yet';
  cstrJERR_HUFF_CLEN_OVERFLOW = 'Huffman code size table overflow';
  cstrJERR_HUFF_MISSING_CODE = 'Missing Huffman code table entry';
  cstrJERR_IMAGE_TOO_BIG = 'Maximum supported image dimension is %u pixels';
  cstrJERR_INPUT_EMPTY = 'Empty input file';
  cstrJERR_INPUT_EOF = 'Premature end of input file';
  cstrJERR_MISMATCHED_QUANT_TABLE
   = 'Cannot transcode due to multiple use of quantization table %d';
  cstrJERR_MISSING_DATA = 'Scan script does not transmit all data';
  cstrJERR_MODE_CHANGE = 'Invalid color quantization mode change';
  cstrJERR_NOTIMPL = 'Not implemented yet';
  cstrJERR_NOT_COMPILED = 'Requested feature was omitted at compile time';
  cstrJERR_NO_BACKING_STORE = 'Backing store not supported';
  cstrJERR_NO_HUFF_TABLE = 'Huffman table 0x%02x was not defined';
  cstrJERR_NO_IMAGE = 'JPEG datastream contains no image';
  cstrJERR_NO_QUANT_TABLE = 'Quantization table 0x%02x was not defined';
  cstrJERR_NO_SOI = 'Not a JPEG file: starts with 0x%02x 0x%02x';
  cstrJERR_OUT_OF_MEMORY = 'Insufficient memory (case %d)';
  cstrJERR_QUANT_COMPONENTS
   = 'Cannot quantize more than %d color components';
  cstrJERR_QUANT_FEW_COLORS = 'Cannot quantize to fewer than %d colors';
  cstrJERR_QUANT_MANY_COLORS = 'Cannot quantize to more than %d colors';
  cstrJERR_SOF_DUPLICATE = 'Invalid JPEG file structure: two SOF markers';
  cstrJERR_SOF_NO_SOS = 'Invalid JPEG file structure: missing SOS marker';
  cstrJERR_SOF_UNSUPPORTED = 'Unsupported JPEG process: SOF type 0x%02x';
  cstrJERR_SOI_DUPLICATE = 'Invalid JPEG file structure: two SOI markers';
  cstrJERR_SOS_NO_SOF = 'Invalid JPEG file structure: SOS before SOF';
  cstrJERR_TFILE_CREATE = 'Failed to create temporary file %s';
  cstrJERR_TFILE_READ = 'Read failed on temporary file';
  cstrJERR_TFILE_SEEK = 'Seek failed on temporary file';
  cstrJERR_TFILE_WRITE
   = 'Write failed on temporary file --- out of disk space?';
  cstrJERR_TOO_LITTLE_DATA = 'Application transferred too few scanlines';
  cstrJERR_UNKNOWN_MARKER = 'Unsupported marker type 0x%02x';
  cstrJERR_VIRTUAL_BUG = 'Virtual array controller messed up';
  cstrJERR_WIDTH_OVERFLOW = 'Image too wide for this implementation';
  cstrJERR_XMS_READ = 'Read from XMS failed';
  cstrJERR_XMS_WRITE = 'Write to XMS failed';
  cstrJMSG_COPYRIGHT = cstrJCOPYRIGHT;
  cstrJMSG_VERSION = cstrJVERSION;
  cstrJTRC_16BIT_TABLES
   = 'Caution: quantization tables are too coarse for baseline JPEG';
  cstrJTRC_ADOBE
   = 'Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d';
  cstrJTRC_APP0 = 'Unknown APP0 marker (not JFIF), length %u';
  cstrJTRC_APP14 = 'Unknown APP14 marker (not Adobe), length %u';
  cstrJTRC_DAC = 'Define Arithmetic Table 0x%02x: 0x%02x';
  cstrJTRC_DHT = 'Define Huffman Table 0x%02x';
  cstrJTRC_DQT = 'Define Quantization Table %d  precision %d';
  cstrJTRC_DRI = 'Define Restart Interval %u';
  cstrJTRC_EMS_CLOSE = 'Freed EMS handle %u';
  cstrJTRC_EMS_OPEN = 'Obtained EMS handle %u';
  cstrJTRC_EOI = 'End Of Image';
  cstrJTRC_HUFFBITS = '        %3d %3d %3d %3d %3d %3d %3d %3d';
  cstrJTRC_JFIF = 'JFIF APP0 marker, density %dx%d  %d';
  cstrJTRC_JFIF_BADTHUMBNAILSIZE
   = 'Warning: thumbnail image size does not match data length %u';
  cstrJTRC_JFIF_MINOR = 'Unknown JFIF minor revision number %d.%02d';
  cstrJTRC_JFIF_THUMBNAIL = '    with %d x %d thumbnail image';
  cstrJTRC_MISC_MARKER = 'Skipping marker 0x%02x, length %u';
  cstrJTRC_PARMLESS_MARKER = 'Unexpected marker 0x%02x';
  cstrJTRC_QUANTVALS = '        %4u %4u %4u %4u %4u %4u %4u %4u';
  cstrJTRC_QUANT_3_NCOLORS = 'Quantizing to %d = %d*%d*%d colors';
  cstrJTRC_QUANT_NCOLORS = 'Quantizing to %d colors';
  cstrJTRC_QUANT_SELECTED = 'Selected %d colors for quantization';
  cstrJTRC_RECOVERY_ACTION = 'At marker 0x%02x, recovery action %d';
  cstrJTRC_RST = 'RST%d';
  cstrJTRC_SMOOTH_NOTIMPL
   = 'Smoothing not supported with nonstandard sampling ratios';
  cstrJTRC_SOF = 'Start Of Frame 0x%02x: width=%u, height=%u, components=%d';
  cstrJTRC_SOF_COMPONENT = '    Component %d: %dhx%dv q=%d';
  cstrJTRC_SOI = 'Start of Image';
  cstrJTRC_SOS = 'Start Of Scan: %d components';
  cstrJTRC_SOS_COMPONENT = '    Component %d: dc=%d ac=%d';
  cstrJTRC_SOS_PARAMS = '  Ss=%d, Se=%d, Ah=%d, Al=%d';
  cstrJTRC_TFILE_CLOSE = 'Closed temporary file %s';
  cstrJTRC_TFILE_OPEN = 'Opened temporary file %s';
  cstrJTRC_UNKNOWN_IDS
   = 'Unrecognized component IDs %d %d %d, assuming YCbCr';
  cstrJTRC_XMS_CLOSE = 'Freed XMS handle %u';
  cstrJTRC_XMS_OPEN = 'Obtained XMS handle %u';
  cstrJWRN_ADOBE_XFORM = 'Unknown Adobe color transform code %d';
  cstrJWRN_BOGUS_PROGRESSION
   = 'Inconsistent progression sequence for component %d coefficient %d';
  cstrJWRN_EXTRANEOUS_DATA
   = 'Corrupt JPEG data: %u extraneous bytes before marker 0x%02x';
  cstrJWRN_HIT_MARKER = 'Corrupt JPEG data: premature end of data segment';
  cstrJWRN_HUFF_BAD_CODE = 'Corrupt JPEG data: bad Huffman code';
  cstrJWRN_JFIF_MAJOR = 'Warning: unknown JFIF revision number %d.%02d';
  cstrJWRN_JPEG_EOF = 'Premature end of JPEG file';
  cstrJWRN_MUST_RESYNC
   = 'Corrupt JPEG data: found marker 0x%02x instead of RST%d';
  cstrJWRN_NOT_SEQUENTIAL = 'Invalid SOS parameters for sequential JPEG';
  cstrJWRN_TOO_MUCH_DATA = 'Application transferred too many scanlines';

const
  cJpegErrors: array[0..119] of string[JMSG_STR_PARM_MAX] =
    (
      cstrJMSG_NOMESSAGE,
      cstrJERR_ARITH_NOTIMPL,
      cstrJERR_BAD_ALIGN_TYPE,
      cstrJERR_BAD_ALLOC_CHUNK,
      cstrJERR_BAD_BUFFER_MODE,
      cstrJERR_BAD_COMPONENT_ID,
      cstrJERR_BAD_DCTSIZE,
      cstrJERR_BAD_IN_COLORSPACE,
      cstrJERR_BAD_J_COLORSPACE,
      cstrJERR_BAD_LENGTH,
      cstrJERR_BAD_LIB_VERSION,
      cstrJERR_BAD_MCU_SIZE,
      cstrJERR_BAD_POOL_ID,
      cstrJERR_BAD_PRECISION,
      cstrJERR_BAD_PROGRESSION,
      cstrJERR_BAD_PROG_SCRIPT,
      cstrJERR_BAD_SAMPLING,
      cstrJERR_BAD_SCAN_SCRIPT,
      cstrJERR_BAD_STATE,
      cstrJERR_BAD_STRUCT_SIZE,
      cstrJERR_BAD_VIRTUAL_ACCESS,
      cstrJERR_BUFFER_SIZE,
      cstrJERR_CANT_SUSPEND,
      cstrJERR_CCIR601_NOTIMPL,
      cstrJERR_COMPONENT_COUNT,
      cstrJERR_CONVERSION_NOTIMPL,
      cstrJERR_DAC_INDEX,
      cstrJERR_DAC_VALUE,
      cstrJERR_DHT_COUNTS,
      cstrJERR_DHT_INDEX,
      cstrJERR_DQT_INDEX,
      cstrJERR_EMPTY_IMAGE,
      cstrJERR_EMS_READ,
      cstrJERR_EMS_WRITE,
      cstrJERR_EOI_EXPECTED,
      cstrJERR_FILE_READ,
      cstrJERR_FILE_WRITE,
      cstrJERR_FRACT_SAMPLE_NOTIMPL,
      cstrJERR_HUFF_CLEN_OVERFLOW,
      cstrJERR_HUFF_MISSING_CODE,
      cstrJERR_IMAGE_TOO_BIG,
      cstrJERR_INPUT_EMPTY,
      cstrJERR_INPUT_EOF,
      cstrJERR_MISMATCHED_QUANT_TABLE,
      cstrJERR_MISSING_DATA,
      cstrJERR_MODE_CHANGE,
      cstrJERR_NOTIMPL,
      cstrJERR_NOT_COMPILED,
      cstrJERR_NO_BACKING_STORE,
      cstrJERR_NO_HUFF_TABLE,
      cstrJERR_NO_IMAGE,
      cstrJERR_NO_QUANT_TABLE,
      cstrJERR_NO_SOI,
      cstrJERR_OUT_OF_MEMORY,
      cstrJERR_QUANT_COMPONENTS,
      cstrJERR_QUANT_FEW_COLORS,
      cstrJERR_QUANT_MANY_COLORS,
      cstrJERR_SOF_DUPLICATE,
      cstrJERR_SOF_NO_SOS,
      cstrJERR_SOF_UNSUPPORTED,
      cstrJERR_SOI_DUPLICATE,
      cstrJERR_SOS_NO_SOF,
      cstrJERR_TFILE_CREATE,
      cstrJERR_TFILE_READ,
      cstrJERR_TFILE_SEEK,
      cstrJERR_TFILE_WRITE,
      cstrJERR_TOO_LITTLE_DATA,
      cstrJERR_UNKNOWN_MARKER,
      cstrJERR_VIRTUAL_BUG,
      cstrJERR_WIDTH_OVERFLOW,
      cstrJERR_XMS_READ,
      cstrJERR_XMS_WRITE,
      cstrJMSG_COPYRIGHT,
      cstrJMSG_VERSION,
      cstrJTRC_16BIT_TABLES,
      cstrJTRC_ADOBE,
      cstrJTRC_APP0,
      cstrJTRC_APP14,
      cstrJTRC_DAC,
      cstrJTRC_DHT,
      cstrJTRC_DQT,
      cstrJTRC_DRI,
      cstrJTRC_EMS_CLOSE,
      cstrJTRC_EMS_OPEN,
      cstrJTRC_EOI,
      cstrJTRC_HUFFBITS,
      cstrJTRC_JFIF,
      cstrJTRC_JFIF_BADTHUMBNAILSIZE,
      cstrJTRC_JFIF_MINOR,
      cstrJTRC_JFIF_THUMBNAIL,
      cstrJTRC_MISC_MARKER,
      cstrJTRC_PARMLESS_MARKER,
      cstrJTRC_QUANTVALS,
      cstrJTRC_QUANT_3_NCOLORS,
      cstrJTRC_QUANT_NCOLORS,
      cstrJTRC_QUANT_SELECTED,
      cstrJTRC_RECOVERY_ACTION,
      cstrJTRC_RST,
      cstrJTRC_SMOOTH_NOTIMPL,
      cstrJTRC_SOF,
      cstrJTRC_SOF_COMPONENT,
      cstrJTRC_SOI,
      cstrJTRC_SOS,
      cstrJTRC_SOS_COMPONENT,
      cstrJTRC_SOS_PARAMS,
      cstrJTRC_TFILE_CLOSE,
      cstrJTRC_TFILE_OPEN,
      cstrJTRC_UNKNOWN_IDS,
      cstrJTRC_XMS_CLOSE,
      cstrJTRC_XMS_OPEN,
      cstrJWRN_ADOBE_XFORM,
      cstrJWRN_BOGUS_PROGRESSION,
      cstrJWRN_EXTRANEOUS_DATA,
      cstrJWRN_HIT_MARKER,
      cstrJWRN_HUFF_BAD_CODE,
      cstrJWRN_JFIF_MAJOR,
      cstrJWRN_JPEG_EOF,
      cstrJWRN_MUST_RESYNC,
      cstrJWRN_NOT_SEQUENTIAL,
      cstrJWRN_TOO_MUCH_DATA
    );

implementation

end.
