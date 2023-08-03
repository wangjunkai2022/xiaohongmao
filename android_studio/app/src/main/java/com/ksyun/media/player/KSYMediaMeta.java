package com.ksyun.media.player;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public class KSYMediaMeta {
    public static final long AV_CH_BACK_CENTER = 256;
    public static final long AV_CH_BACK_LEFT = 16;
    public static final long AV_CH_BACK_RIGHT = 32;
    public static final long AV_CH_FRONT_CENTER = 4;
    public static final long AV_CH_FRONT_LEFT = 1;
    public static final long AV_CH_FRONT_LEFT_OF_CENTER = 64;
    public static final long AV_CH_FRONT_RIGHT = 2;
    public static final long AV_CH_FRONT_RIGHT_OF_CENTER = 128;
    public static final long AV_CH_LAYOUT_2POINT1 = 11;
    public static final long AV_CH_LAYOUT_2_1 = 259;
    public static final long AV_CH_LAYOUT_2_2 = 1539;
    public static final long AV_CH_LAYOUT_3POINT1 = 15;
    public static final long AV_CH_LAYOUT_4POINT0 = 263;
    public static final long AV_CH_LAYOUT_4POINT1 = 271;
    public static final long AV_CH_LAYOUT_5POINT0 = 1543;
    public static final long AV_CH_LAYOUT_5POINT0_BACK = 55;
    public static final long AV_CH_LAYOUT_5POINT1 = 1551;
    public static final long AV_CH_LAYOUT_5POINT1_BACK = 63;
    public static final long AV_CH_LAYOUT_6POINT0 = 1799;
    public static final long AV_CH_LAYOUT_6POINT0_FRONT = 1731;
    public static final long AV_CH_LAYOUT_6POINT1 = 1807;
    public static final long AV_CH_LAYOUT_6POINT1_BACK = 319;
    public static final long AV_CH_LAYOUT_6POINT1_FRONT = 1739;
    public static final long AV_CH_LAYOUT_7POINT0 = 1591;
    public static final long AV_CH_LAYOUT_7POINT0_FRONT = 1735;
    public static final long AV_CH_LAYOUT_7POINT1 = 1599;
    public static final long AV_CH_LAYOUT_7POINT1_WIDE = 1743;
    public static final long AV_CH_LAYOUT_7POINT1_WIDE_BACK = 255;
    public static final long AV_CH_LAYOUT_HEXAGONAL = 311;
    public static final long AV_CH_LAYOUT_MONO = 4;
    public static final long AV_CH_LAYOUT_OCTAGONAL = 1847;
    public static final long AV_CH_LAYOUT_QUAD = 51;
    public static final long AV_CH_LAYOUT_STEREO = 3;
    public static final long AV_CH_LAYOUT_STEREO_DOWNMIX = 1610612736;
    public static final long AV_CH_LAYOUT_SURROUND = 7;
    public static final long AV_CH_LOW_FREQUENCY = 8;
    public static final long AV_CH_LOW_FREQUENCY_2 = 34359738368L;
    public static final long AV_CH_SIDE_LEFT = 512;
    public static final long AV_CH_SIDE_RIGHT = 1024;
    public static final long AV_CH_STEREO_LEFT = 536870912;
    public static final long AV_CH_STEREO_RIGHT = 1073741824;
    public static final long AV_CH_SURROUND_DIRECT_LEFT = 8589934592L;
    public static final long AV_CH_SURROUND_DIRECT_RIGHT = 17179869184L;
    public static final long AV_CH_TOP_BACK_CENTER = 65536;
    public static final long AV_CH_TOP_BACK_LEFT = 32768;
    public static final long AV_CH_TOP_BACK_RIGHT = 131072;
    public static final long AV_CH_TOP_CENTER = 2048;
    public static final long AV_CH_TOP_FRONT_CENTER = 8192;
    public static final long AV_CH_TOP_FRONT_LEFT = 4096;
    public static final long AV_CH_TOP_FRONT_RIGHT = 16384;
    public static final long AV_CH_WIDE_LEFT = 2147483648L;
    public static final long AV_CH_WIDE_RIGHT = 4294967296L;
    public static final String IJKM_KEY_AUDIO_CODEC = "acodec";
    public static final String IJKM_KEY_AUDIO_STREAM = "audio";
    public static final String IJKM_KEY_BITRATE = "bitrate";
    private static final String IJKM_KEY_CHANNELS = "channels";
    public static final String IJKM_KEY_CHANNEL_LAYOUT = "channel_layout";
    public static final String IJKM_KEY_CODEC_LEVEL = "codec_level";
    public static final String IJKM_KEY_CODEC_LONG_NAME = "codec_long_name";
    public static final String IJKM_KEY_CODEC_NAME = "codec_name";
    public static final String IJKM_KEY_CODEC_PIXEL_FORMAT = "codec_pixel_format";
    public static final String IJKM_KEY_CODEC_PROFILE = "codec_profile";
    public static final String IJKM_KEY_DURATION_US = "duration_us";
    public static final String IJKM_KEY_FORMAT = "format";
    public static final String IJKM_KEY_FPS_DEN = "fps_den";
    public static final String IJKM_KEY_FPS_NUM = "fps_num";
    public static final String IJKM_KEY_HEIGHT = "height";
    public static final String IJKM_KEY_HTTP_ANALYZE_DNS = "analyze_dns_time";
    public static final String IJKM_KEY_HTTP_CODE = "http_code";
    public static final String IJKM_KEY_HTTP_CONNECT_TIME = "connect_time";
    public static final String IJKM_KEY_HTTP_CONTENT_LENGHT = "http_content_length";
    public static final String IJKM_KEY_HTTP_CONTENT_RANGE = "http_content_range";
    public static final String IJKM_KEY_HTTP_FIRST_DATA_TIME = "first_data_time";
    public static final String IJKM_KEY_HTTP_REDIRECT = "http_redirect";
    public static final String IJKM_KEY_HTTP_X_CACHE = "http_x_cache";
    public static final String IJKM_KEY_INFO_STREAM_TYPE = "stream_type";
    public static final String IJKM_KEY_LANGUAGE = "language";
    public static final String IJKM_KEY_OPEN_STREAM_COST = "open_stream_cost";
    public static final String IJKM_KEY_PARSER_INFO_COST = "parser_info_cost";
    public static final String IJKM_KEY_PARSER_INFO_STATUS = "parser_info_status";
    public static final String IJKM_KEY_PREPARE_COST_TIME = "prepare_cost";
    public static final String IJKM_KEY_PREPARE_READ_BYTES = "prepare_read_bytes";
    public static final String IJKM_KEY_SAMPLE_RATE = "sample_rate";
    public static final String IJKM_KEY_SAR_DEN = "sar_den";
    public static final String IJKM_KEY_SAR_NUM = "sar_num";
    public static final String IJKM_KEY_START_US = "start_us";
    public static final String IJKM_KEY_STREAMID = "streamId";
    public static final String IJKM_KEY_STREAMS = "streams";
    public static final String IJKM_KEY_STREAM_INDEX = "stream_index";
    public static final String IJKM_KEY_SUBTITLE_STREAM = "subtitle";
    public static final String IJKM_KEY_TBR_DEN = "tbr_den";
    public static final String IJKM_KEY_TBR_NUM = "tbr_num";
    public static final String IJKM_KEY_TYPE = "type";
    public static final String IJKM_KEY_VIDEO_CODEC = "vcodec";
    public static final String IJKM_KEY_VIDEO_STREAM = "video";
    public static final String IJKM_KEY_WIDTH = "width";
    public static final String IJKM_VAL_TYPE__AUDIO = "audio";
    public static final String IJKM_VAL_TYPE__EXTERNAL_TIMED_TEXT = "external_timed_text";
    public static final String IJKM_VAL_TYPE__SUBTITLE = "subtitle";
    public static final String IJKM_VAL_TYPE__UNKNOWN = "unknown";
    public static final String IJKM_VAL_TYPE__VIDEO = "video";
    public String mACodec;
    public int mAnalyzeDnsTime;
    public KSYStreamMeta mAudioStream;
    public long mBitrate;
    public long mDurationUS;
    public String mFormat;
    public int mHttpCode;
    public String mHttpContentLength;
    public String mHttpContentRange;
    public String mHttpRedirect;
    public String mHttpXCache;
    public Bundle mMediaMeta;
    public int mOpenStreamCostTime;
    public int mParserInfoStatus;
    public int mPrepareCostTime;
    public int mPrepareReadBytes;
    public long mStartUS;
    public String mStreamId;
    public String mStreamType;
    public String mVCodec;
    public KSYStreamMeta mVideoStream;
    public final ArrayList<KSYStreamMeta> mStreams = new ArrayList<>();
    public int mHttpConnectTime = 0;
    public int mHttpFirstDataTime = 0;

    /* loaded from: classes3.dex */
    public static class KSYStreamMeta {
        public long mBitrate;
        public long mChannelLayout;
        public int mChannelNumber;
        public String mCodecLongName;
        public String mCodecName;
        public String mCodecProfile;
        public int mFpsDen;
        public int mFpsNum;
        public int mHeight;
        public final int mIndex;
        public String mLanguage;
        public Bundle mMeta;
        public int mSampleRate;
        public int mSarDen;
        public int mSarNum;
        public int mTbrDen;
        public int mTbrNum;
        public String mType;
        public int mWidth;

        public KSYStreamMeta(int i4) {
            this.mIndex = i4;
        }

        public String getBitrateInline() {
            long j4 = this.mBitrate;
            return j4 <= 0 ? "N/A" : j4 < 1000 ? String.format(Locale.US, "%d bit/s", Long.valueOf(j4)) : String.format(Locale.US, "%d kb/s", Long.valueOf(j4 / 1000));
        }

        public String getChannelLayoutInline() {
            long j4 = this.mChannelLayout;
            return j4 <= 0 ? "N/A" : j4 == 4 ? "mono" : j4 == 3 ? "stereo" : String.format(Locale.US, "%x", Long.valueOf(j4));
        }

        public String getCodecLongNameInline() {
            if (TextUtils.isEmpty(this.mCodecLongName)) {
                return !TextUtils.isEmpty(this.mCodecName) ? this.mCodecName : "N/A";
            }
            return this.mCodecLongName;
        }

        public String getCodecShortNameInline() {
            return !TextUtils.isEmpty(this.mCodecName) ? this.mCodecName : "N/A";
        }

        public String getFpsInline() {
            int i4;
            int i10 = this.mFpsNum;
            return (i10 <= 0 || (i4 = this.mFpsDen) <= 0) ? "N/A" : String.valueOf(i10 / i4);
        }

        public int getInt(String str) {
            return getInt(str, 0);
        }

        public long getLong(String str) {
            return getLong(str, 0L);
        }

        public String getResolutionInline() {
            int i4 = this.mWidth;
            return (i4 <= 0 || this.mHeight <= 0) ? "N/A" : (this.mSarNum <= 0 || this.mSarDen <= 0) ? String.format(Locale.US, "%d x %d", Integer.valueOf(i4), Integer.valueOf(this.mHeight)) : String.format(Locale.US, "%d x %d [SAR %d:%d]", Integer.valueOf(i4), Integer.valueOf(this.mHeight), Integer.valueOf(this.mSarNum), Integer.valueOf(this.mSarDen));
        }

        public String getSampleRateInline() {
            int i4 = this.mSampleRate;
            return i4 <= 0 ? "N/A" : String.format(Locale.US, "%d Hz", Integer.valueOf(i4));
        }

        public String getString(String str) {
            return this.mMeta.getString(str);
        }

        public int getInt(String str, int i4) {
            String string = getString(str);
            if (TextUtils.isEmpty(string)) {
                return i4;
            }
            try {
                return Integer.parseInt(string);
            } catch (NumberFormatException unused) {
                return i4;
            }
        }

        public long getLong(String str, long j4) {
            String string = getString(str);
            if (TextUtils.isEmpty(string)) {
                return j4;
            }
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException unused) {
                return j4;
            }
        }
    }

    public static KSYMediaMeta parse(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        KSYMediaMeta kSYMediaMeta = new KSYMediaMeta();
        kSYMediaMeta.mMediaMeta = bundle;
        kSYMediaMeta.mFormat = kSYMediaMeta.getString(IJKM_KEY_FORMAT);
        kSYMediaMeta.mDurationUS = kSYMediaMeta.getLong(IJKM_KEY_DURATION_US);
        kSYMediaMeta.mStartUS = kSYMediaMeta.getLong(IJKM_KEY_START_US);
        kSYMediaMeta.mBitrate = kSYMediaMeta.getLong(IJKM_KEY_BITRATE);
        int i4 = kSYMediaMeta.getInt("video", -1);
        int i10 = kSYMediaMeta.getInt("audio", -1);
        kSYMediaMeta.mFormat = kSYMediaMeta.getString(IJKM_KEY_HTTP_X_CACHE);
        kSYMediaMeta.mHttpRedirect = kSYMediaMeta.getString(IJKM_KEY_HTTP_REDIRECT);
        kSYMediaMeta.mHttpContentRange = kSYMediaMeta.getString(IJKM_KEY_HTTP_CONTENT_RANGE);
        kSYMediaMeta.mHttpContentLength = kSYMediaMeta.getString(IJKM_KEY_HTTP_CONTENT_LENGHT);
        kSYMediaMeta.mAnalyzeDnsTime = kSYMediaMeta.getInt(IJKM_KEY_HTTP_ANALYZE_DNS, 0);
        kSYMediaMeta.mHttpCode = kSYMediaMeta.getInt(IJKM_KEY_HTTP_CODE, 0);
        kSYMediaMeta.mStreamId = kSYMediaMeta.getString("streamId");
        try {
            if (kSYMediaMeta.getString(IJKM_KEY_HTTP_CONNECT_TIME) != null) {
                kSYMediaMeta.mHttpConnectTime = new Double(kSYMediaMeta.getString(IJKM_KEY_HTTP_CONNECT_TIME)).intValue();
            }
            if (kSYMediaMeta.getString(IJKM_KEY_HTTP_FIRST_DATA_TIME) != null) {
                kSYMediaMeta.mHttpFirstDataTime = new Double(kSYMediaMeta.getString(IJKM_KEY_HTTP_FIRST_DATA_TIME)).intValue();
            }
        } catch (NumberFormatException unused) {
            kSYMediaMeta.mHttpConnectTime = 0;
            kSYMediaMeta.mHttpFirstDataTime = 0;
        }
        kSYMediaMeta.mPrepareCostTime = kSYMediaMeta.getInt("prepare_cost", 0);
        kSYMediaMeta.mPrepareReadBytes = kSYMediaMeta.getInt("prepare_read_bytes", 0);
        kSYMediaMeta.mOpenStreamCostTime = kSYMediaMeta.getInt("open_stream_cost", 0);
        kSYMediaMeta.mParserInfoStatus = kSYMediaMeta.getInt("parser_info_status", 0);
        kSYMediaMeta.mStreamType = kSYMediaMeta.getString("stream_type");
        kSYMediaMeta.mVCodec = kSYMediaMeta.getString("vcodec");
        kSYMediaMeta.mACodec = kSYMediaMeta.getString("acodec");
        ArrayList<Bundle> parcelableArrayList = kSYMediaMeta.getParcelableArrayList(IJKM_KEY_STREAMS);
        if (parcelableArrayList == null) {
            return kSYMediaMeta;
        }
        Iterator<Bundle> it = parcelableArrayList.iterator();
        while (it.hasNext()) {
            Bundle next = it.next();
            if (next != null) {
                int i11 = next.getInt(IJKM_KEY_STREAM_INDEX);
                KSYStreamMeta kSYStreamMeta = new KSYStreamMeta(i11);
                kSYStreamMeta.mMeta = next;
                kSYStreamMeta.mType = kSYStreamMeta.getString("type");
                kSYStreamMeta.mLanguage = kSYStreamMeta.getString("language");
                if (!TextUtils.isEmpty(kSYStreamMeta.mType)) {
                    kSYStreamMeta.mCodecName = kSYStreamMeta.getString(IJKM_KEY_CODEC_NAME);
                    kSYStreamMeta.mCodecProfile = kSYStreamMeta.getString(IJKM_KEY_CODEC_PROFILE);
                    kSYStreamMeta.mCodecLongName = kSYStreamMeta.getString(IJKM_KEY_CODEC_LONG_NAME);
                    kSYStreamMeta.mBitrate = kSYStreamMeta.getInt(IJKM_KEY_BITRATE);
                    if (kSYStreamMeta.mType.equalsIgnoreCase("video")) {
                        kSYStreamMeta.mWidth = kSYStreamMeta.getInt("width");
                        kSYStreamMeta.mHeight = kSYStreamMeta.getInt("height");
                        kSYStreamMeta.mFpsNum = kSYStreamMeta.getInt(IJKM_KEY_FPS_NUM);
                        kSYStreamMeta.mFpsDen = kSYStreamMeta.getInt(IJKM_KEY_FPS_DEN);
                        kSYStreamMeta.mTbrNum = kSYStreamMeta.getInt(IJKM_KEY_TBR_NUM);
                        kSYStreamMeta.mTbrDen = kSYStreamMeta.getInt(IJKM_KEY_TBR_DEN);
                        kSYStreamMeta.mSarNum = kSYStreamMeta.getInt(IJKM_KEY_SAR_NUM);
                        kSYStreamMeta.mSarDen = kSYStreamMeta.getInt(IJKM_KEY_SAR_DEN);
                        if (i4 == i11) {
                            kSYMediaMeta.mVideoStream = kSYStreamMeta;
                        }
                    } else if (kSYStreamMeta.mType.equalsIgnoreCase("audio")) {
                        kSYStreamMeta.mSampleRate = kSYStreamMeta.getInt("sample_rate");
                        kSYStreamMeta.mChannelLayout = kSYStreamMeta.getLong(IJKM_KEY_CHANNEL_LAYOUT);
                        kSYStreamMeta.mChannelNumber = kSYStreamMeta.getInt(IJKM_KEY_CHANNELS);
                        if (i10 == i11) {
                            kSYMediaMeta.mAudioStream = kSYStreamMeta;
                        }
                    }
                    kSYMediaMeta.mStreams.add(kSYStreamMeta);
                }
            }
        }
        return kSYMediaMeta;
    }

    public int getAnalyzeDnsTime() {
        return this.mAnalyzeDnsTime;
    }

    public String getAudioCodec() {
        return this.mACodec;
    }

    public int getConnectTime() {
        return this.mHttpConnectTime;
    }

    public String getDurationInline() {
        long j4 = (this.mDurationUS + 5000) / 1000000;
        long j10 = j4 / 60;
        return String.format(Locale.US, "%02d:%02d:%02d", Long.valueOf(j10 / 60), Long.valueOf(j10 % 60), Long.valueOf(j4 % 60));
    }

    public int getFirstDataTime() {
        return this.mHttpFirstDataTime;
    }

    public int getHttpCode() {
        return this.mHttpCode;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public int getOpenStreamCostTime() {
        return this.mOpenStreamCostTime;
    }

    public ArrayList<Bundle> getParcelableArrayList(String str) {
        return this.mMediaMeta.getParcelableArrayList(str);
    }

    public int getParserInfoStatus() {
        return this.mParserInfoStatus;
    }

    public int getPrepareCostTime() {
        return this.mPrepareCostTime;
    }

    public int getPrepareReadBytes() {
        return this.mPrepareReadBytes;
    }

    public String getStreamId() {
        return this.mStreamId;
    }

    public String getStreamType() {
        return this.mStreamType;
    }

    public String getString(String str) {
        return this.mMediaMeta.getString(str);
    }

    public String getVideoCodec() {
        return this.mVCodec;
    }

    public int getInt(String str, int i4) {
        String string = getString(str);
        if (TextUtils.isEmpty(string)) {
            return i4;
        }
        try {
            return Integer.parseInt(string);
        } catch (NumberFormatException unused) {
            return i4;
        }
    }

    public long getLong(String str, long j4) {
        String string = getString(str);
        if (TextUtils.isEmpty(string)) {
            return j4;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return j4;
        }
    }
}
