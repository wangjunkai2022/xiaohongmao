package androidx.exifinterface.media;

import android.annotation.SuppressLint;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import com.fasterxml.jackson.core.e;
import com.google.android.exoplayer2.util.a0;
import com.google.common.base.c;
import io.sentry.instrumentation.file.h;
import io.sentry.protocol.y;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes.dex */
public class ExifInterface {
    public static final short ALTITUDE_ABOVE_SEA_LEVEL = 0;
    public static final short ALTITUDE_BELOW_SEA_LEVEL = 1;
    static final Charset ASCII;
    static final short BYTE_ALIGN_II = 18761;
    static final short BYTE_ALIGN_MM = 19789;
    public static final int COLOR_SPACE_S_RGB = 1;
    public static final int COLOR_SPACE_UNCALIBRATED = 65535;
    public static final short CONTRAST_HARD = 2;
    public static final short CONTRAST_NORMAL = 0;
    public static final short CONTRAST_SOFT = 1;
    public static final int DATA_DEFLATE_ZIP = 8;
    public static final int DATA_HUFFMAN_COMPRESSED = 2;
    public static final int DATA_JPEG = 6;
    public static final int DATA_JPEG_COMPRESSED = 7;
    public static final int DATA_LOSSY_JPEG = 34892;
    public static final int DATA_PACK_BITS_COMPRESSED = 32773;
    public static final int DATA_UNCOMPRESSED = 1;
    private static final Pattern DATETIME_PRIMARY_FORMAT_PATTERN;
    private static final Pattern DATETIME_SECONDARY_FORMAT_PATTERN;
    private static final int DATETIME_VALUE_STRING_LENGTH = 19;
    private static final ExifTag[] EXIF_POINTER_TAGS;
    static final ExifTag[][] EXIF_TAGS;
    public static final short EXPOSURE_MODE_AUTO = 0;
    public static final short EXPOSURE_MODE_AUTO_BRACKET = 2;
    public static final short EXPOSURE_MODE_MANUAL = 1;
    public static final short EXPOSURE_PROGRAM_ACTION = 6;
    public static final short EXPOSURE_PROGRAM_APERTURE_PRIORITY = 3;
    public static final short EXPOSURE_PROGRAM_CREATIVE = 5;
    public static final short EXPOSURE_PROGRAM_LANDSCAPE_MODE = 8;
    public static final short EXPOSURE_PROGRAM_MANUAL = 1;
    public static final short EXPOSURE_PROGRAM_NORMAL = 2;
    public static final short EXPOSURE_PROGRAM_NOT_DEFINED = 0;
    public static final short EXPOSURE_PROGRAM_PORTRAIT_MODE = 7;
    public static final short EXPOSURE_PROGRAM_SHUTTER_PRIORITY = 4;
    public static final short FILE_SOURCE_DSC = 3;
    public static final short FILE_SOURCE_OTHER = 0;
    public static final short FILE_SOURCE_REFLEX_SCANNER = 2;
    public static final short FILE_SOURCE_TRANSPARENT_SCANNER = 1;
    public static final short FLAG_FLASH_FIRED = 1;
    public static final short FLAG_FLASH_MODE_AUTO = 24;
    public static final short FLAG_FLASH_MODE_COMPULSORY_FIRING = 8;
    public static final short FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION = 16;
    public static final short FLAG_FLASH_NO_FLASH_FUNCTION = 32;
    public static final short FLAG_FLASH_RED_EYE_SUPPORTED = 64;
    public static final short FLAG_FLASH_RETURN_LIGHT_DETECTED = 6;
    public static final short FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED = 4;
    public static final short FORMAT_CHUNKY = 1;
    public static final short FORMAT_PLANAR = 2;
    public static final short GAIN_CONTROL_HIGH_GAIN_DOWN = 4;
    public static final short GAIN_CONTROL_HIGH_GAIN_UP = 2;
    public static final short GAIN_CONTROL_LOW_GAIN_DOWN = 3;
    public static final short GAIN_CONTROL_LOW_GAIN_UP = 1;
    public static final short GAIN_CONTROL_NONE = 0;
    public static final String GPS_DIRECTION_MAGNETIC = "M";
    public static final String GPS_DIRECTION_TRUE = "T";
    public static final String GPS_DISTANCE_KILOMETERS = "K";
    public static final String GPS_DISTANCE_MILES = "M";
    public static final String GPS_DISTANCE_NAUTICAL_MILES = "N";
    public static final String GPS_MEASUREMENT_2D = "2";
    public static final String GPS_MEASUREMENT_3D = "3";
    public static final short GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED = 1;
    public static final String GPS_MEASUREMENT_INTERRUPTED = "V";
    public static final String GPS_MEASUREMENT_IN_PROGRESS = "A";
    public static final short GPS_MEASUREMENT_NO_DIFFERENTIAL = 0;
    public static final String GPS_SPEED_KILOMETERS_PER_HOUR = "K";
    public static final String GPS_SPEED_KNOTS = "N";
    public static final String GPS_SPEED_MILES_PER_HOUR = "M";
    private static final Pattern GPS_TIMESTAMP_PATTERN;
    static final byte[] IDENTIFIER_EXIF_APP1;
    private static final byte[] IDENTIFIER_XMP_APP1;
    private static final ExifTag[] IFD_EXIF_TAGS;
    private static final int IFD_FORMAT_BYTE = 1;
    private static final int IFD_FORMAT_DOUBLE = 12;
    private static final int IFD_FORMAT_IFD = 13;
    private static final int IFD_FORMAT_SBYTE = 6;
    private static final int IFD_FORMAT_SINGLE = 11;
    private static final int IFD_FORMAT_SLONG = 9;
    private static final int IFD_FORMAT_SRATIONAL = 10;
    private static final int IFD_FORMAT_SSHORT = 8;
    private static final int IFD_FORMAT_STRING = 2;
    private static final int IFD_FORMAT_ULONG = 4;
    private static final int IFD_FORMAT_UNDEFINED = 7;
    private static final int IFD_FORMAT_URATIONAL = 5;
    private static final int IFD_FORMAT_USHORT = 3;
    private static final ExifTag[] IFD_GPS_TAGS;
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS;
    private static final int IFD_OFFSET = 8;
    private static final ExifTag[] IFD_THUMBNAIL_TAGS;
    private static final ExifTag[] IFD_TIFF_TAGS;
    private static final int IFD_TYPE_EXIF = 1;
    private static final int IFD_TYPE_GPS = 2;
    private static final int IFD_TYPE_INTEROPERABILITY = 3;
    private static final int IFD_TYPE_ORF_CAMERA_SETTINGS = 7;
    private static final int IFD_TYPE_ORF_IMAGE_PROCESSING = 8;
    private static final int IFD_TYPE_ORF_MAKER_NOTE = 6;
    private static final int IFD_TYPE_PEF = 9;
    static final int IFD_TYPE_PREVIEW = 5;
    static final int IFD_TYPE_PRIMARY = 0;
    static final int IFD_TYPE_THUMBNAIL = 4;
    private static final int IMAGE_TYPE_ARW = 1;
    private static final int IMAGE_TYPE_CR2 = 2;
    private static final int IMAGE_TYPE_DNG = 3;
    private static final int IMAGE_TYPE_HEIF = 12;
    private static final int IMAGE_TYPE_JPEG = 4;
    private static final int IMAGE_TYPE_NEF = 5;
    private static final int IMAGE_TYPE_NRW = 6;
    private static final int IMAGE_TYPE_ORF = 7;
    private static final int IMAGE_TYPE_PEF = 8;
    private static final int IMAGE_TYPE_PNG = 13;
    private static final int IMAGE_TYPE_RAF = 9;
    private static final int IMAGE_TYPE_RW2 = 10;
    private static final int IMAGE_TYPE_SRW = 11;
    private static final int IMAGE_TYPE_UNKNOWN = 0;
    private static final int IMAGE_TYPE_WEBP = 14;
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_LENGTH_TAG;
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_TAG;
    public static final String LATITUDE_NORTH = "N";
    public static final String LATITUDE_SOUTH = "S";
    public static final short LIGHT_SOURCE_CLOUDY_WEATHER = 10;
    public static final short LIGHT_SOURCE_COOL_WHITE_FLUORESCENT = 14;
    public static final short LIGHT_SOURCE_D50 = 23;
    public static final short LIGHT_SOURCE_D55 = 20;
    public static final short LIGHT_SOURCE_D65 = 21;
    public static final short LIGHT_SOURCE_D75 = 22;
    public static final short LIGHT_SOURCE_DAYLIGHT = 1;
    public static final short LIGHT_SOURCE_DAYLIGHT_FLUORESCENT = 12;
    public static final short LIGHT_SOURCE_DAY_WHITE_FLUORESCENT = 13;
    public static final short LIGHT_SOURCE_FINE_WEATHER = 9;
    public static final short LIGHT_SOURCE_FLASH = 4;
    public static final short LIGHT_SOURCE_FLUORESCENT = 2;
    public static final short LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN = 24;
    public static final short LIGHT_SOURCE_OTHER = 255;
    public static final short LIGHT_SOURCE_SHADE = 11;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_A = 17;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_B = 18;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_C = 19;
    public static final short LIGHT_SOURCE_TUNGSTEN = 3;
    public static final short LIGHT_SOURCE_UNKNOWN = 0;
    public static final short LIGHT_SOURCE_WARM_WHITE_FLUORESCENT = 16;
    public static final short LIGHT_SOURCE_WHITE_FLUORESCENT = 15;
    public static final String LONGITUDE_EAST = "E";
    public static final String LONGITUDE_WEST = "W";
    static final byte MARKER = -1;
    static final byte MARKER_APP1 = -31;
    private static final byte MARKER_COM = -2;
    static final byte MARKER_EOI = -39;
    private static final byte MARKER_SOF0 = -64;
    private static final byte MARKER_SOF1 = -63;
    private static final byte MARKER_SOF10 = -54;
    private static final byte MARKER_SOF11 = -53;
    private static final byte MARKER_SOF13 = -51;
    private static final byte MARKER_SOF14 = -50;
    private static final byte MARKER_SOF15 = -49;
    private static final byte MARKER_SOF2 = -62;
    private static final byte MARKER_SOF3 = -61;
    private static final byte MARKER_SOF5 = -59;
    private static final byte MARKER_SOF6 = -58;
    private static final byte MARKER_SOF7 = -57;
    private static final byte MARKER_SOF9 = -55;
    private static final byte MARKER_SOS = -38;
    private static final int MAX_THUMBNAIL_SIZE = 512;
    public static final short METERING_MODE_AVERAGE = 1;
    public static final short METERING_MODE_CENTER_WEIGHT_AVERAGE = 2;
    public static final short METERING_MODE_MULTI_SPOT = 4;
    public static final short METERING_MODE_OTHER = 255;
    public static final short METERING_MODE_PARTIAL = 6;
    public static final short METERING_MODE_PATTERN = 5;
    public static final short METERING_MODE_SPOT = 3;
    public static final short METERING_MODE_UNKNOWN = 0;
    private static final Pattern NON_ZERO_TIME_PATTERN;
    private static final ExifTag[] ORF_CAMERA_SETTINGS_TAGS;
    private static final ExifTag[] ORF_IMAGE_PROCESSING_TAGS;
    private static final int ORF_MAKER_NOTE_HEADER_1_SIZE = 8;
    private static final int ORF_MAKER_NOTE_HEADER_2_SIZE = 12;
    private static final ExifTag[] ORF_MAKER_NOTE_TAGS;
    private static final short ORF_SIGNATURE_1 = 20306;
    private static final short ORF_SIGNATURE_2 = 21330;
    public static final int ORIENTATION_FLIP_HORIZONTAL = 2;
    public static final int ORIENTATION_FLIP_VERTICAL = 4;
    public static final int ORIENTATION_NORMAL = 1;
    public static final int ORIENTATION_ROTATE_180 = 3;
    public static final int ORIENTATION_ROTATE_270 = 8;
    public static final int ORIENTATION_ROTATE_90 = 6;
    public static final int ORIENTATION_TRANSPOSE = 5;
    public static final int ORIENTATION_TRANSVERSE = 7;
    public static final int ORIENTATION_UNDEFINED = 0;
    public static final int ORIGINAL_RESOLUTION_IMAGE = 0;
    private static final int PEF_MAKER_NOTE_SKIP_SIZE = 6;
    private static final String PEF_SIGNATURE = "PENTAX";
    private static final ExifTag[] PEF_TAGS;
    public static final int PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO = 1;
    public static final int PHOTOMETRIC_INTERPRETATION_RGB = 2;
    public static final int PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO = 0;
    public static final int PHOTOMETRIC_INTERPRETATION_YCBCR = 6;
    private static final int PNG_CHUNK_CRC_BYTE_LENGTH = 4;
    private static final int PNG_CHUNK_TYPE_BYTE_LENGTH = 4;
    private static final int RAF_OFFSET_TO_JPEG_IMAGE_OFFSET = 84;
    private static final String RAF_SIGNATURE = "FUJIFILMCCD-RAW";
    public static final int REDUCED_RESOLUTION_IMAGE = 1;
    public static final short RENDERED_PROCESS_CUSTOM = 1;
    public static final short RENDERED_PROCESS_NORMAL = 0;
    public static final short RESOLUTION_UNIT_CENTIMETERS = 3;
    public static final short RESOLUTION_UNIT_INCHES = 2;
    private static final short RW2_SIGNATURE = 85;
    public static final short SATURATION_HIGH = 0;
    public static final short SATURATION_LOW = 0;
    public static final short SATURATION_NORMAL = 0;
    public static final short SCENE_CAPTURE_TYPE_LANDSCAPE = 1;
    public static final short SCENE_CAPTURE_TYPE_NIGHT = 3;
    public static final short SCENE_CAPTURE_TYPE_PORTRAIT = 2;
    public static final short SCENE_CAPTURE_TYPE_STANDARD = 0;
    public static final short SCENE_TYPE_DIRECTLY_PHOTOGRAPHED = 1;
    public static final short SENSITIVITY_TYPE_ISO_SPEED = 3;
    public static final short SENSITIVITY_TYPE_REI = 2;
    public static final short SENSITIVITY_TYPE_REI_AND_ISO = 6;
    public static final short SENSITIVITY_TYPE_SOS = 1;
    public static final short SENSITIVITY_TYPE_SOS_AND_ISO = 5;
    public static final short SENSITIVITY_TYPE_SOS_AND_REI = 4;
    public static final short SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO = 7;
    public static final short SENSITIVITY_TYPE_UNKNOWN = 0;
    public static final short SENSOR_TYPE_COLOR_SEQUENTIAL = 5;
    public static final short SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR = 8;
    public static final short SENSOR_TYPE_NOT_DEFINED = 1;
    public static final short SENSOR_TYPE_ONE_CHIP = 2;
    public static final short SENSOR_TYPE_THREE_CHIP = 4;
    public static final short SENSOR_TYPE_TRILINEAR = 7;
    public static final short SENSOR_TYPE_TWO_CHIP = 3;
    public static final short SHARPNESS_HARD = 2;
    public static final short SHARPNESS_NORMAL = 0;
    public static final short SHARPNESS_SOFT = 1;
    private static final int SIGNATURE_CHECK_SIZE = 5000;
    public static final int STREAM_TYPE_EXIF_DATA_ONLY = 1;
    public static final int STREAM_TYPE_FULL_IMAGE_DATA = 0;
    public static final short SUBJECT_DISTANCE_RANGE_CLOSE_VIEW = 2;
    public static final short SUBJECT_DISTANCE_RANGE_DISTANT_VIEW = 3;
    public static final short SUBJECT_DISTANCE_RANGE_MACRO = 1;
    public static final short SUBJECT_DISTANCE_RANGE_UNKNOWN = 0;
    public static final String TAG_APERTURE_VALUE = "ApertureValue";
    public static final String TAG_ARTIST = "Artist";
    public static final String TAG_BITS_PER_SAMPLE = "BitsPerSample";
    public static final String TAG_BODY_SERIAL_NUMBER = "BodySerialNumber";
    public static final String TAG_BRIGHTNESS_VALUE = "BrightnessValue";
    @Deprecated
    public static final String TAG_CAMARA_OWNER_NAME = "CameraOwnerName";
    public static final String TAG_CAMERA_OWNER_NAME = "CameraOwnerName";
    public static final String TAG_CFA_PATTERN = "CFAPattern";
    public static final String TAG_COLOR_SPACE = "ColorSpace";
    public static final String TAG_COMPONENTS_CONFIGURATION = "ComponentsConfiguration";
    public static final String TAG_COMPRESSED_BITS_PER_PIXEL = "CompressedBitsPerPixel";
    public static final String TAG_COMPRESSION = "Compression";
    public static final String TAG_CONTRAST = "Contrast";
    public static final String TAG_COPYRIGHT = "Copyright";
    public static final String TAG_CUSTOM_RENDERED = "CustomRendered";
    public static final String TAG_DATETIME = "DateTime";
    public static final String TAG_DATETIME_DIGITIZED = "DateTimeDigitized";
    public static final String TAG_DATETIME_ORIGINAL = "DateTimeOriginal";
    public static final String TAG_DEFAULT_CROP_SIZE = "DefaultCropSize";
    public static final String TAG_DEVICE_SETTING_DESCRIPTION = "DeviceSettingDescription";
    public static final String TAG_DIGITAL_ZOOM_RATIO = "DigitalZoomRatio";
    public static final String TAG_DNG_VERSION = "DNGVersion";
    private static final String TAG_EXIF_IFD_POINTER = "ExifIFDPointer";
    public static final String TAG_EXIF_VERSION = "ExifVersion";
    public static final String TAG_EXPOSURE_BIAS_VALUE = "ExposureBiasValue";
    public static final String TAG_EXPOSURE_INDEX = "ExposureIndex";
    public static final String TAG_EXPOSURE_MODE = "ExposureMode";
    public static final String TAG_EXPOSURE_PROGRAM = "ExposureProgram";
    public static final String TAG_EXPOSURE_TIME = "ExposureTime";
    public static final String TAG_FILE_SOURCE = "FileSource";
    public static final String TAG_FLASH = "Flash";
    public static final String TAG_FLASHPIX_VERSION = "FlashpixVersion";
    public static final String TAG_FLASH_ENERGY = "FlashEnergy";
    public static final String TAG_FOCAL_LENGTH = "FocalLength";
    public static final String TAG_FOCAL_LENGTH_IN_35MM_FILM = "FocalLengthIn35mmFilm";
    public static final String TAG_FOCAL_PLANE_RESOLUTION_UNIT = "FocalPlaneResolutionUnit";
    public static final String TAG_FOCAL_PLANE_X_RESOLUTION = "FocalPlaneXResolution";
    public static final String TAG_FOCAL_PLANE_Y_RESOLUTION = "FocalPlaneYResolution";
    public static final String TAG_F_NUMBER = "FNumber";
    public static final String TAG_GAIN_CONTROL = "GainControl";
    public static final String TAG_GAMMA = "Gamma";
    public static final String TAG_GPS_ALTITUDE = "GPSAltitude";
    public static final String TAG_GPS_ALTITUDE_REF = "GPSAltitudeRef";
    public static final String TAG_GPS_AREA_INFORMATION = "GPSAreaInformation";
    public static final String TAG_GPS_DATESTAMP = "GPSDateStamp";
    public static final String TAG_GPS_DEST_BEARING = "GPSDestBearing";
    public static final String TAG_GPS_DEST_BEARING_REF = "GPSDestBearingRef";
    public static final String TAG_GPS_DEST_DISTANCE = "GPSDestDistance";
    public static final String TAG_GPS_DEST_DISTANCE_REF = "GPSDestDistanceRef";
    public static final String TAG_GPS_DEST_LATITUDE = "GPSDestLatitude";
    public static final String TAG_GPS_DEST_LATITUDE_REF = "GPSDestLatitudeRef";
    public static final String TAG_GPS_DEST_LONGITUDE = "GPSDestLongitude";
    public static final String TAG_GPS_DEST_LONGITUDE_REF = "GPSDestLongitudeRef";
    public static final String TAG_GPS_DIFFERENTIAL = "GPSDifferential";
    public static final String TAG_GPS_DOP = "GPSDOP";
    public static final String TAG_GPS_H_POSITIONING_ERROR = "GPSHPositioningError";
    public static final String TAG_GPS_IMG_DIRECTION = "GPSImgDirection";
    public static final String TAG_GPS_IMG_DIRECTION_REF = "GPSImgDirectionRef";
    private static final String TAG_GPS_INFO_IFD_POINTER = "GPSInfoIFDPointer";
    public static final String TAG_GPS_LATITUDE = "GPSLatitude";
    public static final String TAG_GPS_LATITUDE_REF = "GPSLatitudeRef";
    public static final String TAG_GPS_LONGITUDE = "GPSLongitude";
    public static final String TAG_GPS_LONGITUDE_REF = "GPSLongitudeRef";
    public static final String TAG_GPS_MAP_DATUM = "GPSMapDatum";
    public static final String TAG_GPS_MEASURE_MODE = "GPSMeasureMode";
    public static final String TAG_GPS_PROCESSING_METHOD = "GPSProcessingMethod";
    public static final String TAG_GPS_SATELLITES = "GPSSatellites";
    public static final String TAG_GPS_SPEED = "GPSSpeed";
    public static final String TAG_GPS_SPEED_REF = "GPSSpeedRef";
    public static final String TAG_GPS_STATUS = "GPSStatus";
    public static final String TAG_GPS_TIMESTAMP = "GPSTimeStamp";
    public static final String TAG_GPS_TRACK = "GPSTrack";
    public static final String TAG_GPS_TRACK_REF = "GPSTrackRef";
    public static final String TAG_GPS_VERSION_ID = "GPSVersionID";
    public static final String TAG_IMAGE_DESCRIPTION = "ImageDescription";
    public static final String TAG_IMAGE_LENGTH = "ImageLength";
    public static final String TAG_IMAGE_UNIQUE_ID = "ImageUniqueID";
    public static final String TAG_IMAGE_WIDTH = "ImageWidth";
    private static final String TAG_INTEROPERABILITY_IFD_POINTER = "InteroperabilityIFDPointer";
    public static final String TAG_INTEROPERABILITY_INDEX = "InteroperabilityIndex";
    public static final String TAG_ISO_SPEED = "ISOSpeed";
    public static final String TAG_ISO_SPEED_LATITUDE_YYY = "ISOSpeedLatitudeyyy";
    public static final String TAG_ISO_SPEED_LATITUDE_ZZZ = "ISOSpeedLatitudezzz";
    @Deprecated
    public static final String TAG_ISO_SPEED_RATINGS = "ISOSpeedRatings";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT = "JPEGInterchangeFormat";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = "JPEGInterchangeFormatLength";
    public static final String TAG_LENS_MAKE = "LensMake";
    public static final String TAG_LENS_MODEL = "LensModel";
    public static final String TAG_LENS_SERIAL_NUMBER = "LensSerialNumber";
    public static final String TAG_LENS_SPECIFICATION = "LensSpecification";
    public static final String TAG_LIGHT_SOURCE = "LightSource";
    public static final String TAG_MAKE = "Make";
    public static final String TAG_MAKER_NOTE = "MakerNote";
    public static final String TAG_MAX_APERTURE_VALUE = "MaxApertureValue";
    public static final String TAG_METERING_MODE = "MeteringMode";
    public static final String TAG_MODEL = "Model";
    public static final String TAG_NEW_SUBFILE_TYPE = "NewSubfileType";
    public static final String TAG_OECF = "OECF";
    public static final String TAG_OFFSET_TIME = "OffsetTime";
    public static final String TAG_OFFSET_TIME_DIGITIZED = "OffsetTimeDigitized";
    public static final String TAG_OFFSET_TIME_ORIGINAL = "OffsetTimeOriginal";
    public static final String TAG_ORF_ASPECT_FRAME = "AspectFrame";
    private static final String TAG_ORF_CAMERA_SETTINGS_IFD_POINTER = "CameraSettingsIFDPointer";
    private static final String TAG_ORF_IMAGE_PROCESSING_IFD_POINTER = "ImageProcessingIFDPointer";
    public static final String TAG_ORF_PREVIEW_IMAGE_LENGTH = "PreviewImageLength";
    public static final String TAG_ORF_PREVIEW_IMAGE_START = "PreviewImageStart";
    public static final String TAG_ORF_THUMBNAIL_IMAGE = "ThumbnailImage";
    public static final String TAG_ORIENTATION = "Orientation";
    public static final String TAG_PHOTOGRAPHIC_SENSITIVITY = "PhotographicSensitivity";
    public static final String TAG_PHOTOMETRIC_INTERPRETATION = "PhotometricInterpretation";
    public static final String TAG_PIXEL_X_DIMENSION = "PixelXDimension";
    public static final String TAG_PIXEL_Y_DIMENSION = "PixelYDimension";
    public static final String TAG_PLANAR_CONFIGURATION = "PlanarConfiguration";
    public static final String TAG_PRIMARY_CHROMATICITIES = "PrimaryChromaticities";
    private static final ExifTag TAG_RAF_IMAGE_SIZE;
    public static final String TAG_RECOMMENDED_EXPOSURE_INDEX = "RecommendedExposureIndex";
    public static final String TAG_REFERENCE_BLACK_WHITE = "ReferenceBlackWhite";
    public static final String TAG_RELATED_SOUND_FILE = "RelatedSoundFile";
    public static final String TAG_RESOLUTION_UNIT = "ResolutionUnit";
    public static final String TAG_ROWS_PER_STRIP = "RowsPerStrip";
    public static final String TAG_RW2_ISO = "ISO";
    public static final String TAG_RW2_JPG_FROM_RAW = "JpgFromRaw";
    public static final String TAG_RW2_SENSOR_BOTTOM_BORDER = "SensorBottomBorder";
    public static final String TAG_RW2_SENSOR_LEFT_BORDER = "SensorLeftBorder";
    public static final String TAG_RW2_SENSOR_RIGHT_BORDER = "SensorRightBorder";
    public static final String TAG_RW2_SENSOR_TOP_BORDER = "SensorTopBorder";
    public static final String TAG_SAMPLES_PER_PIXEL = "SamplesPerPixel";
    public static final String TAG_SATURATION = "Saturation";
    public static final String TAG_SCENE_CAPTURE_TYPE = "SceneCaptureType";
    public static final String TAG_SCENE_TYPE = "SceneType";
    public static final String TAG_SENSING_METHOD = "SensingMethod";
    public static final String TAG_SENSITIVITY_TYPE = "SensitivityType";
    public static final String TAG_SHARPNESS = "Sharpness";
    public static final String TAG_SHUTTER_SPEED_VALUE = "ShutterSpeedValue";
    public static final String TAG_SOFTWARE = "Software";
    public static final String TAG_SPATIAL_FREQUENCY_RESPONSE = "SpatialFrequencyResponse";
    public static final String TAG_SPECTRAL_SENSITIVITY = "SpectralSensitivity";
    public static final String TAG_STANDARD_OUTPUT_SENSITIVITY = "StandardOutputSensitivity";
    public static final String TAG_STRIP_BYTE_COUNTS = "StripByteCounts";
    public static final String TAG_STRIP_OFFSETS = "StripOffsets";
    public static final String TAG_SUBFILE_TYPE = "SubfileType";
    public static final String TAG_SUBJECT_AREA = "SubjectArea";
    public static final String TAG_SUBJECT_DISTANCE = "SubjectDistance";
    public static final String TAG_SUBJECT_DISTANCE_RANGE = "SubjectDistanceRange";
    public static final String TAG_SUBJECT_LOCATION = "SubjectLocation";
    public static final String TAG_SUBSEC_TIME = "SubSecTime";
    public static final String TAG_SUBSEC_TIME_DIGITIZED = "SubSecTimeDigitized";
    public static final String TAG_SUBSEC_TIME_ORIGINAL = "SubSecTimeOriginal";
    private static final String TAG_SUB_IFD_POINTER = "SubIFDPointer";
    public static final String TAG_THUMBNAIL_IMAGE_LENGTH = "ThumbnailImageLength";
    public static final String TAG_THUMBNAIL_IMAGE_WIDTH = "ThumbnailImageWidth";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String TAG_THUMBNAIL_ORIENTATION = "ThumbnailOrientation";
    public static final String TAG_TRANSFER_FUNCTION = "TransferFunction";
    public static final String TAG_USER_COMMENT = "UserComment";
    public static final String TAG_WHITE_BALANCE = "WhiteBalance";
    public static final String TAG_WHITE_POINT = "WhitePoint";
    public static final String TAG_XMP = "Xmp";
    public static final String TAG_X_RESOLUTION = "XResolution";
    public static final String TAG_Y_CB_CR_COEFFICIENTS = "YCbCrCoefficients";
    public static final String TAG_Y_CB_CR_POSITIONING = "YCbCrPositioning";
    public static final String TAG_Y_CB_CR_SUB_SAMPLING = "YCbCrSubSampling";
    public static final String TAG_Y_RESOLUTION = "YResolution";
    private static final int WEBP_CHUNK_SIZE_BYTE_LENGTH = 4;
    private static final int WEBP_CHUNK_TYPE_BYTE_LENGTH = 4;
    private static final int WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH = 10;
    private static final int WEBP_FILE_SIZE_BYTE_LENGTH = 4;
    private static final byte WEBP_VP8L_SIGNATURE = 47;
    @Deprecated
    public static final int WHITEBALANCE_AUTO = 0;
    @Deprecated
    public static final int WHITEBALANCE_MANUAL = 1;
    public static final short WHITE_BALANCE_AUTO = 0;
    public static final short WHITE_BALANCE_MANUAL = 1;
    public static final short Y_CB_CR_POSITIONING_CENTERED = 1;
    public static final short Y_CB_CR_POSITIONING_CO_SITED = 2;
    private static final HashMap<Integer, Integer> sExifPointerTagMap;
    private static final HashMap<Integer, ExifTag>[] sExifTagMapsForReading;
    private static final HashMap<String, ExifTag>[] sExifTagMapsForWriting;
    private static SimpleDateFormat sFormatterPrimary;
    private static SimpleDateFormat sFormatterSecondary;
    private static final HashSet<String> sTagSetForCompatibility;
    private boolean mAreThumbnailStripsConsecutive;
    private AssetManager.AssetInputStream mAssetInputStream;
    private final HashMap<String, ExifAttribute>[] mAttributes;
    private Set<Integer> mAttributesOffsets;
    private ByteOrder mExifByteOrder;
    private String mFilename;
    private boolean mHasThumbnail;
    private boolean mHasThumbnailStrips;
    private boolean mIsExifDataOnly;
    private int mMimeType;
    private boolean mModified;
    private int mOffsetToExifData;
    private int mOrfMakerNoteOffset;
    private int mOrfThumbnailLength;
    private int mOrfThumbnailOffset;
    private FileDescriptor mSeekableFileDescriptor;
    private byte[] mThumbnailBytes;
    private int mThumbnailCompression;
    private int mThumbnailLength;
    private int mThumbnailOffset;
    private boolean mXmpIsFromSeparateMarker;
    private static final String TAG = "ExifInterface";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final List<Integer> ROTATION_ORDER = Arrays.asList(1, 6, 3, 8);
    private static final List<Integer> FLIPPED_ROTATION_ORDER = Arrays.asList(2, 7, 4, 5);
    public static final int[] BITS_PER_SAMPLE_RGB = {8, 8, 8};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_1 = {4};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_2 = {8};
    private static final byte MARKER_SOI = -40;
    static final byte[] JPEG_SIGNATURE = {-1, MARKER_SOI, -1};
    private static final byte[] HEIF_TYPE_FTYP = {102, 116, 121, 112};
    private static final byte[] HEIF_BRAND_MIF1 = {109, 105, 102, 49};
    private static final byte[] HEIF_BRAND_HEIC = {104, 101, 105, 99};
    private static final byte[] ORF_MAKER_NOTE_HEADER_1 = {79, 76, 89, 77, 80, 0};
    private static final byte[] ORF_MAKER_NOTE_HEADER_2 = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] PNG_SIGNATURE = {-119, 80, 78, 71, c.f32108o, 10, c.D, 10};
    private static final byte[] PNG_CHUNK_TYPE_EXIF = {101, 88, 73, 102};
    private static final byte[] PNG_CHUNK_TYPE_IHDR = {73, 72, 68, 82};
    private static final byte[] PNG_CHUNK_TYPE_IEND = {73, 69, 78, 68};
    private static final byte[] WEBP_SIGNATURE_1 = {82, 73, 70, 70};
    private static final byte[] WEBP_SIGNATURE_2 = {87, 69, 66, 80};
    private static final byte[] WEBP_CHUNK_TYPE_EXIF = {69, 88, 73, 70};
    static final byte START_CODE = 42;
    private static final byte[] WEBP_VP8_SIGNATURE = {-99, 1, START_CODE};
    private static final byte[] WEBP_CHUNK_TYPE_VP8X = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_VP8L = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_VP8 = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_ANIM = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] WEBP_CHUNK_TYPE_ANMF = "ANMF".getBytes(Charset.defaultCharset());
    static final String[] IFD_FORMAT_NAMES = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] IFD_FORMAT_BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] EXIF_ASCII_PREFIX = {65, 83, 67, 73, 73, 0, 0, 0};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {
        private ByteOrder mByteOrder;
        private DataInputStream mDataInputStream;
        final int mLength;
        int mPosition;
        private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
        private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;

        public ByteOrderedDataInputStream(InputStream inputStream) throws IOException {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.mDataInputStream.available();
        }

        public int getLength() {
            return this.mLength;
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i4) {
            this.mDataInputStream.mark(i4);
        }

        public int peek() {
            return this.mPosition;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i4 = this.mPosition + 1;
            this.mPosition = i4;
            if (i4 <= this.mLength) {
                int read = this.mDataInputStream.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.mPosition += 2;
            return this.mDataInputStream.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i4, int i10) throws IOException {
            int i11 = this.mPosition + i10;
            this.mPosition = i11;
            if (i11 <= this.mLength) {
                if (this.mDataInputStream.read(bArr, i4, i10) != i10) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i4 = this.mPosition + 4;
            this.mPosition = i4;
            if (i4 <= this.mLength) {
                int read = this.mDataInputStream.read();
                int read2 = this.mDataInputStream.read();
                int read3 = this.mDataInputStream.read();
                int read4 = this.mDataInputStream.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.mByteOrder;
                    if (byteOrder == LITTLE_ENDIAN) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == BIG_ENDIAN) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    throw new IOException("Invalid byte order: " + this.mByteOrder);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            Log.d(ExifInterface.TAG, "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i4 = this.mPosition + 8;
            this.mPosition = i4;
            if (i4 <= this.mLength) {
                int read = this.mDataInputStream.read();
                int read2 = this.mDataInputStream.read();
                int read3 = this.mDataInputStream.read();
                int read4 = this.mDataInputStream.read();
                int read5 = this.mDataInputStream.read();
                int read6 = this.mDataInputStream.read();
                int read7 = this.mDataInputStream.read();
                int read8 = this.mDataInputStream.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.mByteOrder;
                    if (byteOrder == LITTLE_ENDIAN) {
                        return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == BIG_ENDIAN) {
                        return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                    }
                    throw new IOException("Invalid byte order: " + this.mByteOrder);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i4 = this.mPosition + 2;
            this.mPosition = i4;
            if (i4 <= this.mLength) {
                int read = this.mDataInputStream.read();
                int read2 = this.mDataInputStream.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.mByteOrder;
                    if (byteOrder == LITTLE_ENDIAN) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == BIG_ENDIAN) {
                        return (short) ((read << 8) + read2);
                    }
                    throw new IOException("Invalid byte order: " + this.mByteOrder);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.mPosition += 2;
            return this.mDataInputStream.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.readUnsignedByte();
        }

        public long readUnsignedInt() throws IOException {
            return readInt() & 4294967295L;
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i4 = this.mPosition + 2;
            this.mPosition = i4;
            if (i4 <= this.mLength) {
                int read = this.mDataInputStream.read();
                int read2 = this.mDataInputStream.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.mByteOrder;
                    if (byteOrder == LITTLE_ENDIAN) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == BIG_ENDIAN) {
                        return (read << 8) + read2;
                    }
                    throw new IOException("Invalid byte order: " + this.mByteOrder);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        public void seek(long j4) throws IOException {
            int i4 = this.mPosition;
            if (i4 > j4) {
                this.mPosition = 0;
                this.mDataInputStream.reset();
                this.mDataInputStream.mark(this.mLength);
            } else {
                j4 -= i4;
            }
            int i10 = (int) j4;
            if (skipBytes(i10) != i10) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.DataInput
        public int skipBytes(int i4) throws IOException {
            int min = Math.min(i4, this.mLength - this.mPosition);
            int i10 = 0;
            while (i10 < min) {
                i10 += this.mDataInputStream.skipBytes(min - i10);
            }
            this.mPosition += i10;
            return i10;
        }

        ByteOrderedDataInputStream(InputStream inputStream, ByteOrder byteOrder) throws IOException {
            this.mByteOrder = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.mDataInputStream = dataInputStream;
            int available = dataInputStream.available();
            this.mLength = available;
            this.mPosition = 0;
            this.mDataInputStream.mark(available);
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i4, int i10) throws IOException {
            int read = this.mDataInputStream.read(bArr, i4, i10);
            this.mPosition += read;
            return read;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            int length = this.mPosition + bArr.length;
            this.mPosition = length;
            if (length <= this.mLength) {
                if (this.mDataInputStream.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public ByteOrderedDataInputStream(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ByteOrderedDataOutputStream extends FilterOutputStream {
        private ByteOrder mByteOrder;
        final OutputStream mOutputStream;

        public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.mOutputStream = outputStream;
            this.mByteOrder = byteOrder;
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.mOutputStream.write(bArr);
        }

        public void writeByte(int i4) throws IOException {
            this.mOutputStream.write(i4);
        }

        public void writeInt(int i4) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write((i4 >>> 0) & 255);
                this.mOutputStream.write((i4 >>> 8) & 255);
                this.mOutputStream.write((i4 >>> 16) & 255);
                this.mOutputStream.write((i4 >>> 24) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((i4 >>> 24) & 255);
                this.mOutputStream.write((i4 >>> 16) & 255);
                this.mOutputStream.write((i4 >>> 8) & 255);
                this.mOutputStream.write((i4 >>> 0) & 255);
            }
        }

        public void writeShort(short s9) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write((s9 >>> 0) & 255);
                this.mOutputStream.write((s9 >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((s9 >>> 8) & 255);
                this.mOutputStream.write((s9 >>> 0) & 255);
            }
        }

        public void writeUnsignedInt(long j4) throws IOException {
            writeInt((int) j4);
        }

        public void writeUnsignedShort(int i4) throws IOException {
            writeShort((short) i4);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i4, int i10) throws IOException {
            this.mOutputStream.write(bArr, i4, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExifAttribute {
        public static final long BYTES_OFFSET_UNKNOWN = -1;
        public final byte[] bytes;
        public final long bytesOffset;
        public final int format;
        public final int numberOfComponents;

        ExifAttribute(int i4, int i10, byte[] bArr) {
            this(i4, i10, -1L, bArr);
        }

        public static ExifAttribute createByte(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(ExifInterface.ASCII);
            return new ExifAttribute(1, bytes.length, bytes);
        }

        public static ExifAttribute createDouble(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[12] * dArr.length]);
            wrap.order(byteOrder);
            for (double d4 : dArr) {
                wrap.putDouble(d4);
            }
            return new ExifAttribute(12, dArr.length, wrap.array());
        }

        public static ExifAttribute createSLong(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[9] * iArr.length]);
            wrap.order(byteOrder);
            for (int i4 : iArr) {
                wrap.putInt(i4);
            }
            return new ExifAttribute(9, iArr.length, wrap.array());
        }

        public static ExifAttribute createSRational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[10] * rationalArr.length]);
            wrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                wrap.putInt((int) rational.numerator);
                wrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(10, rationalArr.length, wrap.array());
        }

        public static ExifAttribute createString(String str) {
            byte[] bytes = (str + (char) 0).getBytes(ExifInterface.ASCII);
            return new ExifAttribute(2, bytes.length, bytes);
        }

        public static ExifAttribute createULong(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j4 : jArr) {
                wrap.putInt((int) j4);
            }
            return new ExifAttribute(4, jArr.length, wrap.array());
        }

        public static ExifAttribute createURational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5] * rationalArr.length]);
            wrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                wrap.putInt((int) rational.numerator);
                wrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(5, rationalArr.length, wrap.array());
        }

        public static ExifAttribute createUShort(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i4 : iArr) {
                wrap.putShort((short) i4);
            }
            return new ExifAttribute(3, iArr.length, wrap.array());
        }

        public double getDoubleValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value != null) {
                if (value instanceof String) {
                    return Double.parseDouble((String) value);
                }
                if (value instanceof long[]) {
                    long[] jArr = (long[]) value;
                    if (jArr.length == 1) {
                        return jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (value instanceof int[]) {
                    int[] iArr = (int[]) value;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (value instanceof double[]) {
                    double[] dArr = (double[]) value;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (value instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) value;
                    if (rationalArr.length == 1) {
                        return rationalArr[0].calculate();
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a double value");
                }
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public int getIntValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value != null) {
                if (value instanceof String) {
                    return Integer.parseInt((String) value);
                }
                if (value instanceof long[]) {
                    long[] jArr = (long[]) value;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (value instanceof int[]) {
                    int[] iArr = (int[]) value;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public String getStringValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                return null;
            }
            if (value instanceof String) {
                return (String) value;
            }
            StringBuilder sb = new StringBuilder();
            int i4 = 0;
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                while (i4 < jArr.length) {
                    sb.append(jArr[i4]);
                    i4++;
                    if (i4 != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                while (i4 < iArr.length) {
                    sb.append(iArr[i4]);
                    i4++;
                    if (i4 != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                while (i4 < dArr.length) {
                    sb.append(dArr[i4]);
                    i4++;
                    if (i4 != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (value instanceof Rational[]) {
                Rational[] rationalArr = (Rational[]) value;
                while (i4 < rationalArr.length) {
                    sb.append(rationalArr[i4].numerator);
                    sb.append(e.f13819f);
                    sb.append(rationalArr[i4].denominator);
                    i4++;
                    if (i4 != rationalArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else {
                return null;
            }
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x019c: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:152:0x019c */
        /* JADX WARN: Removed duplicated region for block: B:176:0x019f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        java.lang.Object getValue(java.nio.ByteOrder r11) {
            /*
                Method dump skipped, instructions count: 452
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.ExifAttribute.getValue(java.nio.ByteOrder):java.lang.Object");
        }

        public int size() {
            return ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[this.format] * this.numberOfComponents;
        }

        public String toString() {
            return "(" + ExifInterface.IFD_FORMAT_NAMES[this.format] + ", data length:" + this.bytes.length + ")";
        }

        ExifAttribute(int i4, int i10, long j4, byte[] bArr) {
            this.format = i4;
            this.numberOfComponents = i10;
            this.bytesOffset = j4;
            this.bytes = bArr;
        }

        public static ExifAttribute createDouble(double d4, ByteOrder byteOrder) {
            return createDouble(new double[]{d4}, byteOrder);
        }

        public static ExifAttribute createSLong(int i4, ByteOrder byteOrder) {
            return createSLong(new int[]{i4}, byteOrder);
        }

        public static ExifAttribute createULong(long j4, ByteOrder byteOrder) {
            return createULong(new long[]{j4}, byteOrder);
        }

        public static ExifAttribute createUShort(int i4, ByteOrder byteOrder) {
            return createUShort(new int[]{i4}, byteOrder);
        }

        public static ExifAttribute createSRational(Rational rational, ByteOrder byteOrder) {
            return createSRational(new Rational[]{rational}, byteOrder);
        }

        public static ExifAttribute createURational(Rational rational, ByteOrder byteOrder) {
            return createURational(new Rational[]{rational}, byteOrder);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface ExifStreamType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface IfdType {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Rational {
        public final long denominator;
        public final long numerator;

        Rational(double d4) {
            this((long) (d4 * 10000.0d), 10000L);
        }

        public double calculate() {
            return this.numerator / this.denominator;
        }

        public String toString() {
            return this.numerator + "/" + this.denominator;
        }

        Rational(long j4, long j10) {
            if (j10 == 0) {
                this.numerator = 0L;
                this.denominator = 1L;
                return;
            }
            this.numerator = j4;
            this.denominator = j10;
        }
    }

    static {
        ExifTag[] exifTagArr;
        ExifTag[] exifTagArr2 = {new ExifTag(TAG_NEW_SUBFILE_TYPE, 254, 4), new ExifTag(TAG_SUBFILE_TYPE, 255, 4), new ExifTag(TAG_IMAGE_WIDTH, 256, 3, 4), new ExifTag(TAG_IMAGE_LENGTH, 257, 3, 4), new ExifTag(TAG_BITS_PER_SAMPLE, 258, 3), new ExifTag(TAG_COMPRESSION, 259, 3), new ExifTag(TAG_PHOTOMETRIC_INTERPRETATION, 262, 3), new ExifTag(TAG_IMAGE_DESCRIPTION, com.facebook.imagepipeline.common.e.f12206f, 2), new ExifTag(TAG_MAKE, 271, 2), new ExifTag(TAG_MODEL, 272, 2), new ExifTag(TAG_STRIP_OFFSETS, 273, 3, 4), new ExifTag(TAG_ORIENTATION, com.facebook.imageutils.e.f13400d, 3), new ExifTag(TAG_SAMPLES_PER_PIXEL, 277, 3), new ExifTag(TAG_ROWS_PER_STRIP, 278, 3, 4), new ExifTag(TAG_STRIP_BYTE_COUNTS, 279, 3, 4), new ExifTag(TAG_X_RESOLUTION, 282, 5), new ExifTag(TAG_Y_RESOLUTION, 283, 5), new ExifTag(TAG_PLANAR_CONFIGURATION, 284, 3), new ExifTag(TAG_RESOLUTION_UNIT, 296, 3), new ExifTag(TAG_TRANSFER_FUNCTION, 301, 3), new ExifTag(TAG_SOFTWARE, 305, 2), new ExifTag(TAG_DATETIME, 306, 2), new ExifTag(TAG_ARTIST, 315, 2), new ExifTag(TAG_WHITE_POINT, TypedValues.Attributes.TYPE_PIVOT_TARGET, 5), new ExifTag(TAG_PRIMARY_CHROMATICITIES, 319, 5), new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT, InputDeviceCompat.SOURCE_DPAD, 4), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, 4), new ExifTag(TAG_Y_CB_CR_COEFFICIENTS, 529, 5), new ExifTag(TAG_Y_CB_CR_SUB_SAMPLING, 530, 3), new ExifTag(TAG_Y_CB_CR_POSITIONING, 531, 3), new ExifTag(TAG_REFERENCE_BLACK_WHITE, 532, 5), new ExifTag(TAG_COPYRIGHT, 33432, 2), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, 34853, 4), new ExifTag(TAG_RW2_SENSOR_TOP_BORDER, 4, 4), new ExifTag(TAG_RW2_SENSOR_LEFT_BORDER, 5, 4), new ExifTag(TAG_RW2_SENSOR_BOTTOM_BORDER, 6, 4), new ExifTag(TAG_RW2_SENSOR_RIGHT_BORDER, 7, 4), new ExifTag(TAG_RW2_ISO, 23, 3), new ExifTag(TAG_RW2_JPG_FROM_RAW, 46, 7), new ExifTag(TAG_XMP, 700, 1)};
        IFD_TIFF_TAGS = exifTagArr2;
        ExifTag[] exifTagArr3 = {new ExifTag(TAG_EXPOSURE_TIME, 33434, 5), new ExifTag(TAG_F_NUMBER, 33437, 5), new ExifTag(TAG_EXPOSURE_PROGRAM, 34850, 3), new ExifTag(TAG_SPECTRAL_SENSITIVITY, 34852, 2), new ExifTag(TAG_PHOTOGRAPHIC_SENSITIVITY, 34855, 3), new ExifTag(TAG_OECF, 34856, 7), new ExifTag(TAG_SENSITIVITY_TYPE, 34864, 3), new ExifTag(TAG_STANDARD_OUTPUT_SENSITIVITY, 34865, 4), new ExifTag(TAG_RECOMMENDED_EXPOSURE_INDEX, 34866, 4), new ExifTag(TAG_ISO_SPEED, 34867, 4), new ExifTag(TAG_ISO_SPEED_LATITUDE_YYY, 34868, 4), new ExifTag(TAG_ISO_SPEED_LATITUDE_ZZZ, 34869, 4), new ExifTag(TAG_EXIF_VERSION, 36864, 2), new ExifTag(TAG_DATETIME_ORIGINAL, 36867, 2), new ExifTag(TAG_DATETIME_DIGITIZED, 36868, 2), new ExifTag(TAG_OFFSET_TIME, 36880, 2), new ExifTag(TAG_OFFSET_TIME_ORIGINAL, 36881, 2), new ExifTag(TAG_OFFSET_TIME_DIGITIZED, 36882, 2), new ExifTag(TAG_COMPONENTS_CONFIGURATION, 37121, 7), new ExifTag(TAG_COMPRESSED_BITS_PER_PIXEL, 37122, 5), new ExifTag(TAG_SHUTTER_SPEED_VALUE, 37377, 10), new ExifTag(TAG_APERTURE_VALUE, 37378, 5), new ExifTag(TAG_BRIGHTNESS_VALUE, 37379, 10), new ExifTag(TAG_EXPOSURE_BIAS_VALUE, 37380, 10), new ExifTag(TAG_MAX_APERTURE_VALUE, 37381, 5), new ExifTag(TAG_SUBJECT_DISTANCE, 37382, 5), new ExifTag(TAG_METERING_MODE, 37383, 3), new ExifTag(TAG_LIGHT_SOURCE, 37384, 3), new ExifTag(TAG_FLASH, 37385, 3), new ExifTag(TAG_FOCAL_LENGTH, 37386, 5), new ExifTag(TAG_SUBJECT_AREA, 37396, 3), new ExifTag(TAG_MAKER_NOTE, 37500, 7), new ExifTag(TAG_USER_COMMENT, 37510, 7), new ExifTag(TAG_SUBSEC_TIME, 37520, 2), new ExifTag(TAG_SUBSEC_TIME_ORIGINAL, 37521, 2), new ExifTag(TAG_SUBSEC_TIME_DIGITIZED, 37522, 2), new ExifTag(TAG_FLASHPIX_VERSION, 40960, 7), new ExifTag(TAG_COLOR_SPACE, 40961, 3), new ExifTag(TAG_PIXEL_X_DIMENSION, 40962, 3, 4), new ExifTag(TAG_PIXEL_Y_DIMENSION, 40963, 3, 4), new ExifTag(TAG_RELATED_SOUND_FILE, 40964, 2), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, 4), new ExifTag(TAG_FLASH_ENERGY, 41483, 5), new ExifTag(TAG_SPATIAL_FREQUENCY_RESPONSE, 41484, 7), new ExifTag(TAG_FOCAL_PLANE_X_RESOLUTION, 41486, 5), new ExifTag(TAG_FOCAL_PLANE_Y_RESOLUTION, 41487, 5), new ExifTag(TAG_FOCAL_PLANE_RESOLUTION_UNIT, 41488, 3), new ExifTag(TAG_SUBJECT_LOCATION, 41492, 3), new ExifTag(TAG_EXPOSURE_INDEX, 41493, 5), new ExifTag(TAG_SENSING_METHOD, 41495, 3), new ExifTag(TAG_FILE_SOURCE, 41728, 7), new ExifTag(TAG_SCENE_TYPE, 41729, 7), new ExifTag(TAG_CFA_PATTERN, 41730, 7), new ExifTag(TAG_CUSTOM_RENDERED, 41985, 3), new ExifTag(TAG_EXPOSURE_MODE, 41986, 3), new ExifTag(TAG_WHITE_BALANCE, 41987, 3), new ExifTag(TAG_DIGITAL_ZOOM_RATIO, 41988, 5), new ExifTag(TAG_FOCAL_LENGTH_IN_35MM_FILM, 41989, 3), new ExifTag(TAG_SCENE_CAPTURE_TYPE, 41990, 3), new ExifTag(TAG_GAIN_CONTROL, 41991, 3), new ExifTag(TAG_CONTRAST, 41992, 3), new ExifTag(TAG_SATURATION, 41993, 3), new ExifTag(TAG_SHARPNESS, 41994, 3), new ExifTag(TAG_DEVICE_SETTING_DESCRIPTION, 41995, 7), new ExifTag(TAG_SUBJECT_DISTANCE_RANGE, 41996, 3), new ExifTag(TAG_IMAGE_UNIQUE_ID, 42016, 2), new ExifTag("CameraOwnerName", 42032, 2), new ExifTag(TAG_BODY_SERIAL_NUMBER, 42033, 2), new ExifTag(TAG_LENS_SPECIFICATION, 42034, 5), new ExifTag(TAG_LENS_MAKE, 42035, 2), new ExifTag(TAG_LENS_MODEL, 42036, 2), new ExifTag(TAG_GAMMA, 42240, 5), new ExifTag(TAG_DNG_VERSION, 50706, 1), new ExifTag(TAG_DEFAULT_CROP_SIZE, 50720, 3, 4)};
        IFD_EXIF_TAGS = exifTagArr3;
        ExifTag[] exifTagArr4 = {new ExifTag(TAG_GPS_VERSION_ID, 0, 1), new ExifTag(TAG_GPS_LATITUDE_REF, 1, 2), new ExifTag(TAG_GPS_LATITUDE, 2, 5, 10), new ExifTag(TAG_GPS_LONGITUDE_REF, 3, 2), new ExifTag(TAG_GPS_LONGITUDE, 4, 5, 10), new ExifTag(TAG_GPS_ALTITUDE_REF, 5, 1), new ExifTag(TAG_GPS_ALTITUDE, 6, 5), new ExifTag(TAG_GPS_TIMESTAMP, 7, 5), new ExifTag(TAG_GPS_SATELLITES, 8, 2), new ExifTag(TAG_GPS_STATUS, 9, 2), new ExifTag(TAG_GPS_MEASURE_MODE, 10, 2), new ExifTag(TAG_GPS_DOP, 11, 5), new ExifTag(TAG_GPS_SPEED_REF, 12, 2), new ExifTag(TAG_GPS_SPEED, 13, 5), new ExifTag(TAG_GPS_TRACK_REF, 14, 2), new ExifTag(TAG_GPS_TRACK, 15, 5), new ExifTag(TAG_GPS_IMG_DIRECTION_REF, 16, 2), new ExifTag(TAG_GPS_IMG_DIRECTION, 17, 5), new ExifTag(TAG_GPS_MAP_DATUM, 18, 2), new ExifTag(TAG_GPS_DEST_LATITUDE_REF, 19, 2), new ExifTag(TAG_GPS_DEST_LATITUDE, 20, 5), new ExifTag(TAG_GPS_DEST_LONGITUDE_REF, 21, 2), new ExifTag(TAG_GPS_DEST_LONGITUDE, 22, 5), new ExifTag(TAG_GPS_DEST_BEARING_REF, 23, 2), new ExifTag(TAG_GPS_DEST_BEARING, 24, 5), new ExifTag(TAG_GPS_DEST_DISTANCE_REF, 25, 2), new ExifTag(TAG_GPS_DEST_DISTANCE, 26, 5), new ExifTag(TAG_GPS_PROCESSING_METHOD, 27, 7), new ExifTag(TAG_GPS_AREA_INFORMATION, 28, 7), new ExifTag(TAG_GPS_DATESTAMP, 29, 2), new ExifTag(TAG_GPS_DIFFERENTIAL, 30, 3), new ExifTag(TAG_GPS_H_POSITIONING_ERROR, 31, 5)};
        IFD_GPS_TAGS = exifTagArr4;
        ExifTag[] exifTagArr5 = {new ExifTag(TAG_INTEROPERABILITY_INDEX, 1, 2)};
        IFD_INTEROPERABILITY_TAGS = exifTagArr5;
        ExifTag[] exifTagArr6 = {new ExifTag(TAG_NEW_SUBFILE_TYPE, 254, 4), new ExifTag(TAG_SUBFILE_TYPE, 255, 4), new ExifTag(TAG_THUMBNAIL_IMAGE_WIDTH, 256, 3, 4), new ExifTag(TAG_THUMBNAIL_IMAGE_LENGTH, 257, 3, 4), new ExifTag(TAG_BITS_PER_SAMPLE, 258, 3), new ExifTag(TAG_COMPRESSION, 259, 3), new ExifTag(TAG_PHOTOMETRIC_INTERPRETATION, 262, 3), new ExifTag(TAG_IMAGE_DESCRIPTION, com.facebook.imagepipeline.common.e.f12206f, 2), new ExifTag(TAG_MAKE, 271, 2), new ExifTag(TAG_MODEL, 272, 2), new ExifTag(TAG_STRIP_OFFSETS, 273, 3, 4), new ExifTag(TAG_THUMBNAIL_ORIENTATION, com.facebook.imageutils.e.f13400d, 3), new ExifTag(TAG_SAMPLES_PER_PIXEL, 277, 3), new ExifTag(TAG_ROWS_PER_STRIP, 278, 3, 4), new ExifTag(TAG_STRIP_BYTE_COUNTS, 279, 3, 4), new ExifTag(TAG_X_RESOLUTION, 282, 5), new ExifTag(TAG_Y_RESOLUTION, 283, 5), new ExifTag(TAG_PLANAR_CONFIGURATION, 284, 3), new ExifTag(TAG_RESOLUTION_UNIT, 296, 3), new ExifTag(TAG_TRANSFER_FUNCTION, 301, 3), new ExifTag(TAG_SOFTWARE, 305, 2), new ExifTag(TAG_DATETIME, 306, 2), new ExifTag(TAG_ARTIST, 315, 2), new ExifTag(TAG_WHITE_POINT, TypedValues.Attributes.TYPE_PIVOT_TARGET, 5), new ExifTag(TAG_PRIMARY_CHROMATICITIES, 319, 5), new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT, InputDeviceCompat.SOURCE_DPAD, 4), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, 4), new ExifTag(TAG_Y_CB_CR_COEFFICIENTS, 529, 5), new ExifTag(TAG_Y_CB_CR_SUB_SAMPLING, 530, 3), new ExifTag(TAG_Y_CB_CR_POSITIONING, 531, 3), new ExifTag(TAG_REFERENCE_BLACK_WHITE, 532, 5), new ExifTag(TAG_COPYRIGHT, 33432, 2), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, 34853, 4), new ExifTag(TAG_DNG_VERSION, 50706, 1), new ExifTag(TAG_DEFAULT_CROP_SIZE, 50720, 3, 4)};
        IFD_THUMBNAIL_TAGS = exifTagArr6;
        TAG_RAF_IMAGE_SIZE = new ExifTag(TAG_STRIP_OFFSETS, 273, 3);
        ExifTag[] exifTagArr7 = {new ExifTag(TAG_ORF_THUMBNAIL_IMAGE, 256, 7), new ExifTag(TAG_ORF_CAMERA_SETTINGS_IFD_POINTER, 8224, 4), new ExifTag(TAG_ORF_IMAGE_PROCESSING_IFD_POINTER, 8256, 4)};
        ORF_MAKER_NOTE_TAGS = exifTagArr7;
        ExifTag[] exifTagArr8 = {new ExifTag(TAG_ORF_PREVIEW_IMAGE_START, 257, 4), new ExifTag(TAG_ORF_PREVIEW_IMAGE_LENGTH, 258, 4)};
        ORF_CAMERA_SETTINGS_TAGS = exifTagArr8;
        ExifTag[] exifTagArr9 = {new ExifTag(TAG_ORF_ASPECT_FRAME, 4371, 3)};
        ORF_IMAGE_PROCESSING_TAGS = exifTagArr9;
        ExifTag[] exifTagArr10 = {new ExifTag(TAG_COLOR_SPACE, 55, 3)};
        PEF_TAGS = exifTagArr10;
        ExifTag[][] exifTagArr11 = {exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr6, exifTagArr2, exifTagArr7, exifTagArr8, exifTagArr9, exifTagArr10};
        EXIF_TAGS = exifTagArr11;
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, 34853, 4), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, 4), new ExifTag(TAG_ORF_CAMERA_SETTINGS_IFD_POINTER, 8224, 1), new ExifTag(TAG_ORF_IMAGE_PROCESSING_IFD_POINTER, 8256, 1)};
        JPEG_INTERCHANGE_FORMAT_TAG = new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT, InputDeviceCompat.SOURCE_DPAD, 4);
        JPEG_INTERCHANGE_FORMAT_LENGTH_TAG = new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, 4);
        sExifTagMapsForReading = new HashMap[exifTagArr11.length];
        sExifTagMapsForWriting = new HashMap[exifTagArr11.length];
        sTagSetForCompatibility = new HashSet<>(Arrays.asList(TAG_F_NUMBER, TAG_DIGITAL_ZOOM_RATIO, TAG_EXPOSURE_TIME, TAG_SUBJECT_DISTANCE, TAG_GPS_TIMESTAMP));
        sExifPointerTagMap = new HashMap<>();
        Charset forName = Charset.forName("US-ASCII");
        ASCII = forName;
        IDENTIFIER_EXIF_APP1 = "Exif\u0000\u0000".getBytes(forName);
        IDENTIFIER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        sFormatterPrimary = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        sFormatterSecondary = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i4 = 0;
        while (true) {
            ExifTag[][] exifTagArr12 = EXIF_TAGS;
            if (i4 < exifTagArr12.length) {
                sExifTagMapsForReading[i4] = new HashMap<>();
                sExifTagMapsForWriting[i4] = new HashMap<>();
                for (ExifTag exifTag : exifTagArr12[i4]) {
                    sExifTagMapsForReading[i4].put(Integer.valueOf(exifTag.number), exifTag);
                    sExifTagMapsForWriting[i4].put(exifTag.name, exifTag);
                }
                i4++;
            } else {
                HashMap<Integer, Integer> hashMap = sExifPointerTagMap;
                ExifTag[] exifTagArr13 = EXIF_POINTER_TAGS;
                hashMap.put(Integer.valueOf(exifTagArr13[0].number), 5);
                hashMap.put(Integer.valueOf(exifTagArr13[1].number), 1);
                hashMap.put(Integer.valueOf(exifTagArr13[2].number), 2);
                hashMap.put(Integer.valueOf(exifTagArr13[3].number), 3);
                hashMap.put(Integer.valueOf(exifTagArr13[4].number), 7);
                hashMap.put(Integer.valueOf(exifTagArr13[5].number), 8);
                NON_ZERO_TIME_PATTERN = Pattern.compile(".*[1-9].*");
                GPS_TIMESTAMP_PATTERN = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                DATETIME_PRIMARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                DATETIME_SECONDARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
        }
    }

    public ExifInterface(@NonNull File file) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(file, "file cannot be null");
        initForFilename(file.getAbsolutePath());
    }

    private void addDefaultValuesForCompatibility() {
        String attribute = getAttribute(TAG_DATETIME_ORIGINAL);
        if (attribute != null && getAttribute(TAG_DATETIME) == null) {
            this.mAttributes[0].put(TAG_DATETIME, ExifAttribute.createString(attribute));
        }
        if (getAttribute(TAG_IMAGE_WIDTH) == null) {
            this.mAttributes[0].put(TAG_IMAGE_WIDTH, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute(TAG_IMAGE_LENGTH) == null) {
            this.mAttributes[0].put(TAG_IMAGE_LENGTH, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute(TAG_ORIENTATION) == null) {
            this.mAttributes[0].put(TAG_ORIENTATION, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute(TAG_LIGHT_SOURCE) == null) {
            this.mAttributes[1].put(TAG_LIGHT_SOURCE, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
    }

    private static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i4 = 0; i4 < bArr.length; i4++) {
            sb.append(String.format("%02x", Byte.valueOf(bArr[i4])));
        }
        return sb.toString();
    }

    private static void closeFileDescriptor(FileDescriptor fileDescriptor) {
        try {
            Os.close(fileDescriptor);
        } catch (Exception unused) {
            Log.e(TAG, "Error closing fd.");
        }
    }

    private static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception unused) {
            }
        }
    }

    private String convertDecimalDegree(double d4) {
        long j4 = (long) d4;
        double d10 = d4 - j4;
        long j10 = (long) (d10 * 60.0d);
        long round = Math.round((d10 - (j10 / 60.0d)) * 3600.0d * 1.0E7d);
        return j4 + "/1," + j10 + "/1," + round + "/10000000";
    }

    private static double convertRationalLatLonToDouble(String str, String str2) {
        try {
            String[] split = str.split(",", -1);
            String[] split2 = split[0].split("/", -1);
            String[] split3 = split[1].split("/", -1);
            String[] split4 = split[2].split("/", -1);
            double parseDouble = (Double.parseDouble(split2[0].trim()) / Double.parseDouble(split2[1].trim())) + ((Double.parseDouble(split3[0].trim()) / Double.parseDouble(split3[1].trim())) / 60.0d) + ((Double.parseDouble(split4[0].trim()) / Double.parseDouble(split4[1].trim())) / 3600.0d);
            if (!str2.equals(LATITUDE_SOUTH) && !str2.equals(LONGITUDE_WEST)) {
                if (!str2.equals("N") && !str2.equals(LONGITUDE_EAST)) {
                    throw new IllegalArgumentException();
                }
                return parseDouble;
            }
            return -parseDouble;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException unused) {
            throw new IllegalArgumentException();
        }
    }

    private static long[] convertToLongArray(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                jArr[i4] = iArr[i4];
            }
            return jArr;
        } else if (obj instanceof long[]) {
            return (long[]) obj;
        } else {
            return null;
        }
    }

    private static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        int i4 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i4;
            }
            i4 += read;
            outputStream.write(bArr, 0, read);
        }
    }

    private void copyChunksUpToGivenChunkType(ByteOrderedDataInputStream byteOrderedDataInputStream, ByteOrderedDataOutputStream byteOrderedDataOutputStream, byte[] bArr, byte[] bArr2) throws IOException {
        Charset charset;
        String str;
        while (true) {
            byte[] bArr3 = new byte[4];
            if (byteOrderedDataInputStream.read(bArr3) != 4) {
                StringBuilder sb = new StringBuilder();
                sb.append("Encountered invalid length while copying WebP chunks up tochunk type ");
                sb.append(new String(bArr, ASCII));
                if (bArr2 == null) {
                    str = "";
                } else {
                    str = " or " + new String(bArr2, charset);
                }
                sb.append(str);
                throw new IOException(sb.toString());
            }
            copyWebPChunk(byteOrderedDataInputStream, byteOrderedDataOutputStream, bArr3);
            if (Arrays.equals(bArr3, bArr)) {
                return;
            }
            if (bArr2 != null && Arrays.equals(bArr3, bArr2)) {
                return;
            }
        }
    }

    private void copyWebPChunk(ByteOrderedDataInputStream byteOrderedDataInputStream, ByteOrderedDataOutputStream byteOrderedDataOutputStream, byte[] bArr) throws IOException {
        int readInt = byteOrderedDataInputStream.readInt();
        byteOrderedDataOutputStream.write(bArr);
        byteOrderedDataOutputStream.writeInt(readInt);
        if (readInt % 2 == 1) {
            readInt++;
        }
        copy(byteOrderedDataInputStream, byteOrderedDataOutputStream, readInt);
    }

    @Nullable
    private ExifAttribute getExifAttribute(@NonNull String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        if (TAG_ISO_SPEED_RATINGS.equals(str)) {
            if (DEBUG) {
                Log.d(TAG, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = TAG_PHOTOGRAPHIC_SENSITIVITY;
        }
        for (int i4 = 0; i4 < EXIF_TAGS.length; i4++) {
            ExifAttribute exifAttribute = this.mAttributes[i4].get(str);
            if (exifAttribute != null) {
                return exifAttribute;
            }
        }
        return null;
    }

    private void getHeifAttributes(final ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        String str;
        String str2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                mediaMetadataRetriever.setDataSource(new MediaDataSource() { // from class: androidx.exifinterface.media.ExifInterface.1
                    long mPosition;

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() throws IOException {
                    }

                    @Override // android.media.MediaDataSource
                    public long getSize() throws IOException {
                        return -1L;
                    }

                    @Override // android.media.MediaDataSource
                    public int readAt(long j4, byte[] bArr, int i4, int i10) throws IOException {
                        if (i10 == 0) {
                            return 0;
                        }
                        if (j4 < 0) {
                            return -1;
                        }
                        try {
                            long j10 = this.mPosition;
                            if (j10 != j4) {
                                if (j10 >= 0 && j4 >= j10 + byteOrderedDataInputStream.available()) {
                                    return -1;
                                }
                                byteOrderedDataInputStream.seek(j4);
                                this.mPosition = j4;
                            }
                            if (i10 > byteOrderedDataInputStream.available()) {
                                i10 = byteOrderedDataInputStream.available();
                            }
                            int read = byteOrderedDataInputStream.read(bArr, i4, i10);
                            if (read >= 0) {
                                this.mPosition += read;
                                return read;
                            }
                        } catch (IOException unused) {
                        }
                        this.mPosition = -1L;
                        return -1;
                    }
                });
            } else {
                FileDescriptor fileDescriptor = this.mSeekableFileDescriptor;
                if (fileDescriptor != null) {
                    mediaMetadataRetriever.setDataSource(fileDescriptor);
                } else {
                    String str3 = this.mFilename;
                    if (str3 == null) {
                        return;
                    }
                    mediaMetadataRetriever.setDataSource(str3);
                }
            }
            String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
            String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
            String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
            String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
            String str4 = null;
            if ("yes".equals(extractMetadata3)) {
                str4 = mediaMetadataRetriever.extractMetadata(29);
                str = mediaMetadataRetriever.extractMetadata(30);
                str2 = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(extractMetadata4)) {
                str4 = mediaMetadataRetriever.extractMetadata(18);
                str = mediaMetadataRetriever.extractMetadata(19);
                str2 = mediaMetadataRetriever.extractMetadata(24);
            } else {
                str = null;
                str2 = null;
            }
            if (str4 != null) {
                this.mAttributes[0].put(TAG_IMAGE_WIDTH, ExifAttribute.createUShort(Integer.parseInt(str4), this.mExifByteOrder));
            }
            if (str != null) {
                this.mAttributes[0].put(TAG_IMAGE_LENGTH, ExifAttribute.createUShort(Integer.parseInt(str), this.mExifByteOrder));
            }
            if (str2 != null) {
                int i4 = 1;
                int parseInt = Integer.parseInt(str2);
                if (parseInt == 90) {
                    i4 = 6;
                } else if (parseInt == 180) {
                    i4 = 3;
                } else if (parseInt == 270) {
                    i4 = 8;
                }
                this.mAttributes[0].put(TAG_ORIENTATION, ExifAttribute.createUShort(i4, this.mExifByteOrder));
            }
            if (extractMetadata != null && extractMetadata2 != null) {
                int parseInt2 = Integer.parseInt(extractMetadata);
                int parseInt3 = Integer.parseInt(extractMetadata2);
                if (parseInt3 > 6) {
                    byteOrderedDataInputStream.seek(parseInt2);
                    byte[] bArr = new byte[6];
                    if (byteOrderedDataInputStream.read(bArr) == 6) {
                        int i10 = parseInt2 + 6;
                        int i11 = parseInt3 - 6;
                        if (Arrays.equals(bArr, IDENTIFIER_EXIF_APP1)) {
                            byte[] bArr2 = new byte[i11];
                            if (byteOrderedDataInputStream.read(bArr2) == i11) {
                                this.mOffsetToExifData = i10;
                                readExifSegment(bArr2, 0);
                            } else {
                                throw new IOException("Can't read exif");
                            }
                        } else {
                            throw new IOException("Invalid identifier");
                        }
                    } else {
                        throw new IOException("Can't read identifier");
                    }
                } else {
                    throw new IOException("Invalid exif length");
                }
            }
            if (DEBUG) {
                Log.d(TAG, "Heif meta: " + str4 + y.b.f83919g + str + ", rotation " + str2);
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a8, code lost:
        r22.setByteOrder(r21.mExifByteOrder);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ad, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bd A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void getJpegAttributes(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r22, int r23, int r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getJpegAttributes(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream, int, int):void");
    }

    private int getMimeType(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (isJpegFormat(bArr)) {
            return 4;
        }
        if (isRafFormat(bArr)) {
            return 9;
        }
        if (isHeifFormat(bArr)) {
            return 12;
        }
        if (isOrfFormat(bArr)) {
            return 7;
        }
        if (isRw2Format(bArr)) {
            return 10;
        }
        if (isPngFormat(bArr)) {
            return 13;
        }
        return isWebpFormat(bArr) ? 14 : 0;
    }

    private void getOrfAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        getRawAttributes(byteOrderedDataInputStream);
        ExifAttribute exifAttribute = this.mAttributes[1].get(TAG_MAKER_NOTE);
        if (exifAttribute != null) {
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
            byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
            byte[] bArr = ORF_MAKER_NOTE_HEADER_1;
            byte[] bArr2 = new byte[bArr.length];
            byteOrderedDataInputStream2.readFully(bArr2);
            byteOrderedDataInputStream2.seek(0L);
            byte[] bArr3 = ORF_MAKER_NOTE_HEADER_2;
            byte[] bArr4 = new byte[bArr3.length];
            byteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                byteOrderedDataInputStream2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                byteOrderedDataInputStream2.seek(12L);
            }
            readImageFileDirectory(byteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = this.mAttributes[7].get(TAG_ORF_PREVIEW_IMAGE_START);
            ExifAttribute exifAttribute3 = this.mAttributes[7].get(TAG_ORF_PREVIEW_IMAGE_LENGTH);
            if (exifAttribute2 != null && exifAttribute3 != null) {
                this.mAttributes[5].put(TAG_JPEG_INTERCHANGE_FORMAT, exifAttribute2);
                this.mAttributes[5].put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, exifAttribute3);
            }
            ExifAttribute exifAttribute4 = this.mAttributes[8].get(TAG_ORF_ASPECT_FRAME);
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.getValue(this.mExifByteOrder);
                if (iArr != null && iArr.length == 4) {
                    if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
                        return;
                    }
                    int i4 = (iArr[2] - iArr[0]) + 1;
                    int i10 = (iArr[3] - iArr[1]) + 1;
                    if (i4 < i10) {
                        int i11 = i4 + i10;
                        i10 = i11 - i10;
                        i4 = i11 - i10;
                    }
                    ExifAttribute createUShort = ExifAttribute.createUShort(i4, this.mExifByteOrder);
                    ExifAttribute createUShort2 = ExifAttribute.createUShort(i10, this.mExifByteOrder);
                    this.mAttributes[0].put(TAG_IMAGE_WIDTH, createUShort);
                    this.mAttributes[0].put(TAG_IMAGE_LENGTH, createUShort2);
                    return;
                }
                Log.w(TAG, "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
            }
        }
    }

    private void getPngAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        if (DEBUG) {
            Log.d(TAG, "getPngAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.mark(0);
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        byte[] bArr = PNG_SIGNATURE;
        byteOrderedDataInputStream.skipBytes(bArr.length);
        int length = bArr.length + 0;
        while (true) {
            try {
                int readInt = byteOrderedDataInputStream.readInt();
                int i4 = length + 4;
                byte[] bArr2 = new byte[4];
                if (byteOrderedDataInputStream.read(bArr2) == 4) {
                    int i10 = i4 + 4;
                    if (i10 == 16 && !Arrays.equals(bArr2, PNG_CHUNK_TYPE_IHDR)) {
                        throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                    }
                    if (Arrays.equals(bArr2, PNG_CHUNK_TYPE_IEND)) {
                        return;
                    }
                    if (Arrays.equals(bArr2, PNG_CHUNK_TYPE_EXIF)) {
                        byte[] bArr3 = new byte[readInt];
                        if (byteOrderedDataInputStream.read(bArr3) == readInt) {
                            int readInt2 = byteOrderedDataInputStream.readInt();
                            CRC32 crc32 = new CRC32();
                            crc32.update(bArr2);
                            crc32.update(bArr3);
                            if (((int) crc32.getValue()) == readInt2) {
                                this.mOffsetToExifData = i10;
                                readExifSegment(bArr3, 0);
                                validateImages();
                                setThumbnailData(new ByteOrderedDataInputStream(bArr3));
                                return;
                            }
                            throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                        }
                        throw new IOException("Failed to read given length for given PNG chunk type: " + byteArrayToHexString(bArr2));
                    }
                    int i11 = readInt + 4;
                    byteOrderedDataInputStream.skipBytes(i11);
                    length = i10 + i11;
                } else {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    private void getRafAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        boolean z9 = DEBUG;
        if (z9) {
            Log.d(TAG, "getRafAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.mark(0);
        byteOrderedDataInputStream.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        byteOrderedDataInputStream.read(bArr);
        byteOrderedDataInputStream.read(bArr2);
        byteOrderedDataInputStream.read(bArr3);
        int i4 = ByteBuffer.wrap(bArr).getInt();
        int i10 = ByteBuffer.wrap(bArr2).getInt();
        int i11 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i10];
        byteOrderedDataInputStream.seek(i4);
        byteOrderedDataInputStream.read(bArr4);
        getJpegAttributes(new ByteOrderedDataInputStream(bArr4), i4, 5);
        byteOrderedDataInputStream.seek(i11);
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        int readInt = byteOrderedDataInputStream.readInt();
        if (z9) {
            Log.d(TAG, "numberOfDirectoryEntry: " + readInt);
        }
        for (int i12 = 0; i12 < readInt; i12++) {
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (readUnsignedShort == TAG_RAF_IMAGE_SIZE.number) {
                short readShort = byteOrderedDataInputStream.readShort();
                short readShort2 = byteOrderedDataInputStream.readShort();
                ExifAttribute createUShort = ExifAttribute.createUShort(readShort, this.mExifByteOrder);
                ExifAttribute createUShort2 = ExifAttribute.createUShort(readShort2, this.mExifByteOrder);
                this.mAttributes[0].put(TAG_IMAGE_LENGTH, createUShort);
                this.mAttributes[0].put(TAG_IMAGE_WIDTH, createUShort2);
                if (DEBUG) {
                    Log.d(TAG, "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                    return;
                }
                return;
            }
            byteOrderedDataInputStream.skipBytes(readUnsignedShort2);
        }
    }

    private void getRawAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        ExifAttribute exifAttribute;
        parseTiffHeaders(byteOrderedDataInputStream, byteOrderedDataInputStream.available());
        readImageFileDirectory(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 5);
        updateImageSizeValues(byteOrderedDataInputStream, 4);
        validateImages();
        if (this.mMimeType != 8 || (exifAttribute = this.mAttributes[1].get(TAG_MAKER_NOTE)) == null) {
            return;
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
        byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
        byteOrderedDataInputStream2.seek(6L);
        readImageFileDirectory(byteOrderedDataInputStream2, 9);
        ExifAttribute exifAttribute2 = this.mAttributes[9].get(TAG_COLOR_SPACE);
        if (exifAttribute2 != null) {
            this.mAttributes[1].put(TAG_COLOR_SPACE, exifAttribute2);
        }
    }

    private void getRw2Attributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        if (DEBUG) {
            Log.d(TAG, "getRw2Attributes starting with: " + byteOrderedDataInputStream);
        }
        getRawAttributes(byteOrderedDataInputStream);
        ExifAttribute exifAttribute = this.mAttributes[0].get(TAG_RW2_JPG_FROM_RAW);
        if (exifAttribute != null) {
            getJpegAttributes(new ByteOrderedDataInputStream(exifAttribute.bytes), (int) exifAttribute.bytesOffset, 5);
        }
        ExifAttribute exifAttribute2 = this.mAttributes[0].get(TAG_RW2_ISO);
        ExifAttribute exifAttribute3 = this.mAttributes[1].get(TAG_PHOTOGRAPHIC_SENSITIVITY);
        if (exifAttribute2 == null || exifAttribute3 != null) {
            return;
        }
        this.mAttributes[1].put(TAG_PHOTOGRAPHIC_SENSITIVITY, exifAttribute2);
    }

    private void getStandaloneAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        byte[] bArr = IDENTIFIER_EXIF_APP1;
        byteOrderedDataInputStream.skipBytes(bArr.length);
        byte[] bArr2 = new byte[byteOrderedDataInputStream.available()];
        byteOrderedDataInputStream.readFully(bArr2);
        this.mOffsetToExifData = bArr.length;
        readExifSegment(bArr2, 0);
    }

    private void getWebpAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        if (DEBUG) {
            Log.d(TAG, "getWebpAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.mark(0);
        byteOrderedDataInputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        byteOrderedDataInputStream.skipBytes(WEBP_SIGNATURE_1.length);
        int readInt = byteOrderedDataInputStream.readInt() + 8;
        int skipBytes = byteOrderedDataInputStream.skipBytes(WEBP_SIGNATURE_2.length) + 8;
        while (true) {
            try {
                byte[] bArr = new byte[4];
                if (byteOrderedDataInputStream.read(bArr) == 4) {
                    int readInt2 = byteOrderedDataInputStream.readInt();
                    int i4 = skipBytes + 4 + 4;
                    if (Arrays.equals(WEBP_CHUNK_TYPE_EXIF, bArr)) {
                        byte[] bArr2 = new byte[readInt2];
                        if (byteOrderedDataInputStream.read(bArr2) == readInt2) {
                            this.mOffsetToExifData = i4;
                            readExifSegment(bArr2, 0);
                            setThumbnailData(new ByteOrderedDataInputStream(bArr2));
                            return;
                        }
                        throw new IOException("Failed to read given length for given PNG chunk type: " + byteArrayToHexString(bArr));
                    }
                    if (readInt2 % 2 == 1) {
                        readInt2++;
                    }
                    int i10 = i4 + readInt2;
                    if (i10 == readInt) {
                        return;
                    }
                    if (i10 <= readInt) {
                        int skipBytes2 = byteOrderedDataInputStream.skipBytes(readInt2);
                        if (skipBytes2 != readInt2) {
                            throw new IOException("Encountered WebP file with invalid chunk size");
                        }
                        skipBytes = i4 + skipBytes2;
                    } else {
                        throw new IOException("Encountered WebP file with invalid chunk size");
                    }
                } else {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    private static Pair<Integer, Integer> guessDataFormat(String str) {
        if (str.contains(",")) {
            String[] split = str.split(",", -1);
            Pair<Integer, Integer> guessDataFormat = guessDataFormat(split[0]);
            if (((Integer) guessDataFormat.first).intValue() == 2) {
                return guessDataFormat;
            }
            for (int i4 = 1; i4 < split.length; i4++) {
                Pair<Integer, Integer> guessDataFormat2 = guessDataFormat(split[i4]);
                int intValue = (((Integer) guessDataFormat2.first).equals(guessDataFormat.first) || ((Integer) guessDataFormat2.second).equals(guessDataFormat.first)) ? ((Integer) guessDataFormat.first).intValue() : -1;
                int intValue2 = (((Integer) guessDataFormat.second).intValue() == -1 || !(((Integer) guessDataFormat2.first).equals(guessDataFormat.second) || ((Integer) guessDataFormat2.second).equals(guessDataFormat.second))) ? -1 : ((Integer) guessDataFormat.second).intValue();
                if (intValue == -1 && intValue2 == -1) {
                    return new Pair<>(2, -1);
                }
                if (intValue == -1) {
                    guessDataFormat = new Pair<>(Integer.valueOf(intValue2), -1);
                } else if (intValue2 == -1) {
                    guessDataFormat = new Pair<>(Integer.valueOf(intValue), -1);
                }
            }
            return guessDataFormat;
        } else if (str.contains("/")) {
            String[] split2 = str.split("/", -1);
            if (split2.length == 2) {
                try {
                    long parseDouble = (long) Double.parseDouble(split2[0]);
                    long parseDouble2 = (long) Double.parseDouble(split2[1]);
                    if (parseDouble >= 0 && parseDouble2 >= 0) {
                        if (parseDouble <= 2147483647L && parseDouble2 <= 2147483647L) {
                            return new Pair<>(10, 5);
                        }
                        return new Pair<>(5, -1);
                    }
                    return new Pair<>(10, -1);
                } catch (NumberFormatException unused) {
                }
            }
            return new Pair<>(2, -1);
        } else {
            try {
                try {
                    Long valueOf = Long.valueOf(Long.parseLong(str));
                    if (valueOf.longValue() >= 0 && valueOf.longValue() <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                        return new Pair<>(3, 4);
                    }
                    if (valueOf.longValue() < 0) {
                        return new Pair<>(9, -1);
                    }
                    return new Pair<>(4, -1);
                } catch (NumberFormatException unused2) {
                    Double.parseDouble(str);
                    return new Pair<>(12, -1);
                }
            } catch (NumberFormatException unused3) {
                return new Pair<>(2, -1);
            }
        }
    }

    private void handleThumbnailFromJfif(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get(TAG_JPEG_INTERCHANGE_FORMAT);
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
        if (this.mMimeType == 7) {
            intValue += this.mOrfMakerNoteOffset;
        }
        int min = Math.min(intValue2, byteOrderedDataInputStream.getLength() - intValue);
        if (intValue > 0 && min > 0) {
            this.mHasThumbnail = true;
            if (this.mFilename == null && this.mAssetInputStream == null && this.mSeekableFileDescriptor == null) {
                byte[] bArr = new byte[min];
                byteOrderedDataInputStream.skip(intValue);
                byteOrderedDataInputStream.read(bArr);
                this.mThumbnailBytes = bArr;
            }
            this.mThumbnailOffset = intValue;
            this.mThumbnailLength = min;
        }
        if (DEBUG) {
            Log.d(TAG, "Setting thumbnail attributes with offset: " + intValue + ", length: " + min);
        }
    }

    private void handleThumbnailFromStrips(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get(TAG_STRIP_OFFSETS);
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get(TAG_STRIP_BYTE_COUNTS);
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        long[] convertToLongArray = convertToLongArray(exifAttribute.getValue(this.mExifByteOrder));
        long[] convertToLongArray2 = convertToLongArray(exifAttribute2.getValue(this.mExifByteOrder));
        if (convertToLongArray != null && convertToLongArray.length != 0) {
            if (convertToLongArray2 != null && convertToLongArray2.length != 0) {
                if (convertToLongArray.length != convertToLongArray2.length) {
                    Log.w(TAG, "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j4 = 0;
                for (long j10 : convertToLongArray2) {
                    j4 += j10;
                }
                int i4 = (int) j4;
                byte[] bArr = new byte[i4];
                int i10 = 1;
                this.mAreThumbnailStripsConsecutive = true;
                this.mHasThumbnailStrips = true;
                this.mHasThumbnail = true;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                while (i11 < convertToLongArray.length) {
                    int i14 = (int) convertToLongArray[i11];
                    int i15 = (int) convertToLongArray2[i11];
                    if (i11 < convertToLongArray.length - i10 && i14 + i15 != convertToLongArray[i11 + 1]) {
                        this.mAreThumbnailStripsConsecutive = false;
                    }
                    int i16 = i14 - i12;
                    if (i16 < 0) {
                        Log.d(TAG, "Invalid strip offset value");
                        return;
                    }
                    long j11 = i16;
                    if (byteOrderedDataInputStream.skip(j11) != j11) {
                        Log.d(TAG, "Failed to skip " + i16 + " bytes.");
                        return;
                    }
                    int i17 = i12 + i16;
                    byte[] bArr2 = new byte[i15];
                    if (byteOrderedDataInputStream.read(bArr2) != i15) {
                        Log.d(TAG, "Failed to read " + i15 + " bytes.");
                        return;
                    }
                    i12 = i17 + i15;
                    System.arraycopy(bArr2, 0, bArr, i13, i15);
                    i13 += i15;
                    i11++;
                    i10 = 1;
                }
                this.mThumbnailBytes = bArr;
                if (this.mAreThumbnailStripsConsecutive) {
                    this.mThumbnailOffset = (int) convertToLongArray[0];
                    this.mThumbnailLength = i4;
                    return;
                }
                return;
            }
            Log.w(TAG, "stripByteCounts should not be null or have zero length.");
            return;
        }
        Log.w(TAG, "stripOffsets should not be null or have zero length.");
    }

    private void initForFilename(String str) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        Objects.requireNonNull(str, "filename cannot be null");
        this.mAssetInputStream = null;
        this.mFilename = str;
        try {
            fileInputStream = h.b.d(new FileInputStream(str), str);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            if (isSeekableFD(fileInputStream.getFD())) {
                this.mSeekableFileDescriptor = fileInputStream.getFD();
            } else {
                this.mSeekableFileDescriptor = null;
            }
            loadAttributes(fileInputStream);
            closeQuietly(fileInputStream);
        } catch (Throwable th3) {
            th = th3;
            closeQuietly(fileInputStream);
            throw th;
        }
    }

    private static boolean isExifDataOnly(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = IDENTIFIER_EXIF_APP1;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i4 = 0;
        while (true) {
            byte[] bArr3 = IDENTIFIER_EXIF_APP1;
            if (i4 >= bArr3.length) {
                return true;
            }
            if (bArr2[i4] != bArr3[i4]) {
                return false;
            }
            i4++;
        }
    }

    private boolean isHeifFormat(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream;
        long readInt;
        byte[] bArr2;
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = null;
        try {
            try {
                byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
                try {
                    readInt = byteOrderedDataInputStream.readInt();
                    bArr2 = new byte[4];
                    byteOrderedDataInputStream.read(bArr2);
                } catch (Exception e4) {
                    e = e4;
                    byteOrderedDataInputStream2 = byteOrderedDataInputStream;
                    if (DEBUG) {
                        Log.d(TAG, "Exception parsing HEIF file type box.", e);
                    }
                    if (byteOrderedDataInputStream2 != null) {
                        byteOrderedDataInputStream2.close();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    byteOrderedDataInputStream2 = byteOrderedDataInputStream;
                    if (byteOrderedDataInputStream2 != null) {
                        byteOrderedDataInputStream2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        if (!Arrays.equals(bArr2, HEIF_TYPE_FTYP)) {
            byteOrderedDataInputStream.close();
            return false;
        }
        long j4 = 16;
        if (readInt == 1) {
            readInt = byteOrderedDataInputStream.readLong();
            if (readInt < 16) {
                byteOrderedDataInputStream.close();
                return false;
            }
        } else {
            j4 = 8;
        }
        if (readInt > bArr.length) {
            readInt = bArr.length;
        }
        long j10 = readInt - j4;
        if (j10 < 8) {
            byteOrderedDataInputStream.close();
            return false;
        }
        byte[] bArr3 = new byte[4];
        boolean z9 = false;
        boolean z10 = false;
        for (long j11 = 0; j11 < j10 / 4; j11++) {
            if (byteOrderedDataInputStream.read(bArr3) != 4) {
                byteOrderedDataInputStream.close();
                return false;
            }
            if (j11 != 1) {
                if (Arrays.equals(bArr3, HEIF_BRAND_MIF1)) {
                    z9 = true;
                } else if (Arrays.equals(bArr3, HEIF_BRAND_HEIC)) {
                    z10 = true;
                }
                if (z9 && z10) {
                    byteOrderedDataInputStream.close();
                    return true;
                }
            }
        }
        byteOrderedDataInputStream.close();
        return false;
    }

    private static boolean isJpegFormat(byte[] bArr) throws IOException {
        int i4 = 0;
        while (true) {
            byte[] bArr2 = JPEG_SIGNATURE;
            if (i4 >= bArr2.length) {
                return true;
            }
            if (bArr[i4] != bArr2[i4]) {
                return false;
            }
            i4++;
        }
    }

    private boolean isOrfFormat(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream;
        boolean z9 = false;
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = null;
        try {
            byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        } catch (Exception unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
            this.mExifByteOrder = readByteOrder;
            byteOrderedDataInputStream.setByteOrder(readByteOrder);
            short readShort = byteOrderedDataInputStream.readShort();
            z9 = (readShort == 20306 || readShort == 21330) ? true : true;
            byteOrderedDataInputStream.close();
            return z9;
        } catch (Exception unused2) {
            byteOrderedDataInputStream2 = byteOrderedDataInputStream;
            if (byteOrderedDataInputStream2 != null) {
                byteOrderedDataInputStream2.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            byteOrderedDataInputStream2 = byteOrderedDataInputStream;
            if (byteOrderedDataInputStream2 != null) {
                byteOrderedDataInputStream2.close();
            }
            throw th;
        }
    }

    private boolean isPngFormat(byte[] bArr) throws IOException {
        int i4 = 0;
        while (true) {
            byte[] bArr2 = PNG_SIGNATURE;
            if (i4 >= bArr2.length) {
                return true;
            }
            if (bArr[i4] != bArr2[i4]) {
                return false;
            }
            i4++;
        }
    }

    private boolean isRafFormat(byte[] bArr) throws IOException {
        byte[] bytes = RAF_SIGNATURE.getBytes(Charset.defaultCharset());
        for (int i4 = 0; i4 < bytes.length; i4++) {
            if (bArr[i4] != bytes[i4]) {
                return false;
            }
        }
        return true;
    }

    private boolean isRw2Format(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream;
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = null;
        try {
            byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        } catch (Exception unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
            this.mExifByteOrder = readByteOrder;
            byteOrderedDataInputStream.setByteOrder(readByteOrder);
            boolean z9 = byteOrderedDataInputStream.readShort() == 85;
            byteOrderedDataInputStream.close();
            return z9;
        } catch (Exception unused2) {
            byteOrderedDataInputStream2 = byteOrderedDataInputStream;
            if (byteOrderedDataInputStream2 != null) {
                byteOrderedDataInputStream2.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            byteOrderedDataInputStream2 = byteOrderedDataInputStream;
            if (byteOrderedDataInputStream2 != null) {
                byteOrderedDataInputStream2.close();
            }
            throw th;
        }
    }

    private static boolean isSeekableFD(FileDescriptor fileDescriptor) {
        try {
            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            if (DEBUG) {
                Log.d(TAG, "The file descriptor for the given input is not seekable");
                return false;
            }
            return false;
        }
    }

    private boolean isSupportedDataType(HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute;
        int intValue;
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get(TAG_BITS_PER_SAMPLE);
        if (exifAttribute2 != null) {
            int[] iArr = (int[]) exifAttribute2.getValue(this.mExifByteOrder);
            int[] iArr2 = BITS_PER_SAMPLE_RGB;
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
            if (this.mMimeType == 3 && (exifAttribute = (ExifAttribute) hashMap.get(TAG_PHOTOMETRIC_INTERPRETATION)) != null && (((intValue = exifAttribute.getIntValue(this.mExifByteOrder)) == 1 && Arrays.equals(iArr, BITS_PER_SAMPLE_GREYSCALE_2)) || (intValue == 6 && Arrays.equals(iArr, iArr2)))) {
                return true;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "Unsupported data type value");
            return false;
        }
        return false;
    }

    private boolean isSupportedFormatForSavingAttributes() {
        int i4 = this.mMimeType;
        return i4 == 4 || i4 == 13 || i4 == 14;
    }

    public static boolean isSupportedMimeType(@NonNull String str) {
        Objects.requireNonNull(str, "mimeType shouldn't be null");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.hashCode();
        char c10 = 65535;
        switch (lowerCase.hashCode()) {
            case -1875291391:
                if (lowerCase.equals("image/x-fuji-raf")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1635437028:
                if (lowerCase.equals("image/x-samsung-srw")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1594371159:
                if (lowerCase.equals("image/x-sony-arw")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1487464693:
                if (lowerCase.equals("image/heic")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1487464690:
                if (lowerCase.equals("image/heif")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1487394660:
                if (lowerCase.equals(a0.F0)) {
                    c10 = 5;
                    break;
                }
                break;
            case -1487018032:
                if (lowerCase.equals("image/webp")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1423313290:
                if (lowerCase.equals("image/x-adobe-dng")) {
                    c10 = 7;
                    break;
                }
                break;
            case -985160897:
                if (lowerCase.equals("image/x-panasonic-rw2")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -879258763:
                if (lowerCase.equals("image/png")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -332763809:
                if (lowerCase.equals("image/x-pentax-pef")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1378106698:
                if (lowerCase.equals("image/x-olympus-orf")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2099152104:
                if (lowerCase.equals("image/x-nikon-nef")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2099152524:
                if (lowerCase.equals("image/x-nikon-nrw")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2111234748:
                if (lowerCase.equals("image/x-canon-cr2")) {
                    c10 = 14;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
                return true;
            default:
                return false;
        }
    }

    private boolean isThumbnail(HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get(TAG_IMAGE_LENGTH);
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get(TAG_IMAGE_WIDTH);
        if (exifAttribute == null || exifAttribute2 == null) {
            return false;
        }
        return exifAttribute.getIntValue(this.mExifByteOrder) <= 512 && exifAttribute2.getIntValue(this.mExifByteOrder) <= 512;
    }

    private boolean isWebpFormat(byte[] bArr) throws IOException {
        int i4 = 0;
        while (true) {
            byte[] bArr2 = WEBP_SIGNATURE_1;
            if (i4 >= bArr2.length) {
                int i10 = 0;
                while (true) {
                    byte[] bArr3 = WEBP_SIGNATURE_2;
                    if (i10 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[WEBP_SIGNATURE_1.length + i10 + 4] != bArr3[i10]) {
                        return false;
                    }
                    i10++;
                }
            } else if (bArr[i4] != bArr2[i4]) {
                return false;
            } else {
                i4++;
            }
        }
    }

    private void loadAttributes(@NonNull InputStream inputStream) {
        Objects.requireNonNull(inputStream, "inputstream shouldn't be null");
        for (int i4 = 0; i4 < EXIF_TAGS.length; i4++) {
            try {
                try {
                    this.mAttributes[i4] = new HashMap<>();
                } catch (IOException e4) {
                    boolean z9 = DEBUG;
                    if (z9) {
                        Log.w(TAG, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e4);
                    }
                    addDefaultValuesForCompatibility();
                    if (!z9) {
                        return;
                    }
                }
            } finally {
                addDefaultValuesForCompatibility();
                if (DEBUG) {
                    printAttributes();
                }
            }
        }
        if (!this.mIsExifDataOnly) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.mMimeType = getMimeType(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream);
        if (!this.mIsExifDataOnly) {
            switch (this.mMimeType) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 11:
                    getRawAttributes(byteOrderedDataInputStream);
                    break;
                case 4:
                    getJpegAttributes(byteOrderedDataInputStream, 0, 0);
                    addDefaultValuesForCompatibility();
                    if (DEBUG) {
                        printAttributes();
                        return;
                    }
                    return;
                case 7:
                    getOrfAttributes(byteOrderedDataInputStream);
                    break;
                case 9:
                    getRafAttributes(byteOrderedDataInputStream);
                    addDefaultValuesForCompatibility();
                    if (DEBUG) {
                        printAttributes();
                        return;
                    }
                    return;
                case 10:
                    getRw2Attributes(byteOrderedDataInputStream);
                    addDefaultValuesForCompatibility();
                    if (DEBUG) {
                        printAttributes();
                        return;
                    }
                    return;
                case 12:
                    getHeifAttributes(byteOrderedDataInputStream);
                    break;
                case 13:
                    getPngAttributes(byteOrderedDataInputStream);
                    addDefaultValuesForCompatibility();
                    if (DEBUG) {
                        printAttributes();
                        return;
                    }
                    return;
                case 14:
                    getWebpAttributes(byteOrderedDataInputStream);
                    addDefaultValuesForCompatibility();
                    if (DEBUG) {
                        printAttributes();
                        return;
                    }
                    return;
            }
        } else {
            getStandaloneAttributes(byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.seek(this.mOffsetToExifData);
        setThumbnailData(byteOrderedDataInputStream);
    }

    private static Long parseDateTime(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (str != null && NON_ZERO_TIME_PATTERN.matcher(str).matches()) {
            ParsePosition parsePosition = new ParsePosition(0);
            try {
                Date parse = sFormatterPrimary.parse(str, parsePosition);
                if (parse == null && (parse = sFormatterSecondary.parse(str, parsePosition)) == null) {
                    return null;
                }
                long time = parse.getTime();
                if (str3 != null) {
                    String substring = str3.substring(0, 1);
                    int parseInt = Integer.parseInt(str3.substring(1, 3));
                    int parseInt2 = Integer.parseInt(str3.substring(4, 6));
                    if (("+".equals(substring) || "-".equals(substring)) && ":".equals(str3.substring(3, 4)) && parseInt <= 14) {
                        time += ((parseInt * 60) + parseInt2) * 60 * 1000 * ("-".equals(substring) ? 1 : -1);
                    }
                }
                if (str2 != null) {
                    try {
                        long parseLong = Long.parseLong(str2);
                        while (parseLong > 1000) {
                            parseLong /= 10;
                        }
                        time += parseLong;
                    } catch (NumberFormatException unused) {
                    }
                }
                return Long.valueOf(time);
            } catch (IllegalArgumentException unused2) {
            }
        }
        return null;
    }

    private void parseTiffHeaders(ByteOrderedDataInputStream byteOrderedDataInputStream, int i4) throws IOException {
        ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = readByteOrder;
        byteOrderedDataInputStream.setByteOrder(readByteOrder);
        int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
        int i10 = this.mMimeType;
        if (i10 != 7 && i10 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = byteOrderedDataInputStream.readInt();
        if (readInt >= 8 && readInt < i4) {
            int i11 = readInt - 8;
            if (i11 <= 0 || byteOrderedDataInputStream.skipBytes(i11) == i11) {
                return;
            }
            throw new IOException("Couldn't jump to first Ifd: " + i11);
        }
        throw new IOException("Invalid first Ifd offset: " + readInt);
    }

    private void printAttributes() {
        for (int i4 = 0; i4 < this.mAttributes.length; i4++) {
            Log.d(TAG, "The size of tag group[" + i4 + "]: " + this.mAttributes[i4].size());
            for (Map.Entry<String, ExifAttribute> entry : this.mAttributes[i4].entrySet()) {
                ExifAttribute value = entry.getValue();
                Log.d(TAG, "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.getStringValue(this.mExifByteOrder) + "'");
            }
        }
    }

    private ByteOrder readByteOrder(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        short readShort = byteOrderedDataInputStream.readShort();
        if (readShort == 18761) {
            if (DEBUG) {
                Log.d(TAG, "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        } else if (readShort == 19789) {
            if (DEBUG) {
                Log.d(TAG, "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        } else {
            throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
        }
    }

    private void readExifSegment(byte[] bArr, int i4) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        parseTiffHeaders(byteOrderedDataInputStream, bArr.length);
        readImageFileDirectory(byteOrderedDataInputStream, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void readImageFileDirectory(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r30, int r31) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1019
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.readImageFileDirectory(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream, int):void");
    }

    private void removeAttribute(String str) {
        for (int i4 = 0; i4 < EXIF_TAGS.length; i4++) {
            this.mAttributes[i4].remove(str);
        }
    }

    private void retrieveJpegImageSize(ByteOrderedDataInputStream byteOrderedDataInputStream, int i4) throws IOException {
        ExifAttribute exifAttribute = this.mAttributes[i4].get(TAG_IMAGE_LENGTH);
        ExifAttribute exifAttribute2 = this.mAttributes[i4].get(TAG_IMAGE_WIDTH);
        if (exifAttribute == null || exifAttribute2 == null) {
            ExifAttribute exifAttribute3 = this.mAttributes[i4].get(TAG_JPEG_INTERCHANGE_FORMAT);
            ExifAttribute exifAttribute4 = this.mAttributes[i4].get(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            if (exifAttribute3 == null || exifAttribute4 == null) {
                return;
            }
            int intValue = exifAttribute3.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute3.getIntValue(this.mExifByteOrder);
            byteOrderedDataInputStream.seek(intValue);
            byte[] bArr = new byte[intValue2];
            byteOrderedDataInputStream.read(bArr);
            getJpegAttributes(new ByteOrderedDataInputStream(bArr), intValue, i4);
        }
    }

    private void saveJpegAttributes(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (DEBUG) {
            Log.d(TAG, "saveJpegAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, ByteOrder.BIG_ENDIAN);
        if (dataInputStream.readByte() == -1) {
            byteOrderedDataOutputStream.writeByte(-1);
            if (dataInputStream.readByte() == -40) {
                byteOrderedDataOutputStream.writeByte(-40);
                ExifAttribute exifAttribute = null;
                if (getAttribute(TAG_XMP) != null && this.mXmpIsFromSeparateMarker) {
                    exifAttribute = this.mAttributes[0].remove(TAG_XMP);
                }
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(-31);
                writeExifSegment(byteOrderedDataOutputStream);
                if (exifAttribute != null) {
                    this.mAttributes[0].put(TAG_XMP, exifAttribute);
                }
                byte[] bArr = new byte[4096];
                while (dataInputStream.readByte() == -1) {
                    byte readByte = dataInputStream.readByte();
                    if (readByte == -39 || readByte == -38) {
                        byteOrderedDataOutputStream.writeByte(-1);
                        byteOrderedDataOutputStream.writeByte(readByte);
                        copy(dataInputStream, byteOrderedDataOutputStream);
                        return;
                    } else if (readByte != -31) {
                        byteOrderedDataOutputStream.writeByte(-1);
                        byteOrderedDataOutputStream.writeByte(readByte);
                        int readUnsignedShort = dataInputStream.readUnsignedShort();
                        byteOrderedDataOutputStream.writeUnsignedShort(readUnsignedShort);
                        int i4 = readUnsignedShort - 2;
                        if (i4 < 0) {
                            throw new IOException("Invalid length");
                        }
                        while (i4 > 0) {
                            int read = dataInputStream.read(bArr, 0, Math.min(i4, 4096));
                            if (read >= 0) {
                                byteOrderedDataOutputStream.write(bArr, 0, read);
                                i4 -= read;
                            }
                        }
                    } else {
                        int readUnsignedShort2 = dataInputStream.readUnsignedShort() - 2;
                        if (readUnsignedShort2 >= 0) {
                            byte[] bArr2 = new byte[6];
                            if (readUnsignedShort2 >= 6) {
                                if (dataInputStream.read(bArr2) == 6) {
                                    if (Arrays.equals(bArr2, IDENTIFIER_EXIF_APP1)) {
                                        int i10 = readUnsignedShort2 - 6;
                                        if (dataInputStream.skipBytes(i10) != i10) {
                                            throw new IOException("Invalid length");
                                        }
                                    }
                                } else {
                                    throw new IOException("Invalid exif");
                                }
                            }
                            byteOrderedDataOutputStream.writeByte(-1);
                            byteOrderedDataOutputStream.writeByte(readByte);
                            byteOrderedDataOutputStream.writeUnsignedShort(readUnsignedShort2 + 2);
                            if (readUnsignedShort2 >= 6) {
                                readUnsignedShort2 -= 6;
                                byteOrderedDataOutputStream.write(bArr2);
                            }
                            while (readUnsignedShort2 > 0) {
                                int read2 = dataInputStream.read(bArr, 0, Math.min(readUnsignedShort2, 4096));
                                if (read2 >= 0) {
                                    byteOrderedDataOutputStream.write(bArr, 0, read2);
                                    readUnsignedShort2 -= read2;
                                }
                            }
                        } else {
                            throw new IOException("Invalid length");
                        }
                    }
                }
                throw new IOException("Invalid marker");
            }
            throw new IOException("Invalid marker");
        }
        throw new IOException("Invalid marker");
    }

    private void savePngAttributes(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (DEBUG) {
            Log.d(TAG, "savePngAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, byteOrder);
        byte[] bArr = PNG_SIGNATURE;
        copy(dataInputStream, byteOrderedDataOutputStream, bArr.length);
        int i4 = this.mOffsetToExifData;
        if (i4 == 0) {
            int readInt = dataInputStream.readInt();
            byteOrderedDataOutputStream.writeInt(readInt);
            copy(dataInputStream, byteOrderedDataOutputStream, readInt + 4 + 4);
        } else {
            copy(dataInputStream, byteOrderedDataOutputStream, ((i4 - bArr.length) - 4) - 4);
            dataInputStream.skipBytes(dataInputStream.readInt() + 4 + 4);
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                ByteOrderedDataOutputStream byteOrderedDataOutputStream2 = new ByteOrderedDataOutputStream(byteArrayOutputStream2, byteOrder);
                writeExifSegment(byteOrderedDataOutputStream2);
                byte[] byteArray = ((ByteArrayOutputStream) byteOrderedDataOutputStream2.mOutputStream).toByteArray();
                byteOrderedDataOutputStream.write(byteArray);
                CRC32 crc32 = new CRC32();
                crc32.update(byteArray, 4, byteArray.length - 4);
                byteOrderedDataOutputStream.writeInt((int) crc32.getValue());
                closeQuietly(byteArrayOutputStream2);
                copy(dataInputStream, byteOrderedDataOutputStream);
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                closeQuietly(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01ab A[Catch: all -> 0x01ed, Exception -> 0x01f0, TryCatch #4 {Exception -> 0x01f0, all -> 0x01ed, blocks: (B:7:0x004d, B:9:0x0056, B:63:0x01cd, B:10:0x006f, B:12:0x0077, B:14:0x0083, B:16:0x008b, B:18:0x008f, B:22:0x00a2, B:24:0x00ad, B:25:0x00b2, B:27:0x00bf, B:28:0x00c4, B:29:0x00c8, B:30:0x00d4, B:32:0x00dc, B:34:0x00e4, B:36:0x00ec, B:38:0x00f0, B:40:0x00fb, B:42:0x0106, B:44:0x010e, B:56:0x0159, B:58:0x01ab, B:62:0x01c7, B:59:0x01b7, B:61:0x01bf, B:45:0x011d, B:46:0x0124, B:47:0x0125, B:49:0x012d, B:51:0x0133, B:52:0x014c, B:53:0x0153, B:66:0x01e5, B:67:0x01ec), top: B:81:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b7 A[Catch: all -> 0x01ed, Exception -> 0x01f0, TryCatch #4 {Exception -> 0x01f0, all -> 0x01ed, blocks: (B:7:0x004d, B:9:0x0056, B:63:0x01cd, B:10:0x006f, B:12:0x0077, B:14:0x0083, B:16:0x008b, B:18:0x008f, B:22:0x00a2, B:24:0x00ad, B:25:0x00b2, B:27:0x00bf, B:28:0x00c4, B:29:0x00c8, B:30:0x00d4, B:32:0x00dc, B:34:0x00e4, B:36:0x00ec, B:38:0x00f0, B:40:0x00fb, B:42:0x0106, B:44:0x010e, B:56:0x0159, B:58:0x01ab, B:62:0x01c7, B:59:0x01b7, B:61:0x01bf, B:45:0x011d, B:46:0x0124, B:47:0x0125, B:49:0x012d, B:51:0x0133, B:52:0x014c, B:53:0x0153, B:66:0x01e5, B:67:0x01ec), top: B:81:0x004d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void saveWebpAttributes(java.io.InputStream r21, java.io.OutputStream r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 514
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.saveWebpAttributes(java.io.InputStream, java.io.OutputStream):void");
    }

    private void setThumbnailData(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        HashMap<String, ExifAttribute> hashMap = this.mAttributes[4];
        ExifAttribute exifAttribute = hashMap.get(TAG_COMPRESSION);
        if (exifAttribute != null) {
            int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
            this.mThumbnailCompression = intValue;
            if (intValue != 1) {
                if (intValue == 6) {
                    handleThumbnailFromJfif(byteOrderedDataInputStream, hashMap);
                    return;
                } else if (intValue != 7) {
                    return;
                }
            }
            if (isSupportedDataType(hashMap)) {
                handleThumbnailFromStrips(byteOrderedDataInputStream, hashMap);
                return;
            }
            return;
        }
        this.mThumbnailCompression = 6;
        handleThumbnailFromJfif(byteOrderedDataInputStream, hashMap);
    }

    private static boolean startsWith(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            if (bArr[i4] != bArr2[i4]) {
                return false;
            }
        }
        return true;
    }

    private void swapBasedOnImageSize(int i4, int i10) throws IOException {
        if (!this.mAttributes[i4].isEmpty() && !this.mAttributes[i10].isEmpty()) {
            ExifAttribute exifAttribute = this.mAttributes[i4].get(TAG_IMAGE_LENGTH);
            ExifAttribute exifAttribute2 = this.mAttributes[i4].get(TAG_IMAGE_WIDTH);
            ExifAttribute exifAttribute3 = this.mAttributes[i10].get(TAG_IMAGE_LENGTH);
            ExifAttribute exifAttribute4 = this.mAttributes[i10].get(TAG_IMAGE_WIDTH);
            if (exifAttribute == null || exifAttribute2 == null) {
                if (DEBUG) {
                    Log.d(TAG, "First image does not contain valid size information");
                }
            } else if (exifAttribute3 != null && exifAttribute4 != null) {
                int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
                int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
                int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
                int intValue4 = exifAttribute4.getIntValue(this.mExifByteOrder);
                if (intValue >= intValue3 || intValue2 >= intValue4) {
                    return;
                }
                HashMap<String, ExifAttribute>[] hashMapArr = this.mAttributes;
                HashMap<String, ExifAttribute> hashMap = hashMapArr[i4];
                hashMapArr[i4] = hashMapArr[i10];
                hashMapArr[i10] = hashMap;
            } else if (DEBUG) {
                Log.d(TAG, "Second image does not contain valid size information");
            }
        } else if (DEBUG) {
            Log.d(TAG, "Cannot perform swap since only one image data exists");
        }
    }

    private void updateImageSizeValues(ByteOrderedDataInputStream byteOrderedDataInputStream, int i4) throws IOException {
        ExifAttribute createUShort;
        ExifAttribute createUShort2;
        ExifAttribute exifAttribute = this.mAttributes[i4].get(TAG_DEFAULT_CROP_SIZE);
        ExifAttribute exifAttribute2 = this.mAttributes[i4].get(TAG_RW2_SENSOR_TOP_BORDER);
        ExifAttribute exifAttribute3 = this.mAttributes[i4].get(TAG_RW2_SENSOR_LEFT_BORDER);
        ExifAttribute exifAttribute4 = this.mAttributes[i4].get(TAG_RW2_SENSOR_BOTTOM_BORDER);
        ExifAttribute exifAttribute5 = this.mAttributes[i4].get(TAG_RW2_SENSOR_RIGHT_BORDER);
        if (exifAttribute == null) {
            if (exifAttribute2 != null && exifAttribute3 != null && exifAttribute4 != null && exifAttribute5 != null) {
                int intValue = exifAttribute2.getIntValue(this.mExifByteOrder);
                int intValue2 = exifAttribute4.getIntValue(this.mExifByteOrder);
                int intValue3 = exifAttribute5.getIntValue(this.mExifByteOrder);
                int intValue4 = exifAttribute3.getIntValue(this.mExifByteOrder);
                if (intValue2 <= intValue || intValue3 <= intValue4) {
                    return;
                }
                ExifAttribute createUShort3 = ExifAttribute.createUShort(intValue2 - intValue, this.mExifByteOrder);
                ExifAttribute createUShort4 = ExifAttribute.createUShort(intValue3 - intValue4, this.mExifByteOrder);
                this.mAttributes[i4].put(TAG_IMAGE_LENGTH, createUShort3);
                this.mAttributes[i4].put(TAG_IMAGE_WIDTH, createUShort4);
                return;
            }
            retrieveJpegImageSize(byteOrderedDataInputStream, i4);
            return;
        }
        if (exifAttribute.format == 5) {
            Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
            if (rationalArr != null && rationalArr.length == 2) {
                createUShort = ExifAttribute.createURational(rationalArr[0], this.mExifByteOrder);
                createUShort2 = ExifAttribute.createURational(rationalArr[1], this.mExifByteOrder);
            } else {
                Log.w(TAG, "Invalid crop size values. cropSize=" + Arrays.toString(rationalArr));
                return;
            }
        } else {
            int[] iArr = (int[]) exifAttribute.getValue(this.mExifByteOrder);
            if (iArr != null && iArr.length == 2) {
                createUShort = ExifAttribute.createUShort(iArr[0], this.mExifByteOrder);
                createUShort2 = ExifAttribute.createUShort(iArr[1], this.mExifByteOrder);
            } else {
                Log.w(TAG, "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
        }
        this.mAttributes[i4].put(TAG_IMAGE_WIDTH, createUShort);
        this.mAttributes[i4].put(TAG_IMAGE_LENGTH, createUShort2);
    }

    private void validateImages() throws IOException {
        swapBasedOnImageSize(0, 5);
        swapBasedOnImageSize(0, 4);
        swapBasedOnImageSize(5, 4);
        ExifAttribute exifAttribute = this.mAttributes[1].get(TAG_PIXEL_X_DIMENSION);
        ExifAttribute exifAttribute2 = this.mAttributes[1].get(TAG_PIXEL_Y_DIMENSION);
        if (exifAttribute != null && exifAttribute2 != null) {
            this.mAttributes[0].put(TAG_IMAGE_WIDTH, exifAttribute);
            this.mAttributes[0].put(TAG_IMAGE_LENGTH, exifAttribute2);
        }
        if (this.mAttributes[4].isEmpty() && isThumbnail(this.mAttributes[5])) {
            HashMap<String, ExifAttribute>[] hashMapArr = this.mAttributes;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        if (isThumbnail(this.mAttributes[4])) {
            return;
        }
        Log.d(TAG, "No image meets the size requirements of a thumbnail image.");
    }

    private int writeExifSegment(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        int[] iArr = new int[exifTagArr.length];
        int[] iArr2 = new int[exifTagArr.length];
        for (ExifTag exifTag : EXIF_POINTER_TAGS) {
            removeAttribute(exifTag.name);
        }
        removeAttribute(JPEG_INTERCHANGE_FORMAT_TAG.name);
        removeAttribute(JPEG_INTERCHANGE_FORMAT_LENGTH_TAG.name);
        for (int i4 = 0; i4 < EXIF_TAGS.length; i4++) {
            for (Object obj : this.mAttributes[i4].entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                if (entry.getValue() == null) {
                    this.mAttributes[i4].remove(entry.getKey());
                }
            }
        }
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (this.mHasThumbnail) {
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_TAG.name, ExifAttribute.createULong(0L, this.mExifByteOrder));
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_LENGTH_TAG.name, ExifAttribute.createULong(this.mThumbnailLength, this.mExifByteOrder));
        }
        for (int i10 = 0; i10 < EXIF_TAGS.length; i10++) {
            int i11 = 0;
            for (Map.Entry<String, ExifAttribute> entry2 : this.mAttributes[i10].entrySet()) {
                int size = entry2.getValue().size();
                if (size > 4) {
                    i11 += size;
                }
            }
            iArr2[i10] = iArr2[i10] + i11;
        }
        int i12 = 8;
        for (int i13 = 0; i13 < EXIF_TAGS.length; i13++) {
            if (!this.mAttributes[i13].isEmpty()) {
                iArr[i13] = i12;
                i12 += (this.mAttributes[i13].size() * 12) + 2 + 4 + iArr2[i13];
            }
        }
        if (this.mHasThumbnail) {
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_TAG.name, ExifAttribute.createULong(i12, this.mExifByteOrder));
            this.mThumbnailOffset = i12;
            i12 += this.mThumbnailLength;
        }
        if (this.mMimeType == 4) {
            i12 += 8;
        }
        if (DEBUG) {
            for (int i14 = 0; i14 < EXIF_TAGS.length; i14++) {
                Log.d(TAG, String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d", Integer.valueOf(i14), Integer.valueOf(iArr[i14]), Integer.valueOf(this.mAttributes[i14].size()), Integer.valueOf(iArr2[i14]), Integer.valueOf(i12)));
            }
        }
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(iArr[1], this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(iArr[2], this.mExifByteOrder));
        }
        if (!this.mAttributes[3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(iArr[3], this.mExifByteOrder));
        }
        int i15 = this.mMimeType;
        if (i15 == 4) {
            byteOrderedDataOutputStream.writeUnsignedShort(i12);
            byteOrderedDataOutputStream.write(IDENTIFIER_EXIF_APP1);
        } else if (i15 == 13) {
            byteOrderedDataOutputStream.writeInt(i12);
            byteOrderedDataOutputStream.write(PNG_CHUNK_TYPE_EXIF);
        } else if (i15 == 14) {
            byteOrderedDataOutputStream.write(WEBP_CHUNK_TYPE_EXIF);
            byteOrderedDataOutputStream.writeInt(i12);
        }
        byteOrderedDataOutputStream.writeShort(this.mExifByteOrder == ByteOrder.BIG_ENDIAN ? BYTE_ALIGN_MM : BYTE_ALIGN_II);
        byteOrderedDataOutputStream.setByteOrder(this.mExifByteOrder);
        byteOrderedDataOutputStream.writeUnsignedShort(42);
        byteOrderedDataOutputStream.writeUnsignedInt(8L);
        for (int i16 = 0; i16 < EXIF_TAGS.length; i16++) {
            if (!this.mAttributes[i16].isEmpty()) {
                byteOrderedDataOutputStream.writeUnsignedShort(this.mAttributes[i16].size());
                int size2 = iArr[i16] + 2 + (this.mAttributes[i16].size() * 12) + 4;
                for (Map.Entry<String, ExifAttribute> entry3 : this.mAttributes[i16].entrySet()) {
                    int i17 = sExifTagMapsForWriting[i16].get(entry3.getKey()).number;
                    ExifAttribute value = entry3.getValue();
                    int size3 = value.size();
                    byteOrderedDataOutputStream.writeUnsignedShort(i17);
                    byteOrderedDataOutputStream.writeUnsignedShort(value.format);
                    byteOrderedDataOutputStream.writeInt(value.numberOfComponents);
                    if (size3 > 4) {
                        byteOrderedDataOutputStream.writeUnsignedInt(size2);
                        size2 += size3;
                    } else {
                        byteOrderedDataOutputStream.write(value.bytes);
                        if (size3 < 4) {
                            while (size3 < 4) {
                                byteOrderedDataOutputStream.writeByte(0);
                                size3++;
                            }
                        }
                    }
                }
                if (i16 == 0 && !this.mAttributes[4].isEmpty()) {
                    byteOrderedDataOutputStream.writeUnsignedInt(iArr[4]);
                } else {
                    byteOrderedDataOutputStream.writeUnsignedInt(0L);
                }
                for (Map.Entry<String, ExifAttribute> entry4 : this.mAttributes[i16].entrySet()) {
                    byte[] bArr = entry4.getValue().bytes;
                    if (bArr.length > 4) {
                        byteOrderedDataOutputStream.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.mHasThumbnail) {
            byteOrderedDataOutputStream.write(getThumbnailBytes());
        }
        if (this.mMimeType == 14 && i12 % 2 == 1) {
            byteOrderedDataOutputStream.writeByte(0);
        }
        byteOrderedDataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        return i12;
    }

    public void flipHorizontally() {
        int i4 = 1;
        switch (getAttributeInt(TAG_ORIENTATION, 1)) {
            case 1:
                i4 = 2;
                break;
            case 2:
                break;
            case 3:
                i4 = 4;
                break;
            case 4:
                i4 = 3;
                break;
            case 5:
                i4 = 6;
                break;
            case 6:
                i4 = 5;
                break;
            case 7:
                i4 = 8;
                break;
            case 8:
                i4 = 7;
                break;
            default:
                i4 = 0;
                break;
        }
        setAttribute(TAG_ORIENTATION, Integer.toString(i4));
    }

    public void flipVertically() {
        int i4 = 1;
        switch (getAttributeInt(TAG_ORIENTATION, 1)) {
            case 1:
                i4 = 4;
                break;
            case 2:
                i4 = 3;
                break;
            case 3:
                i4 = 2;
                break;
            case 4:
                break;
            case 5:
                i4 = 8;
                break;
            case 6:
                i4 = 7;
                break;
            case 7:
                i4 = 6;
                break;
            case 8:
                i4 = 5;
                break;
            default:
                i4 = 0;
                break;
        }
        setAttribute(TAG_ORIENTATION, Integer.toString(i4));
    }

    public double getAltitude(double d4) {
        double attributeDouble = getAttributeDouble(TAG_GPS_ALTITUDE, -1.0d);
        int attributeInt = getAttributeInt(TAG_GPS_ALTITUDE_REF, -1);
        if (attributeDouble < 0.0d || attributeInt < 0) {
            return d4;
        }
        return attributeDouble * (attributeInt != 1 ? 1 : -1);
    }

    @Nullable
    public String getAttribute(@NonNull String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            if (!sTagSetForCompatibility.contains(str)) {
                return exifAttribute.getStringValue(this.mExifByteOrder);
            }
            if (str.equals(TAG_GPS_TIMESTAMP)) {
                int i4 = exifAttribute.format;
                if (i4 != 5 && i4 != 10) {
                    Log.w(TAG, "GPS Timestamp format is not rational. format=" + exifAttribute.format);
                    return null;
                }
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                if (rationalArr != null && rationalArr.length == 3) {
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) rationalArr[0].numerator) / ((float) rationalArr[0].denominator))), Integer.valueOf((int) (((float) rationalArr[1].numerator) / ((float) rationalArr[1].denominator))), Integer.valueOf((int) (((float) rationalArr[2].numerator) / ((float) rationalArr[2].denominator))));
                }
                Log.w(TAG, "Invalid GPS Timestamp array. array=" + Arrays.toString(rationalArr));
                return null;
            }
            try {
                return Double.toString(exifAttribute.getDoubleValue(this.mExifByteOrder));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @Nullable
    public byte[] getAttributeBytes(@NonNull String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            return exifAttribute.bytes;
        }
        return null;
    }

    public double getAttributeDouble(@NonNull String str, double d4) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return d4;
        }
        try {
            return exifAttribute.getDoubleValue(this.mExifByteOrder);
        } catch (NumberFormatException unused) {
            return d4;
        }
    }

    public int getAttributeInt(@NonNull String str, int i4) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return i4;
        }
        try {
            return exifAttribute.getIntValue(this.mExifByteOrder);
        } catch (NumberFormatException unused) {
            return i4;
        }
    }

    @Nullable
    public long[] getAttributeRange(@NonNull String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        if (!this.mModified) {
            ExifAttribute exifAttribute = getExifAttribute(str);
            if (exifAttribute != null) {
                return new long[]{exifAttribute.bytesOffset, exifAttribute.bytes.length};
            }
            return null;
        }
        throw new IllegalStateException("The underlying file has been modified since being parsed");
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Long getDateTime() {
        return parseDateTime(getAttribute(TAG_DATETIME), getAttribute(TAG_SUBSEC_TIME), getAttribute(TAG_OFFSET_TIME));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Long getDateTimeDigitized() {
        return parseDateTime(getAttribute(TAG_DATETIME_DIGITIZED), getAttribute(TAG_SUBSEC_TIME_DIGITIZED), getAttribute(TAG_OFFSET_TIME_DIGITIZED));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Long getDateTimeOriginal() {
        return parseDateTime(getAttribute(TAG_DATETIME_ORIGINAL), getAttribute(TAG_SUBSEC_TIME_ORIGINAL), getAttribute(TAG_OFFSET_TIME_ORIGINAL));
    }

    @Nullable
    @SuppressLint({"AutoBoxing"})
    public Long getGpsDateTime() {
        String attribute = getAttribute(TAG_GPS_DATESTAMP);
        String attribute2 = getAttribute(TAG_GPS_TIMESTAMP);
        if (attribute != null && attribute2 != null) {
            Pattern pattern = NON_ZERO_TIME_PATTERN;
            if (pattern.matcher(attribute).matches() || pattern.matcher(attribute2).matches()) {
                String str = attribute + ' ' + attribute2;
                ParsePosition parsePosition = new ParsePosition(0);
                try {
                    Date parse = sFormatterPrimary.parse(str, parsePosition);
                    if (parse == null && (parse = sFormatterSecondary.parse(str, parsePosition)) == null) {
                        return null;
                    }
                    return Long.valueOf(parse.getTime());
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return null;
    }

    @Deprecated
    public boolean getLatLong(float[] fArr) {
        double[] latLong = getLatLong();
        if (latLong == null) {
            return false;
        }
        fArr[0] = (float) latLong[0];
        fArr[1] = (float) latLong[1];
        return true;
    }

    public int getRotationDegrees() {
        switch (getAttributeInt(TAG_ORIENTATION, 1)) {
            case 3:
            case 4:
                return com.facebook.imagepipeline.common.e.f12205e;
            case 5:
            case 8:
                return com.facebook.imagepipeline.common.e.f12206f;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }

    @Nullable
    public byte[] getThumbnail() {
        int i4 = this.mThumbnailCompression;
        if (i4 == 6 || i4 == 7) {
            return getThumbnailBytes();
        }
        return null;
    }

    @Nullable
    public Bitmap getThumbnailBitmap() {
        if (this.mHasThumbnail) {
            if (this.mThumbnailBytes == null) {
                this.mThumbnailBytes = getThumbnailBytes();
            }
            int i4 = this.mThumbnailCompression;
            if (i4 == 6 || i4 == 7) {
                return BitmapFactory.decodeByteArray(this.mThumbnailBytes, 0, this.mThumbnailLength);
            }
            if (i4 == 1) {
                int length = this.mThumbnailBytes.length / 3;
                int[] iArr = new int[length];
                for (int i10 = 0; i10 < length; i10++) {
                    byte[] bArr = this.mThumbnailBytes;
                    int i11 = i10 * 3;
                    iArr[i10] = (bArr[i11] << 16) + 0 + (bArr[i11 + 1] << 8) + bArr[i11 + 2];
                }
                ExifAttribute exifAttribute = this.mAttributes[4].get(TAG_IMAGE_LENGTH);
                ExifAttribute exifAttribute2 = this.mAttributes[4].get(TAG_IMAGE_WIDTH);
                if (exifAttribute != null && exifAttribute2 != null) {
                    return Bitmap.createBitmap(iArr, exifAttribute2.getIntValue(this.mExifByteOrder), exifAttribute.getIntValue(this.mExifByteOrder), Bitmap.Config.ARGB_8888);
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0059 A[Catch: Exception -> 0x0092, all -> 0x00b7, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00b7, blocks: (B:29:0x0059, B:32:0x006f, B:34:0x007b, B:39:0x0086, B:40:0x008b, B:41:0x008c, B:42:0x0091, B:45:0x0094, B:46:0x0099, B:55:0x00a9), top: B:66:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094 A[Catch: Exception -> 0x0092, all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:29:0x0059, B:32:0x006f, B:34:0x007b, B:39:0x0086, B:40:0x008b, B:41:0x008c, B:42:0x0091, B:45:0x0094, B:46:0x0099, B:55:0x00a9), top: B:66:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00be  */
    /* JADX WARN: Type inference failed for: r1v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.content.res.AssetManager$AssetInputStream, java.io.Closeable, java.io.InputStream] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] getThumbnailBytes() {
        /*
            Method dump skipped, instructions count: 194
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getThumbnailBytes():byte[]");
    }

    @Nullable
    public long[] getThumbnailRange() {
        if (!this.mModified) {
            if (this.mHasThumbnail) {
                if (!this.mHasThumbnailStrips || this.mAreThumbnailStripsConsecutive) {
                    return new long[]{this.mThumbnailOffset + this.mOffsetToExifData, this.mThumbnailLength};
                }
                return null;
            }
            return null;
        }
        throw new IllegalStateException("The underlying file has been modified since being parsed");
    }

    public boolean hasAttribute(@NonNull String str) {
        return getExifAttribute(str) != null;
    }

    public boolean hasThumbnail() {
        return this.mHasThumbnail;
    }

    public boolean isFlipped() {
        int attributeInt = getAttributeInt(TAG_ORIENTATION, 1);
        return attributeInt == 2 || attributeInt == 7 || attributeInt == 4 || attributeInt == 5;
    }

    public boolean isThumbnailCompressed() {
        if (this.mHasThumbnail) {
            int i4 = this.mThumbnailCompression;
            return i4 == 6 || i4 == 7;
        }
        return false;
    }

    public void resetOrientation() {
        setAttribute(TAG_ORIENTATION, Integer.toString(1));
    }

    public void rotate(int i4) {
        if (i4 % 90 == 0) {
            int attributeInt = getAttributeInt(TAG_ORIENTATION, 1);
            List<Integer> list = ROTATION_ORDER;
            if (list.contains(Integer.valueOf(attributeInt))) {
                int indexOf = (list.indexOf(Integer.valueOf(attributeInt)) + (i4 / 90)) % 4;
                r4 = list.get(indexOf + (indexOf < 0 ? 4 : 0)).intValue();
            } else {
                List<Integer> list2 = FLIPPED_ROTATION_ORDER;
                if (list2.contains(Integer.valueOf(attributeInt))) {
                    int indexOf2 = (list2.indexOf(Integer.valueOf(attributeInt)) + (i4 / 90)) % 4;
                    r4 = list2.get(indexOf2 + (indexOf2 < 0 ? 4 : 0)).intValue();
                }
            }
            setAttribute(TAG_ORIENTATION, Integer.toString(r4));
            return;
        }
        throw new IllegalArgumentException("degree should be a multiple of 90");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e9 A[Catch: all -> 0x0119, Exception -> 0x011b, TryCatch #15 {Exception -> 0x011b, all -> 0x0119, blocks: (B:52:0x00dc, B:54:0x00e9, B:56:0x0107, B:55:0x00fc), top: B:110:0x00dc }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fc A[Catch: all -> 0x0119, Exception -> 0x011b, TryCatch #15 {Exception -> 0x011b, all -> 0x0119, blocks: (B:52:0x00dc, B:54:0x00e9, B:56:0x0107, B:55:0x00fc), top: B:110:0x00dc }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void saveAttributes() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 376
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.saveAttributes():void");
    }

    public void setAltitude(double d4) {
        String str = d4 >= 0.0d ? "0" : "1";
        setAttribute(TAG_GPS_ALTITUDE, new Rational(Math.abs(d4)).toString());
        setAttribute(TAG_GPS_ALTITUDE_REF, str);
    }

    public void setAttribute(@NonNull String str, @Nullable String str2) {
        ExifTag exifTag;
        int i4;
        Matcher matcher;
        String str3 = str;
        String str4 = str2;
        Objects.requireNonNull(str3, "tag shouldn't be null");
        if ((TAG_DATETIME.equals(str3) || TAG_DATETIME_ORIGINAL.equals(str3) || TAG_DATETIME_DIGITIZED.equals(str3)) && str4 != null) {
            boolean find = DATETIME_PRIMARY_FORMAT_PATTERN.matcher(str4).find();
            boolean find2 = DATETIME_SECONDARY_FORMAT_PATTERN.matcher(str4).find();
            if (str2.length() != 19 || (!find && !find2)) {
                Log.w(TAG, "Invalid value for " + str3 + " : " + str4);
                return;
            } else if (find2) {
                str4 = str4.replaceAll("-", ":");
            }
        }
        if (TAG_ISO_SPEED_RATINGS.equals(str3)) {
            if (DEBUG) {
                Log.d(TAG, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str3 = TAG_PHOTOGRAPHIC_SENSITIVITY;
        }
        int i10 = 2;
        int i11 = 1;
        if (str4 != null && sTagSetForCompatibility.contains(str3)) {
            if (str3.equals(TAG_GPS_TIMESTAMP)) {
                if (!GPS_TIMESTAMP_PATTERN.matcher(str4).find()) {
                    Log.w(TAG, "Invalid value for " + str3 + " : " + str4);
                    return;
                }
                str4 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else {
                try {
                    str4 = new Rational(Double.parseDouble(str4)).toString();
                } catch (NumberFormatException unused) {
                    Log.w(TAG, "Invalid value for " + str3 + " : " + str4);
                    return;
                }
            }
        }
        char c10 = 0;
        int i12 = 0;
        while (i12 < EXIF_TAGS.length) {
            if ((i12 != 4 || this.mHasThumbnail) && (exifTag = sExifTagMapsForWriting[i12].get(str3)) != null) {
                if (str4 == null) {
                    this.mAttributes[i12].remove(str3);
                } else {
                    Pair<Integer, Integer> guessDataFormat = guessDataFormat(str4);
                    int i13 = -1;
                    if (exifTag.primaryFormat != ((Integer) guessDataFormat.first).intValue() && exifTag.primaryFormat != ((Integer) guessDataFormat.second).intValue()) {
                        int i14 = exifTag.secondaryFormat;
                        if (i14 != -1 && (i14 == ((Integer) guessDataFormat.first).intValue() || exifTag.secondaryFormat == ((Integer) guessDataFormat.second).intValue())) {
                            i4 = exifTag.secondaryFormat;
                        } else {
                            int i15 = exifTag.primaryFormat;
                            if (i15 == i11 || i15 == 7 || i15 == i10) {
                                i4 = i15;
                            } else if (DEBUG) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Given tag (");
                                sb.append(str3);
                                sb.append(") value didn't match with one of expected formats: ");
                                String[] strArr = IFD_FORMAT_NAMES;
                                sb.append(strArr[exifTag.primaryFormat]);
                                sb.append(exifTag.secondaryFormat == -1 ? "" : ", " + strArr[exifTag.secondaryFormat]);
                                sb.append(" (guess: ");
                                sb.append(strArr[((Integer) guessDataFormat.first).intValue()]);
                                sb.append(((Integer) guessDataFormat.second).intValue() != -1 ? ", " + strArr[((Integer) guessDataFormat.second).intValue()] : "");
                                sb.append(")");
                                Log.d(TAG, sb.toString());
                            }
                        }
                    } else {
                        i4 = exifTag.primaryFormat;
                    }
                    switch (i4) {
                        case 1:
                            this.mAttributes[i12].put(str3, ExifAttribute.createByte(str4));
                            continue;
                            i12++;
                            i10 = 2;
                            c10 = 0;
                            i11 = 1;
                        case 2:
                        case 7:
                            this.mAttributes[i12].put(str3, ExifAttribute.createString(str4));
                            continue;
                            i12++;
                            i10 = 2;
                            c10 = 0;
                            i11 = 1;
                        case 3:
                            String[] split = str4.split(",", -1);
                            int[] iArr = new int[split.length];
                            for (int i16 = 0; i16 < split.length; i16++) {
                                iArr[i16] = Integer.parseInt(split[i16]);
                            }
                            this.mAttributes[i12].put(str3, ExifAttribute.createUShort(iArr, this.mExifByteOrder));
                            continue;
                            i12++;
                            i10 = 2;
                            c10 = 0;
                            i11 = 1;
                        case 4:
                            String[] split2 = str4.split(",", -1);
                            long[] jArr = new long[split2.length];
                            for (int i17 = 0; i17 < split2.length; i17++) {
                                jArr[i17] = Long.parseLong(split2[i17]);
                            }
                            this.mAttributes[i12].put(str3, ExifAttribute.createULong(jArr, this.mExifByteOrder));
                            continue;
                            i12++;
                            i10 = 2;
                            c10 = 0;
                            i11 = 1;
                        case 5:
                            String[] split3 = str4.split(",", -1);
                            Rational[] rationalArr = new Rational[split3.length];
                            int i18 = 0;
                            while (i18 < split3.length) {
                                String[] split4 = split3[i18].split("/", i13);
                                rationalArr[i18] = new Rational((long) Double.parseDouble(split4[0]), (long) Double.parseDouble(split4[1]));
                                i18++;
                                i13 = -1;
                            }
                            this.mAttributes[i12].put(str3, ExifAttribute.createURational(rationalArr, this.mExifByteOrder));
                            continue;
                            i12++;
                            i10 = 2;
                            c10 = 0;
                            i11 = 1;
                        case 6:
                        case 8:
                        case 11:
                        default:
                            if (DEBUG) {
                                Log.d(TAG, "Data format isn't one of expected formats: " + i4);
                            } else {
                                continue;
                            }
                            i12++;
                            i10 = 2;
                            c10 = 0;
                            i11 = 1;
                        case 9:
                            String[] split5 = str4.split(",", -1);
                            int[] iArr2 = new int[split5.length];
                            for (int i19 = 0; i19 < split5.length; i19++) {
                                iArr2[i19] = Integer.parseInt(split5[i19]);
                            }
                            this.mAttributes[i12].put(str3, ExifAttribute.createSLong(iArr2, this.mExifByteOrder));
                            break;
                        case 10:
                            String[] split6 = str4.split(",", -1);
                            Rational[] rationalArr2 = new Rational[split6.length];
                            int i20 = 0;
                            while (i20 < split6.length) {
                                String[] split7 = split6[i20].split("/", -1);
                                rationalArr2[i20] = new Rational((long) Double.parseDouble(split7[c10]), (long) Double.parseDouble(split7[i11]));
                                i20++;
                                split6 = split6;
                                c10 = 0;
                                i11 = 1;
                            }
                            this.mAttributes[i12].put(str3, ExifAttribute.createSRational(rationalArr2, this.mExifByteOrder));
                            break;
                        case 12:
                            String[] split8 = str4.split(",", -1);
                            double[] dArr = new double[split8.length];
                            for (int i21 = 0; i21 < split8.length; i21++) {
                                dArr[i21] = Double.parseDouble(split8[i21]);
                            }
                            this.mAttributes[i12].put(str3, ExifAttribute.createDouble(dArr, this.mExifByteOrder));
                            break;
                    }
                }
            }
            i12++;
            i10 = 2;
            c10 = 0;
            i11 = 1;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setDateTime(@NonNull Long l10) {
        setAttribute(TAG_DATETIME, sFormatterPrimary.format(new Date(l10.longValue())));
        setAttribute(TAG_SUBSEC_TIME, Long.toString(l10.longValue() % 1000));
    }

    public void setGpsInfo(Location location) {
        if (location == null) {
            return;
        }
        setAttribute(TAG_GPS_PROCESSING_METHOD, location.getProvider());
        setLatLong(location.getLatitude(), location.getLongitude());
        setAltitude(location.getAltitude());
        setAttribute(TAG_GPS_SPEED_REF, "K");
        setAttribute(TAG_GPS_SPEED, new Rational((location.getSpeed() * ((float) TimeUnit.HOURS.toSeconds(1L))) / 1000.0f).toString());
        String[] split = sFormatterPrimary.format(new Date(location.getTime())).split("\\s+", -1);
        setAttribute(TAG_GPS_DATESTAMP, split[0]);
        setAttribute(TAG_GPS_TIMESTAMP, split[1]);
    }

    public void setLatLong(double d4, double d10) {
        if (d4 >= -90.0d && d4 <= 90.0d && !Double.isNaN(d4)) {
            if (d10 >= -180.0d && d10 <= 180.0d && !Double.isNaN(d10)) {
                setAttribute(TAG_GPS_LATITUDE_REF, d4 >= 0.0d ? "N" : LATITUDE_SOUTH);
                setAttribute(TAG_GPS_LATITUDE, convertDecimalDegree(Math.abs(d4)));
                setAttribute(TAG_GPS_LONGITUDE_REF, d10 >= 0.0d ? LONGITUDE_EAST : LONGITUDE_WEST);
                setAttribute(TAG_GPS_LONGITUDE, convertDecimalDegree(Math.abs(d10)));
                return;
            }
            throw new IllegalArgumentException("Longitude value " + d10 + " is not valid.");
        }
        throw new IllegalArgumentException("Latitude value " + d4 + " is not valid.");
    }

    private static void copy(InputStream inputStream, OutputStream outputStream, int i4) throws IOException {
        byte[] bArr = new byte[8192];
        while (i4 > 0) {
            int min = Math.min(i4, 8192);
            int read = inputStream.read(bArr, 0, min);
            if (read == min) {
                i4 -= read;
                outputStream.write(bArr, 0, read);
            } else {
                throw new IOException("Failed to copy the given amount of bytes from the inputstream to the output stream.");
            }
        }
    }

    @Nullable
    public double[] getLatLong() {
        String attribute = getAttribute(TAG_GPS_LATITUDE);
        String attribute2 = getAttribute(TAG_GPS_LATITUDE_REF);
        String attribute3 = getAttribute(TAG_GPS_LONGITUDE);
        String attribute4 = getAttribute(TAG_GPS_LONGITUDE_REF);
        if (attribute == null || attribute2 == null || attribute3 == null || attribute4 == null) {
            return null;
        }
        try {
            return new double[]{convertRationalLatLonToDouble(attribute, attribute2), convertRationalLatLonToDouble(attribute3, attribute4)};
        } catch (IllegalArgumentException unused) {
            Log.w(TAG, "Latitude/longitude values are not parsable. " + String.format("latValue=%s, latRef=%s, lngValue=%s, lngRef=%s", attribute, attribute2, attribute3, attribute4));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ExifTag {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        ExifTag(String str, int i4, int i10) {
            this.name = str;
            this.number = i4;
            this.primaryFormat = i10;
            this.secondaryFormat = -1;
        }

        boolean isFormatCompatible(int i4) {
            int i10;
            int i11 = this.primaryFormat;
            if (i11 == 7 || i4 == 7 || i11 == i4 || (i10 = this.secondaryFormat) == i4) {
                return true;
            }
            if ((i11 == 4 || i10 == 4) && i4 == 3) {
                return true;
            }
            if ((i11 == 9 || i10 == 9) && i4 == 8) {
                return true;
            }
            return (i11 == 12 || i10 == 12) && i4 == 11;
        }

        ExifTag(String str, int i4, int i10, int i11) {
            this.name = str;
            this.number = i4;
            this.primaryFormat = i10;
            this.secondaryFormat = i11;
        }
    }

    public ExifInterface(@NonNull String str) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(str, "filename cannot be null");
        initForFilename(str);
    }

    public ExifInterface(@NonNull FileDescriptor fileDescriptor) throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(fileDescriptor, "fileDescriptor cannot be null");
        this.mAssetInputStream = null;
        this.mFilename = null;
        boolean z9 = false;
        if (isSeekableFD(fileDescriptor)) {
            this.mSeekableFileDescriptor = fileDescriptor;
            try {
                fileDescriptor = Os.dup(fileDescriptor);
                z9 = true;
            } catch (Exception e4) {
                throw new IOException("Failed to duplicate file descriptor", e4);
            }
        } else {
            this.mSeekableFileDescriptor = null;
        }
        try {
            fileInputStream = new FileInputStream(fileDescriptor);
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            loadAttributes(fileInputStream);
            closeQuietly(fileInputStream);
            if (z9) {
                closeFileDescriptor(fileDescriptor);
            }
        } catch (Throwable th3) {
            th = th3;
            closeQuietly(fileInputStream);
            if (z9) {
                closeFileDescriptor(fileDescriptor);
            }
            throw th;
        }
    }

    public ExifInterface(@NonNull InputStream inputStream) throws IOException {
        this(inputStream, 0);
    }

    public ExifInterface(@NonNull InputStream inputStream, int i4) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(inputStream, "inputStream cannot be null");
        this.mFilename = null;
        if (i4 == 1) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            if (!isExifDataOnly(bufferedInputStream)) {
                Log.w(TAG, "Given data does not follow the structure of an Exif-only data.");
                return;
            }
            this.mIsExifDataOnly = true;
            this.mAssetInputStream = null;
            this.mSeekableFileDescriptor = null;
            inputStream = bufferedInputStream;
        } else if (inputStream instanceof AssetManager.AssetInputStream) {
            this.mAssetInputStream = (AssetManager.AssetInputStream) inputStream;
            this.mSeekableFileDescriptor = null;
        } else {
            if (inputStream instanceof FileInputStream) {
                FileInputStream fileInputStream = (FileInputStream) inputStream;
                if (isSeekableFD(fileInputStream.getFD())) {
                    this.mAssetInputStream = null;
                    this.mSeekableFileDescriptor = fileInputStream.getFD();
                }
            }
            this.mAssetInputStream = null;
            this.mSeekableFileDescriptor = null;
        }
        loadAttributes(inputStream);
    }
}
