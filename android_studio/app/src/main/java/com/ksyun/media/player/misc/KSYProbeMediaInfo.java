package com.ksyun.media.player.misc;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import com.ksyun.media.player.KSYLibraryManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class KSYProbeMediaInfo {
    private static String KSY_AUDIO_BITRATE = "audio_bitrate";
    private static String KSY_AUDIO_CHANNEL = "audio_channel";
    private static String KSY_AUDIO_CODEC = "audio_codec";
    private static String KSY_AUDIO_FRAME_SIZE = "audio_frame_size";
    private static String KSY_AUDIO_SAMPLE_FORMAT = "audio_sample_format";
    private static String KSY_AUDIO_SAMPLE_RATE = "audio_sample_rate";
    private static String KSY_AUDIO_STREAM_NUMBER = "audio_stream_num";
    private static String KSY_MEDIA_BITRATE = "media_bitrate";
    private static String KSY_MEDIA_DURATION = "media_duration";
    private static String KSY_MEDIA_FORMAT = "media_format";
    private static String KSY_STREAM_ARRAY_LIST = "ksy_streams";
    private static String KSY_STREAM_TYPE = "stream_type";
    private static String KSY_VIDEO_CODEC = "video_codec";
    private static String KSY_VIDEO_HEIGHT = "video_height";
    private static String KSY_VIDEO_STREAM_NUMBER = "video_stream_num";
    private static String KSY_VIDEO_WIDTH = "video_width";
    private int mMediaBitrate;
    private long mMediaDuration;
    private KSYMediaFormat mMediaFormat;
    private ArrayList<KSYProbeMediaData> mVideoStreams = new ArrayList<>();
    private ArrayList<KSYProbeMediaData> mAudioStreams = new ArrayList<>();
    private int mAudioStreamNum = 0;
    private int mVideoStreamNum = 0;

    /* loaded from: classes3.dex */
    public enum KSYAudioCodecType {
        KSY_Audio_NULL,
        KSY_Audio_AAC,
        KSY_Audio_AC3,
        KSY_Audio_AC3_PLUS,
        KSY_Audio_PCM,
        KSY_Audio_ALAC,
        KSY_Audio_AMR_NB,
        KSY_Audio_AMR_WB,
        KSY_Audio_APE,
        KSY_Audio_MPEG,
        KSY_Audio_MP3,
        KSY_Audio_COOK,
        KSY_Audio_DTS,
        KSY_Audio_DIRAC,
        KSY_Audio_FLAC,
        KSY_Audio_G723_1,
        KSY_Audio_G729,
        KSY_Audio_GSM,
        KSY_Audio_GSM_MS,
        KSY_Audio_WMA1,
        KSY_Audio_WMA2,
        KSY_Audio_WMAPRO,
        KSY_Audio_NELLYMOSER
    }

    /* loaded from: classes3.dex */
    public enum KSYAudioSampleFormat {
        KSY_SAMPLE_FMT_NULL,
        KSY_SAMPLE_FMT_U8,
        KSY_SAMPLE_FMT_S16,
        KSY_SAMPLE_FMT_S32,
        KSY_SAMPLE_FMT_FLT,
        KSY_SAMPLE_FMT_DBL,
        KSY_SAMPLE_FMT_U8P,
        KSY_SAMPLE_FMT_S16P,
        KSY_SAMPLE_FMT_S32P,
        KSY_SAMPLE_FMT_FLTP,
        KSY_SAMPLE_FMT_DBLP,
        KSY_SAMPLE_FMT_NB
    }

    /* loaded from: classes3.dex */
    public enum KSYMediaFormat {
        KSY_FORMAT_NULL,
        KSY_FORMAT_MP2T,
        KSY_FORMAT_MOV,
        KSY_FORMAT_AVI,
        KSY_FORMAT_FLV,
        KSY_FORMAT_MKV,
        KSY_FORMAT_ASF,
        KSY_FORMAT_RM,
        KSY_FORMAT_WAV,
        KSY_FORMAT_OGG,
        KSY_FORMAT_APE,
        KSY_FORMAT_RAWVIDEO,
        KSY_FORMAT_HLS
    }

    /* loaded from: classes3.dex */
    public class KSYProbeMediaData {
        private int mAudioBitrate;
        private int mAudioChannel;
        private KSYAudioCodecType mAudioCodec;
        private int mAudioFrameSize;
        private KSYAudioSampleFormat mAudioSampleFormat;
        private int mAudioSampleRate;
        private KSYVideoCodecType mVideoCodec;
        private int mVideoHeight;
        private int mVideoWidth;

        public KSYProbeMediaData() {
        }

        public int getAudioBitrate() {
            return this.mAudioBitrate;
        }

        public int getAudioChannel() {
            return this.mAudioChannel;
        }

        public KSYAudioCodecType getAudioCodecType() {
            return this.mAudioCodec;
        }

        public KSYAudioSampleFormat getAudioFormat() {
            return this.mAudioSampleFormat;
        }

        public int getAudioFrameSize() {
            return this.mAudioFrameSize;
        }

        public int getAudioSampleRate() {
            return this.mAudioSampleRate;
        }

        public KSYVideoCodecType getVideoCodecType() {
            return this.mVideoCodec;
        }

        public int getVideoHeight() {
            return this.mVideoHeight;
        }

        public int getVideoWidth() {
            return this.mVideoWidth;
        }
    }

    /* loaded from: classes3.dex */
    public enum KSYVideoCodecType {
        KSY_VIDEO_NULL,
        KSY_VIDEO_MP1V,
        KSY_VIDEO_MP2V,
        KSY_VIDEO_MP4V,
        KSY_VIDEO_MJPEG,
        KSY_VIDEO_JPEG2000,
        KSY_VIDEO_H263,
        KSY_VIDEO_H264,
        KSY_VIDEO_H265,
        KSY_VIDEO_MAD,
        KSY_VIDEO_FLV,
        KSY_VIDEO_PNG,
        KSY_VIDEO_RV10,
        KSY_VIDEO_RV20,
        KSY_VIDEO_RV30,
        KSY_VIDEO_RV40,
        KSY_VIDEO_SVQ1,
        KSY_VIDEO_SVQ3,
        KSY_VIDEO_TARGA,
        KSY_VIDEO_TARGA_Y216,
        KSY_VIDEO_AYUV,
        KSY_VIDEO_YUV4,
        KSY_VIDEO_HUFFYUV,
        KSY_VIDEO_CYUV,
        KSY_VIDEO_PGMYUV,
        KSY_VIDEO_GIF,
        KSY_VIDEO_TIFF,
        KSY_VIDEO_VC1,
        KSY_VIDEO_VP6,
        KSY_VIDEO_VP6F,
        KSY_VIDEO_VP6A,
        KSY_VIDEO_VP8,
        KSY_VIDEO_WEBP,
        KSY_VIDEO_WMV1,
        KSY_VIDEO_WMV2,
        KSY_VIDEO_WMV3
    }

    static {
        if (TextUtils.isEmpty(KSYLibraryManager.getLocalLibraryPath())) {
            if (com.ksyun.media.player.e.a("ksylive")) {
                return;
            }
            com.ksyun.media.player.e.a("ksyplayer");
        } else if (com.ksyun.media.player.e.a(KSYLibraryManager.getLocalLibraryPath(), "ksylive")) {
        } else {
            com.ksyun.media.player.e.a(KSYLibraryManager.getLocalLibraryPath(), "ksyplayer");
        }
    }

    private native Bundle _native_getMediaInfo(String str, int i4, String str2, int i10);

    private native int _native_thumbnail(Bitmap bitmap, String str, long j4, int i4, int i10, int i11);

    private void resetInternalData() {
        this.mAudioStreamNum = 0;
        this.mVideoStreamNum = 0;
        this.mMediaBitrate = 0;
        this.mMediaFormat = KSYMediaFormat.KSY_FORMAT_NULL;
        ArrayList<KSYProbeMediaData> arrayList = this.mAudioStreams;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList<KSYProbeMediaData> arrayList2 = this.mVideoStreams;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
    }

    public int getAudioStreamCount() {
        return this.mAudioStreamNum;
    }

    public ArrayList<KSYProbeMediaData> getAudioStreams() {
        return this.mAudioStreams;
    }

    public int getMediaBitrate() {
        return this.mMediaBitrate;
    }

    public long getMediaDuration() {
        return this.mMediaDuration;
    }

    public KSYMediaFormat getMediaFormat() {
        return this.mMediaFormat;
    }

    public int getVideoStreamCount() {
        return this.mVideoStreamNum;
    }

    public ArrayList<KSYProbeMediaData> getVideoStreams() {
        return this.mVideoStreams;
    }

    public Bitmap getVideoThumbnailAtTime(String str, long j4, int i4, int i10) {
        return getVideoThumbnailAtTime(str, j4, i4, i10, false);
    }

    public void probeMediaInfo(String str, int i4, Map<String, String> map, boolean z9) {
        String str2;
        resetInternalData();
        if (map == null || map.isEmpty()) {
            str2 = null;
        } else {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(entry.getKey());
                sb.append(":");
                if (!TextUtils.isEmpty(entry.getValue())) {
                    sb.append(" " + entry.getValue());
                }
                sb.append("\r\n");
            }
            str2 = sb.toString();
        }
        Bundle _native_getMediaInfo = _native_getMediaInfo(str, i4, str2, z9 ? 1 : 0);
        if (_native_getMediaInfo == null) {
            return;
        }
        this.mMediaFormat = KSYMediaFormat.values()[_native_getMediaInfo.getInt(KSY_MEDIA_FORMAT, 0)];
        this.mMediaBitrate = _native_getMediaInfo.getInt(KSY_MEDIA_BITRATE, 0);
        this.mMediaDuration = _native_getMediaInfo.getLong(KSY_MEDIA_DURATION);
        this.mVideoStreamNum = _native_getMediaInfo.getInt(KSY_VIDEO_STREAM_NUMBER, 0);
        this.mAudioStreamNum = _native_getMediaInfo.getInt(KSY_AUDIO_STREAM_NUMBER, 0);
        ArrayList parcelableArrayList = _native_getMediaInfo.getParcelableArrayList(KSY_STREAM_ARRAY_LIST);
        if (parcelableArrayList == null) {
            return;
        }
        Iterator it = parcelableArrayList.iterator();
        while (it.hasNext()) {
            Bundle bundle = (Bundle) it.next();
            String string = bundle.getString(KSY_STREAM_TYPE);
            if (!TextUtils.isEmpty(string)) {
                KSYProbeMediaData kSYProbeMediaData = new KSYProbeMediaData();
                if (string.equals("video")) {
                    kSYProbeMediaData.mVideoCodec = KSYVideoCodecType.values()[bundle.getInt(KSY_VIDEO_CODEC, 0)];
                    kSYProbeMediaData.mVideoWidth = bundle.getInt(KSY_VIDEO_WIDTH);
                    kSYProbeMediaData.mVideoHeight = bundle.getInt(KSY_VIDEO_HEIGHT);
                    this.mVideoStreams.add(kSYProbeMediaData);
                } else if (string.equals("audio")) {
                    kSYProbeMediaData.mAudioCodec = KSYAudioCodecType.values()[bundle.getInt(KSY_AUDIO_CODEC, 0)];
                    kSYProbeMediaData.mAudioBitrate = bundle.getInt(KSY_AUDIO_BITRATE, 0);
                    kSYProbeMediaData.mAudioChannel = bundle.getInt(KSY_AUDIO_CHANNEL, 0);
                    kSYProbeMediaData.mAudioSampleFormat = KSYAudioSampleFormat.values()[bundle.getInt(KSY_AUDIO_SAMPLE_FORMAT, 0)];
                    kSYProbeMediaData.mAudioSampleRate = bundle.getInt(KSY_AUDIO_SAMPLE_RATE, 0);
                    kSYProbeMediaData.mAudioFrameSize = bundle.getInt(KSY_AUDIO_FRAME_SIZE, 0);
                    this.mAudioStreams.add(kSYProbeMediaData);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Bitmap getVideoThumbnailAtTime(java.lang.String r20, long r21, int r23, int r24, boolean r25) {
        /*
            r19 = this;
            r8 = r19
            r0 = r23
            r1 = r24
            boolean r2 = android.text.TextUtils.isEmpty(r20)
            r9 = 0
            if (r2 != 0) goto L9e
            r2 = 0
            int r4 = (r21 > r2 ? 1 : (r21 == r2 ? 0 : -1))
            if (r4 < 0) goto L9e
            if (r0 < 0) goto L9e
            if (r1 >= 0) goto L19
            goto L9e
        L19:
            if (r0 <= 0) goto L2a
            if (r1 <= 0) goto L2a
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.RGB_565
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            r4 = r20
        L25:
            r13 = r0
            r14 = r1
            r17 = r2
            goto L6f
        L2a:
            r2 = 5
            r3 = 1
            r4 = r20
            r8.probeMediaInfo(r4, r2, r9, r3)
            int r2 = r8.mVideoStreamNum
            r3 = 0
            if (r2 <= 0) goto L4e
            java.util.ArrayList<com.ksyun.media.player.misc.KSYProbeMediaInfo$KSYProbeMediaData> r2 = r8.mVideoStreams
            java.lang.Object r2 = r2.get(r3)
            com.ksyun.media.player.misc.KSYProbeMediaInfo$KSYProbeMediaData r2 = (com.ksyun.media.player.misc.KSYProbeMediaInfo.KSYProbeMediaData) r2
            if (r2 == 0) goto L4e
            int r3 = r2.getVideoWidth()
            int r2 = r2.getVideoHeight()
            r18 = r3
            r3 = r2
            r2 = r18
            goto L4f
        L4e:
            r2 = 0
        L4f:
            if (r3 <= 0) goto L6b
            if (r2 <= 0) goto L6b
            if (r0 > 0) goto L5b
            if (r1 <= 0) goto L58
            goto L5b
        L58:
            r0 = r2
            r1 = r3
            goto L64
        L5b:
            if (r0 <= 0) goto L61
            int r1 = r0 * r3
            int r1 = r1 / r2
            goto L64
        L61:
            int r0 = r1 * r2
            int r0 = r0 / r3
        L64:
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.RGB_565
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            goto L25
        L6b:
            r13 = r0
            r14 = r1
            r17 = r9
        L6f:
            r0 = r19
            r1 = r17
            r2 = r20
            r3 = r21
            r5 = r13
            r6 = r14
            r7 = r25
            int r0 = r0._native_thumbnail(r1, r2, r3, r5, r6, r7)
            if (r0 <= 0) goto L9a
            int r0 = 360 - r0
            float r0 = (float) r0
            android.graphics.Matrix r15 = new android.graphics.Matrix
            r15.<init>()
            r15.postRotate(r0)
            r11 = 0
            r12 = 0
            r16 = 1
            r10 = r17
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r10, r11, r12, r13, r14, r15, r16)
            r17.recycle()
            return r0
        L9a:
            if (r0 >= 0) goto L9d
            return r9
        L9d:
            return r17
        L9e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.misc.KSYProbeMediaInfo.getVideoThumbnailAtTime(java.lang.String, long, int, int, boolean):android.graphics.Bitmap");
    }
}
