package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import io.sentry.protocol.y;

/* compiled from: MediaCodecInfo.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: l  reason: collision with root package name */
    public static final String f24076l = "MediaCodecInfo";

    /* renamed from: m  reason: collision with root package name */
    public static final int f24077m = -1;

    /* renamed from: a  reason: collision with root package name */
    public final String f24078a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24079b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24080c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f24081d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f24082e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f24083f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f24084g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f24085h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f24086i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f24087j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f24088k;

    @VisibleForTesting
    l(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.f24078a = (String) com.google.android.exoplayer2.util.a.g(str);
        this.f24079b = str2;
        this.f24080c = str3;
        this.f24081d = codecCapabilities;
        this.f24085h = z9;
        this.f24086i = z10;
        this.f24087j = z11;
        this.f24082e = z12;
        this.f24083f = z13;
        this.f24084g = z14;
        this.f24088k = a0.s(str2);
    }

    private static boolean A(String str) {
        return z0.f27746d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean B(String str) {
        if (z0.f27743a <= 22) {
            String str2 = z0.f27746d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    private static final boolean C(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(z0.f27744b)) ? false : true;
    }

    public static l D(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13) {
        return new l(str, str2, str3, codecCapabilities, z9, z10, z11, (z12 || codecCapabilities == null || !j(codecCapabilities) || B(str)) ? false : true, codecCapabilities != null && u(codecCapabilities), z13 || (codecCapabilities != null && s(codecCapabilities)));
    }

    private static int a(String str, String str2, int i4) {
        int i10;
        if (i4 > 1 || ((z0.f27743a >= 26 && i4 > 0) || a0.D.equals(str2) || a0.W.equals(str2) || a0.X.equals(str2) || "audio/mp4a-latm".equals(str2) || a0.T.equals(str2) || a0.U.equals(str2) || a0.I.equals(str2) || a0.Y.equals(str2) || a0.J.equals(str2) || a0.K.equals(str2) || a0.f27432a0.equals(str2))) {
            return i4;
        }
        if (a0.L.equals(str2)) {
            i10 = 6;
        } else {
            i10 = a0.M.equals(str2) ? 16 : 30;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("AssumedMaxChannelAdjustment: ");
        sb.append(str);
        sb.append(", [");
        sb.append(i4);
        sb.append(" to ");
        sb.append(i10);
        sb.append("]");
        w.n(f24076l, sb.toString());
        return i10;
    }

    @RequiresApi(21)
    private static Point c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i4, int i10) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(z0.m(i4, widthAlignment) * widthAlignment, z0.m(i10, heightAlignment) * heightAlignment);
    }

    @RequiresApi(21)
    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i4, int i10, double d4) {
        Point c10 = c(videoCapabilities, i4, i10);
        int i11 = c10.x;
        int i12 = c10.y;
        if (d4 != -1.0d && d4 >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i11, i12, Math.floor(d4));
        }
        return videoCapabilities.isSizeSupported(i11, i12);
    }

    private static MediaCodecInfo.CodecProfileLevel[] f(@Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int intValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
        int i4 = intValue >= 180000000 ? 1024 : intValue >= 120000000 ? 512 : intValue >= 60000000 ? 256 : intValue >= 30000000 ? 128 : intValue >= 18000000 ? 64 : intValue >= 12000000 ? 32 : intValue >= 7200000 ? 16 : intValue >= 3600000 ? 8 : intValue >= 1800000 ? 4 : intValue >= 800000 ? 2 : 1;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i4;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    @RequiresApi(23)
    private static int h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.getMaxSupportedInstances();
    }

    private static boolean j(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return z0.f27743a >= 19 && k(codecCapabilities);
    }

    @RequiresApi(19)
    private static boolean k(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return z0.f27743a >= 21 && t(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean u(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return z0.f27743a >= 21 && v(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean v(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void x(String str) {
        String str2 = this.f24078a;
        String str3 = this.f24079b;
        String str4 = z0.f27747e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("AssumedSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        w.b(f24076l, sb.toString());
    }

    private void y(String str) {
        String str2 = this.f24078a;
        String str3 = this.f24079b;
        String str4 = z0.f27747e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        w.b(f24076l, sb.toString());
    }

    private static boolean z(String str) {
        return a0.U.equals(str);
    }

    @Nullable
    @RequiresApi(21)
    public Point b(int i4, int i10) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24081d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return c(videoCapabilities, i4, i10);
    }

    public com.google.android.exoplayer2.decoder.e e(Format format, Format format2) {
        int i4 = !z0.c(format.sampleMimeType, format2.sampleMimeType) ? 8 : 0;
        if (this.f24088k) {
            if (format.rotationDegrees != format2.rotationDegrees) {
                i4 |= 1024;
            }
            if (!this.f24082e && (format.width != format2.width || format.height != format2.height)) {
                i4 |= 512;
            }
            if (!z0.c(format.colorInfo, format2.colorInfo)) {
                i4 |= 2048;
            }
            if (A(this.f24078a) && !format.initializationDataEquals(format2)) {
                i4 |= 2;
            }
            if (i4 == 0) {
                return new com.google.android.exoplayer2.decoder.e(this.f24078a, format, format2, format.initializationDataEquals(format2) ? 3 : 2, 0);
            }
        } else {
            if (format.channelCount != format2.channelCount) {
                i4 |= 4096;
            }
            if (format.sampleRate != format2.sampleRate) {
                i4 |= 8192;
            }
            if (format.pcmEncoding != format2.pcmEncoding) {
                i4 |= 16384;
            }
            if (i4 == 0 && "audio/mp4a-latm".equals(this.f24079b)) {
                Pair<Integer, Integer> q9 = MediaCodecUtil.q(format);
                Pair<Integer, Integer> q10 = MediaCodecUtil.q(format2);
                if (q9 != null && q10 != null) {
                    int intValue = ((Integer) q9.first).intValue();
                    int intValue2 = ((Integer) q10.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new com.google.android.exoplayer2.decoder.e(this.f24078a, format, format2, 3, 0);
                    }
                }
            }
            if (!format.initializationDataEquals(format2)) {
                i4 |= 32;
            }
            if (z(this.f24079b)) {
                i4 |= 2;
            }
            if (i4 == 0) {
                return new com.google.android.exoplayer2.decoder.e(this.f24078a, format, format2, 1, 0);
            }
        }
        return new com.google.android.exoplayer2.decoder.e(this.f24078a, format, format2, 0, i4);
    }

    public int g() {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        if (z0.f27743a < 23 || (codecCapabilities = this.f24081d) == null) {
            return -1;
        }
        return h(codecCapabilities);
    }

    public MediaCodecInfo.CodecProfileLevel[] i() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24081d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @RequiresApi(21)
    public boolean l(int i4) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24081d;
        if (codecCapabilities == null) {
            y("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            y("channelCount.aCaps");
            return false;
        } else if (a(this.f24078a, this.f24079b, audioCapabilities.getMaxInputChannelCount()) < i4) {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i4);
            y(sb.toString());
            return false;
        } else {
            return true;
        }
    }

    @RequiresApi(21)
    public boolean m(int i4) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24081d;
        if (codecCapabilities == null) {
            y("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            y("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i4)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i4);
            y(sb.toString());
            return false;
        }
    }

    public boolean n(Format format) {
        String g4;
        String str = format.codecs;
        if (str == null || this.f24079b == null || (g4 = a0.g(str)) == null) {
            return true;
        }
        if (!this.f24079b.equals(g4)) {
            String str2 = format.codecs;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 13 + g4.length());
            sb.append("codec.mime ");
            sb.append(str2);
            sb.append(", ");
            sb.append(g4);
            y(sb.toString());
            return false;
        }
        Pair<Integer, Integer> q9 = MediaCodecUtil.q(format);
        if (q9 == null) {
            return true;
        }
        int intValue = ((Integer) q9.first).intValue();
        int intValue2 = ((Integer) q9.second).intValue();
        if (this.f24088k || intValue == 42) {
            MediaCodecInfo.CodecProfileLevel[] i4 = i();
            if (z0.f27743a <= 23 && a0.f27455m.equals(this.f24079b) && i4.length == 0) {
                i4 = f(this.f24081d);
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : i4) {
                if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                    return true;
                }
            }
            String str3 = format.codecs;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 22 + g4.length());
            sb2.append("codec.profileLevel, ");
            sb2.append(str3);
            sb2.append(", ");
            sb2.append(g4);
            y(sb2.toString());
            return false;
        }
        return true;
    }

    public boolean o(Format format) throws MediaCodecUtil.DecoderQueryException {
        int i4;
        if (n(format)) {
            if (this.f24088k) {
                int i10 = format.width;
                if (i10 <= 0 || (i4 = format.height) <= 0) {
                    return true;
                }
                if (z0.f27743a >= 21) {
                    return w(i10, i4, format.frameRate);
                }
                boolean z9 = i10 * i4 <= MediaCodecUtil.N();
                if (!z9) {
                    int i11 = format.width;
                    int i12 = format.height;
                    StringBuilder sb = new StringBuilder(40);
                    sb.append("legacyFrameSize, ");
                    sb.append(i11);
                    sb.append(y.b.f83919g);
                    sb.append(i12);
                    y(sb.toString());
                }
                return z9;
            }
            if (z0.f27743a >= 21) {
                int i13 = format.sampleRate;
                if (i13 != -1 && !m(i13)) {
                    return false;
                }
                int i14 = format.channelCount;
                if (i14 != -1 && !l(i14)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public boolean p() {
        if (z0.f27743a >= 29 && a0.f27455m.equals(this.f24079b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : i()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean q(Format format) {
        if (this.f24088k) {
            return this.f24082e;
        }
        Pair<Integer, Integer> q9 = MediaCodecUtil.q(format);
        return q9 != null && ((Integer) q9.first).intValue() == 42;
    }

    @Deprecated
    public boolean r(Format format, Format format2, boolean z9) {
        if (!z9 && format.colorInfo != null && format2.colorInfo == null) {
            format2 = format2.buildUpon().J(format.colorInfo).E();
        }
        int i4 = e(format, format2).f21624d;
        return i4 == 2 || i4 == 3;
    }

    public String toString() {
        return this.f24078a;
    }

    @RequiresApi(21)
    public boolean w(int i4, int i10, double d4) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24081d;
        if (codecCapabilities == null) {
            y("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            y("sizeAndRate.vCaps");
            return false;
        } else if (d(videoCapabilities, i4, i10, d4)) {
            return true;
        } else {
            if (i4 < i10 && C(this.f24078a) && d(videoCapabilities, i10, i4, d4)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.rotated, ");
                sb.append(i4);
                sb.append(y.b.f83919g);
                sb.append(i10);
                sb.append(y.b.f83919g);
                sb.append(d4);
                x(sb.toString());
                return true;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.support, ");
            sb2.append(i4);
            sb2.append(y.b.f83919g);
            sb2.append(i10);
            sb2.append(y.b.f83919g);
            sb2.append(d4);
            y(sb2.toString());
            return false;
        }
    }
}
