package com.ksyun.media.player.misc;

import android.annotation.TargetApi;
import android.text.TextUtils;
import com.ksyun.media.player.KSYMediaMeta;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public class KSYMediaFormat implements c {
    public static final String CODEC_NAME_H264 = "h264";
    public static final String KEY_IJK_BIT_RATE_UI = "ijk-bit-rate-ui";
    public static final String KEY_IJK_CHANNEL_UI = "ijk-channel-ui";
    public static final String KEY_IJK_CODEC_LONG_NAME_UI = "ijk-codec-long-name-ui";
    public static final String KEY_IJK_CODEC_PIXEL_FORMAT_UI = "ijk-pixel-format-ui";
    public static final String KEY_IJK_CODEC_PROFILE_LEVEL_UI = "ijk-profile-level-ui";
    public static final String KEY_IJK_FRAME_RATE_UI = "ijk-frame-rate-ui";
    public static final String KEY_IJK_RESOLUTION_UI = "ijk-resolution-ui";
    public static final String KEY_IJK_SAMPLE_RATE_UI = "ijk-sample-rate-ui";

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, a> f45546d = new HashMap();
    public final KSYMediaMeta.KSYStreamMeta mMediaFormat;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class a {
        private a() {
        }

        protected String a() {
            return "N/A";
        }

        protected abstract String a(KSYMediaFormat kSYMediaFormat);

        public String b(KSYMediaFormat kSYMediaFormat) {
            String a10 = a(kSYMediaFormat);
            return TextUtils.isEmpty(a10) ? a() : a10;
        }
    }

    public KSYMediaFormat(KSYMediaMeta.KSYStreamMeta kSYStreamMeta) {
        Map<String, a> map = f45546d;
        map.put(KEY_IJK_CODEC_LONG_NAME_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.1
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            public String a(KSYMediaFormat kSYMediaFormat) {
                return KSYMediaFormat.this.mMediaFormat.getString(KSYMediaMeta.IJKM_KEY_CODEC_LONG_NAME);
            }
        });
        map.put(KEY_IJK_BIT_RATE_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.2
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                int integer = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_BITRATE);
                if (integer <= 0) {
                    return null;
                }
                return integer < 1000 ? String.format(Locale.US, "%d bit/s", Integer.valueOf(integer)) : String.format(Locale.US, "%d kb/s", Integer.valueOf(integer / 1000));
            }
        });
        map.put(KEY_IJK_CODEC_PROFILE_LEVEL_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.3
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                String string = kSYMediaFormat.getString(KSYMediaMeta.IJKM_KEY_CODEC_PROFILE);
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                String string2 = kSYMediaFormat.getString(KSYMediaMeta.IJKM_KEY_CODEC_NAME);
                if (!TextUtils.isEmpty(string2) && string2.equalsIgnoreCase(KSYMediaFormat.CODEC_NAME_H264)) {
                    int integer = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_CODEC_LEVEL);
                    if (integer < 10) {
                        return sb.toString();
                    }
                    sb.append(" Profile Level ");
                    sb.append((integer / 10) % 10);
                    int i4 = integer % 10;
                    if (i4 != 0) {
                        sb.append(".");
                        sb.append(i4);
                    }
                }
                return sb.toString();
            }
        });
        map.put(KEY_IJK_CODEC_PIXEL_FORMAT_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.4
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                return kSYMediaFormat.getString(KSYMediaMeta.IJKM_KEY_CODEC_PIXEL_FORMAT);
            }
        });
        map.put(KEY_IJK_RESOLUTION_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.5
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                int integer = kSYMediaFormat.getInteger("width");
                int integer2 = kSYMediaFormat.getInteger("height");
                int integer3 = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_SAR_NUM);
                int integer4 = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_SAR_DEN);
                if (integer <= 0 || integer2 <= 0) {
                    return null;
                }
                return (integer3 <= 0 || integer4 <= 0) ? String.format(Locale.US, "%d x %d", Integer.valueOf(integer), Integer.valueOf(integer2)) : String.format(Locale.US, "%d x %d [SAR %d:%d]", Integer.valueOf(integer), Integer.valueOf(integer2), Integer.valueOf(integer3), Integer.valueOf(integer4));
            }
        });
        map.put(KEY_IJK_FRAME_RATE_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.6
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                int integer = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_FPS_NUM);
                int integer2 = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_FPS_DEN);
                if (integer <= 0 || integer2 <= 0) {
                    return null;
                }
                return String.valueOf(integer / integer2);
            }
        });
        map.put(KEY_IJK_SAMPLE_RATE_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.7
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                int integer = kSYMediaFormat.getInteger("sample_rate");
                if (integer <= 0) {
                    return null;
                }
                return String.format(Locale.US, "%d Hz", Integer.valueOf(integer));
            }
        });
        map.put(KEY_IJK_CHANNEL_UI, new a() { // from class: com.ksyun.media.player.misc.KSYMediaFormat.8
            @Override // com.ksyun.media.player.misc.KSYMediaFormat.a
            protected String a(KSYMediaFormat kSYMediaFormat) {
                int integer = kSYMediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_CHANNEL_LAYOUT);
                if (integer <= 0) {
                    return null;
                }
                long j4 = integer;
                return j4 == 4 ? "mono" : j4 == 3 ? "stereo" : String.format(Locale.US, "%x", Integer.valueOf(integer));
            }
        });
        this.mMediaFormat = kSYStreamMeta;
    }

    @Override // com.ksyun.media.player.misc.c
    @TargetApi(16)
    public int getInteger(String str) {
        KSYMediaMeta.KSYStreamMeta kSYStreamMeta = this.mMediaFormat;
        if (kSYStreamMeta == null) {
            return 0;
        }
        return kSYStreamMeta.getInt(str);
    }

    @Override // com.ksyun.media.player.misc.c
    public String getString(String str) {
        if (this.mMediaFormat == null) {
            return null;
        }
        Map<String, a> map = f45546d;
        if (map.containsKey(str)) {
            return map.get(str).b(this);
        }
        return this.mMediaFormat.getString(str);
    }
}
