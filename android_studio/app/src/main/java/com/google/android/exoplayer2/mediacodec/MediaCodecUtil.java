package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@SuppressLint({"InlinedApi"})
/* loaded from: classes2.dex */
public final class MediaCodecUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final String f23990a = "MediaCodecUtil";

    /* renamed from: d  reason: collision with root package name */
    private static final String f23993d = "avc1";

    /* renamed from: e  reason: collision with root package name */
    private static final String f23994e = "avc2";

    /* renamed from: f  reason: collision with root package name */
    private static final String f23995f = "vp09";

    /* renamed from: g  reason: collision with root package name */
    private static final String f23996g = "hev1";

    /* renamed from: h  reason: collision with root package name */
    private static final String f23997h = "hvc1";

    /* renamed from: i  reason: collision with root package name */
    private static final String f23998i = "av01";

    /* renamed from: j  reason: collision with root package name */
    private static final String f23999j = "mp4a";

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f23991b = Pattern.compile("^\\D?(\\d+)$");
    @GuardedBy("MediaCodecUtil.class")

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<b, List<l>> f23992c = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private static int f24000k = -1;

    /* loaded from: classes2.dex */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f24001a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f24002b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f24003c;

        public b(String str, boolean z9, boolean z10) {
            this.f24001a = str;
            this.f24002b = z9;
            this.f24003c = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.f24001a, bVar.f24001a) && this.f24002b == bVar.f24002b && this.f24003c == bVar.f24003c;
        }

        public int hashCode() {
            return ((((this.f24001a.hashCode() + 31) * 31) + (this.f24002b ? 1231 : 1237)) * 31) + (this.f24003c ? 1231 : 1237);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface c {
        MediaCodecInfo a(int i4);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int d();

        boolean e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d implements c {
        private d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo a(int i4) {
            return MediaCodecList.getCodecInfoAt(i4);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int d() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean e() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes2.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f24004a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f24005b;

        public e(boolean z9, boolean z10) {
            this.f24004a = (z9 || z10) ? 1 : 0;
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        private void f() {
            if (this.f24005b == null) {
                this.f24005b = new MediaCodecList(this.f24004a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo a(int i4) {
            f();
            return this.f24005b[i4];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int d() {
            f();
            return this.f24005b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean e() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface f<T> {
        int a(T t9);
    }

    private MediaCodecUtil() {
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        return z0.f27743a >= 29 && B(mediaCodecInfo);
    }

    @RequiresApi(29)
    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z9, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z9 && str.endsWith(".secure"))) {
            return false;
        }
        int i4 = z0.f27743a;
        if (i4 >= 21 || !("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            if (i4 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
                String str3 = z0.f27744b;
                if ("a70".equals(str3) || ("Xiaomi".equals(z0.f27745c) && str3.startsWith("HM"))) {
                    return false;
                }
            }
            if (i4 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
                String str4 = z0.f27744b;
                if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                    return false;
                }
            }
            if (i4 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
                String str5 = z0.f27744b;
                if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                    return false;
                }
            }
            if (i4 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(z0.f27745c))) {
                String str6 = z0.f27744b;
                if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                    return false;
                }
            }
            if (i4 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(z0.f27745c)) {
                String str7 = z0.f27744b;
                if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                    return false;
                }
            }
            if (i4 <= 19 && z0.f27744b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                return false;
            }
            return (a0.N.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
        }
        return false;
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo) {
        if (z0.f27743a >= 29) {
            return E(mediaCodecInfo);
        }
        return !F(mediaCodecInfo);
    }

    @RequiresApi(29)
    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo) {
        if (z0.f27743a >= 29) {
            return G(mediaCodecInfo);
        }
        String g4 = com.google.common.base.c.g(mediaCodecInfo.getName());
        if (g4.startsWith("arc.")) {
            return false;
        }
        return g4.startsWith("omx.google.") || g4.startsWith("omx.ffmpeg.") || (g4.startsWith("omx.sec.") && g4.contains(".sw.")) || g4.equals("omx.qcom.video.decoder.hevcswvdec") || g4.startsWith("c2.android.") || g4.startsWith("c2.google.") || !(g4.startsWith("omx.") || g4.startsWith("c2."));
    }

    @RequiresApi(29)
    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (z0.f27743a >= 29) {
            return I(mediaCodecInfo);
        }
        String g4 = com.google.common.base.c.g(mediaCodecInfo.getName());
        return (g4.startsWith("omx.google.") || g4.startsWith("c2.android.") || g4.startsWith("c2.google.")) ? false : true;
    }

    @RequiresApi(29)
    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int J(l lVar) {
        String str = lVar.f24078a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (z0.f27743a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int K(l lVar) {
        return lVar.f24078a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(Format format, l lVar) {
        try {
            return lVar.o(format) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    public static int N() throws DecoderQueryException {
        if (f24000k == -1) {
            int i4 = 0;
            l r9 = r("video/avc", false, false);
            if (r9 != null) {
                MediaCodecInfo.CodecProfileLevel[] i10 = r9.i();
                int length = i10.length;
                int i11 = 0;
                while (i4 < length) {
                    i11 = Math.max(h(i10[i4].level), i11);
                    i4++;
                }
                i4 = Math.max(i11, z0.f27743a >= 21 ? 345600 : 172800);
            }
            f24000k = i4;
        }
        return f24000k;
    }

    private static int O(int i4) {
        int i10 = 17;
        if (i4 != 17) {
            i10 = 20;
            if (i4 != 20) {
                i10 = 23;
                if (i4 != 23) {
                    i10 = 29;
                    if (i4 != 29) {
                        i10 = 39;
                        if (i4 != 39) {
                            i10 = 42;
                            if (i4 != 42) {
                                switch (i4) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i10;
    }

    private static <T> void P(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec.r
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int M;
                M = MediaCodecUtil.M(MediaCodecUtil.f.this, obj, obj2);
                return M;
            }
        });
    }

    private static int Q(int i4) {
        if (i4 != 10) {
            if (i4 != 11) {
                if (i4 != 20) {
                    if (i4 != 21) {
                        if (i4 != 30) {
                            if (i4 != 31) {
                                if (i4 != 40) {
                                    if (i4 != 41) {
                                        if (i4 != 50) {
                                            if (i4 != 51) {
                                                switch (i4) {
                                                    case 60:
                                                        return 2048;
                                                    case 61:
                                                        return 4096;
                                                    case 62:
                                                        return 8192;
                                                    default:
                                                        return -1;
                                                }
                                            }
                                            return 512;
                                        }
                                        return 256;
                                    }
                                    return 128;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int R(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return i4 != 3 ? -1 : 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    public static void S(String str, boolean z9, boolean z10) {
        try {
            s(str, z9, z10);
        } catch (DecoderQueryException e4) {
            w.e(f23990a, "Codec warming failed", e4);
        }
    }

    private static void e(String str, List<l> list) {
        if (a0.I.equals(str)) {
            if (z0.f27743a < 26 && z0.f27744b.equals("R9") && list.size() == 1 && list.get(0).f24078a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(l.D("OMX.google.raw.decoder", a0.I, a0.I, null, false, true, false, false, false));
            }
            P(list, p.f24092a);
        }
        int i4 = z0.f27743a;
        if (i4 < 21 && list.size() > 1) {
            String str2 = list.get(0).f24078a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, q.f24093a);
            }
        }
        if (i4 >= 30 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).f24078a)) {
            return;
        }
        list.add(list.remove(0));
    }

    private static int f(int i4) {
        switch (i4) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i4) {
        switch (i4) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i4) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i4) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i4) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i4) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i4) {
        if (i4 == 1 || i4 == 2) {
            return 25344;
        }
        switch (i4) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int i(int i4) {
        if (i4 != 66) {
            if (i4 != 77) {
                if (i4 != 88) {
                    if (i4 != 100) {
                        if (i4 != 110) {
                            if (i4 != 122) {
                                return i4 != 244 ? -1 : 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    public static synchronized void j() {
        synchronized (MediaCodecUtil.class) {
            f23992c.clear();
        }
    }

    @Nullable
    private static Integer k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            case 11:
                return 2048;
            case '\f':
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    private static Integer l(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals("01")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            default:
                return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> m(String str, String[] strArr) {
        int O;
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            w.n(f23990a, valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(a0.h(Integer.parseInt(strArr[1], 16))) && (O = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(O), 0);
            }
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            w.n(f23990a, valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> n(String str, String[] strArr, @Nullable ColorInfo colorInfo) {
        int i4;
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            w.n(f23990a, valueOf.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
        int i10 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AV1 profile: ");
                sb.append(parseInt);
                w.n(f23990a, sb.toString());
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                StringBuilder sb2 = new StringBuilder(34);
                sb2.append("Unknown AV1 bit depth: ");
                sb2.append(parseInt3);
                w.n(f23990a, sb2.toString());
                return null;
            } else {
                if (parseInt3 != 8) {
                    i10 = (colorInfo == null || !(colorInfo.hdrStaticInfo != null || (i4 = colorInfo.colorTransfer) == 7 || i4 == 6)) ? 2 : 4096;
                }
                int f10 = f(parseInt2);
                if (f10 == -1) {
                    StringBuilder sb3 = new StringBuilder(30);
                    sb3.append("Unknown AV1 level: ");
                    sb3.append(parseInt2);
                    w.n(f23990a, sb3.toString());
                    return null;
                }
                return new Pair<>(Integer.valueOf(i10), Integer.valueOf(f10));
            }
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            w.n(f23990a, valueOf2.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf2) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> o(String str, String[] strArr) {
        int parseInt;
        int i4;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            w.n(f23990a, valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i4 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i4 = parseInt2;
            } else {
                String valueOf2 = String.valueOf(str);
                w.n(f23990a, valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            int i10 = i(i4);
            if (i10 == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AVC profile: ");
                sb.append(i4);
                w.n(f23990a, sb.toString());
                return null;
            }
            int g4 = g(parseInt);
            if (g4 == -1) {
                StringBuilder sb2 = new StringBuilder(30);
                sb2.append("Unknown AVC level: ");
                sb2.append(parseInt);
                w.n(f23990a, sb2.toString());
                return null;
            }
            return new Pair<>(Integer.valueOf(i10), Integer.valueOf(g4));
        } catch (NumberFormatException unused) {
            String valueOf3 = String.valueOf(str);
            w.n(f23990a, valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    @Nullable
    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(a0.f27475w)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals(a0.Z) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals(a0.Y) && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0075, code lost:
        if (r3.equals(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f23998i) == false) goto L11;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> q(com.google.android.exoplayer2.Format r6) {
        /*
            java.lang.String r0 = r6.codecs
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "\\."
            java.lang.String[] r0 = r0.split(r2)
            java.lang.String r2 = r6.sampleMimeType
            java.lang.String r3 = "video/dolby-vision"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L1d
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = w(r6, r0)
            return r6
        L1d:
            r2 = 0
            r3 = r0[r2]
            r3.hashCode()
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3004662: goto L6f;
                case 3006243: goto L64;
                case 3006244: goto L59;
                case 3199032: goto L4e;
                case 3214780: goto L43;
                case 3356560: goto L38;
                case 3624515: goto L2d;
                default: goto L2b;
            }
        L2b:
            r2 = -1
            goto L78
        L2d:
            java.lang.String r2 = "vp09"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L36
            goto L2b
        L36:
            r2 = 6
            goto L78
        L38:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L41
            goto L2b
        L41:
            r2 = 5
            goto L78
        L43:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L4c
            goto L2b
        L4c:
            r2 = 4
            goto L78
        L4e:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L57
            goto L2b
        L57:
            r2 = 3
            goto L78
        L59:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L62
            goto L2b
        L62:
            r2 = 2
            goto L78
        L64:
            java.lang.String r2 = "avc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L6d
            goto L2b
        L6d:
            r2 = 1
            goto L78
        L6f:
            java.lang.String r5 = "av01"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L78
            goto L2b
        L78:
            switch(r2) {
                case 0: goto L98;
                case 1: goto L91;
                case 2: goto L91;
                case 3: goto L8a;
                case 4: goto L8a;
                case 5: goto L83;
                case 6: goto L7c;
                default: goto L7b;
            }
        L7b:
            return r1
        L7c:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = y(r6, r0)
            return r6
        L83:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = m(r6, r0)
            return r6
        L8a:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = x(r6, r0)
            return r6
        L91:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = o(r6, r0)
            return r6
        L98:
            java.lang.String r1 = r6.codecs
            com.google.android.exoplayer2.video.ColorInfo r6 = r6.colorInfo
            android.util.Pair r6 = n(r1, r0, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.q(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    @Nullable
    public static l r(String str, boolean z9, boolean z10) throws DecoderQueryException {
        List<l> s9 = s(str, z9, z10);
        if (s9.isEmpty()) {
            return null;
        }
        return s9.get(0);
    }

    public static synchronized List<l> s(String str, boolean z9, boolean z10) throws DecoderQueryException {
        c dVar;
        synchronized (MediaCodecUtil.class) {
            b bVar = new b(str, z9, z10);
            HashMap<b, List<l>> hashMap = f23992c;
            List<l> list = hashMap.get(bVar);
            if (list != null) {
                return list;
            }
            int i4 = z0.f27743a;
            if (i4 >= 21) {
                dVar = new e(z9, z10);
            } else {
                dVar = new d();
            }
            ArrayList<l> t9 = t(bVar, dVar);
            if (z9 && t9.isEmpty() && 21 <= i4 && i4 <= 23) {
                t9 = t(bVar, new d());
                if (!t9.isEmpty()) {
                    String str2 = t9.get(0).f24078a;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(str2);
                    w.n(f23990a, sb.toString());
                }
            }
            e(str, t9);
            List<l> unmodifiableList = Collections.unmodifiableList(t9);
            hashMap.put(bVar, unmodifiableList);
            return unmodifiableList;
        }
    }

    private static ArrayList<l> t(b bVar, c cVar) throws DecoderQueryException {
        String p9;
        String str;
        String str2;
        int i4;
        boolean z9;
        int i10;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        boolean b10;
        boolean c10;
        boolean z10;
        try {
            ArrayList<l> arrayList = new ArrayList<>();
            String str3 = bVar.f24001a;
            int d4 = cVar.d();
            boolean e4 = cVar.e();
            int i11 = 0;
            while (i11 < d4) {
                MediaCodecInfo a10 = cVar.a(i11);
                if (!A(a10)) {
                    String name = a10.getName();
                    if (C(a10, name, e4, str3) && (p9 = p(a10, name, str3)) != null) {
                        try {
                            capabilitiesForType = a10.getCapabilitiesForType(p9);
                            b10 = cVar.b("tunneled-playback", p9, capabilitiesForType);
                            c10 = cVar.c("tunneled-playback", p9, capabilitiesForType);
                            z10 = bVar.f24003c;
                        } catch (Exception e10) {
                            e = e10;
                            str = p9;
                            str2 = name;
                            i4 = i11;
                            z9 = e4;
                            i10 = d4;
                        }
                        if ((z10 || !c10) && (!z10 || b10)) {
                            boolean b11 = cVar.b("secure-playback", p9, capabilitiesForType);
                            boolean c11 = cVar.c("secure-playback", p9, capabilitiesForType);
                            boolean z11 = bVar.f24002b;
                            if ((z11 || !c11) && (!z11 || b11)) {
                                boolean D = D(a10);
                                boolean F = F(a10);
                                boolean H = H(a10);
                                if (!(e4 && bVar.f24002b == b11) && (e4 || bVar.f24002b)) {
                                    str = p9;
                                    str2 = name;
                                    i4 = i11;
                                    z9 = e4;
                                    i10 = d4;
                                    if (!z9 && b11) {
                                        arrayList.add(l.D(String.valueOf(str2).concat(".secure"), str3, str, capabilitiesForType, D, F, H, false, true));
                                        return arrayList;
                                    }
                                    i11 = i4 + 1;
                                    d4 = i10;
                                    e4 = z9;
                                } else {
                                    str = p9;
                                    str2 = name;
                                    i4 = i11;
                                    z9 = e4;
                                    i10 = d4;
                                    try {
                                        arrayList.add(l.D(name, str3, p9, capabilitiesForType, D, F, H, false, false));
                                    } catch (Exception e11) {
                                        e = e11;
                                        if (z0.f27743a <= 23 && !arrayList.isEmpty()) {
                                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 46);
                                            sb.append("Skipping codec ");
                                            sb.append(str2);
                                            sb.append(" (failed to query capabilities)");
                                            w.d(f23990a, sb.toString());
                                            i11 = i4 + 1;
                                            d4 = i10;
                                            e4 = z9;
                                        } else {
                                            String str4 = str2;
                                            StringBuilder sb2 = new StringBuilder(String.valueOf(str4).length() + 25 + str.length());
                                            sb2.append("Failed to query codec ");
                                            sb2.append(str4);
                                            sb2.append(" (");
                                            sb2.append(str);
                                            sb2.append(")");
                                            w.d(f23990a, sb2.toString());
                                            throw e;
                                        }
                                    }
                                    i11 = i4 + 1;
                                    d4 = i10;
                                    e4 = z9;
                                }
                            }
                        }
                    }
                }
                i4 = i11;
                z9 = e4;
                i10 = d4;
                i11 = i4 + 1;
                d4 = i10;
                e4 = z9;
            }
            return arrayList;
        } catch (Exception e12) {
            throw new DecoderQueryException(e12);
        }
    }

    @CheckResult
    public static List<l> u(List<l> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new f() { // from class: com.google.android.exoplayer2.mediacodec.o
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                int L;
                L = MediaCodecUtil.L(Format.this, (l) obj);
                return L;
            }
        });
        return arrayList;
    }

    @Nullable
    public static l v() throws DecoderQueryException {
        return r(a0.I, false, false);
    }

    @Nullable
    private static Pair<Integer, Integer> w(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            w.n(f23990a, valueOf.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        Matcher matcher = f23991b.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            w.n(f23990a, valueOf2.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf2) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        String group = matcher.group(1);
        Integer l10 = l(group);
        if (l10 == null) {
            String valueOf3 = String.valueOf(group);
            w.n(f23990a, valueOf3.length() != 0 ? "Unknown Dolby Vision profile string: ".concat(valueOf3) : new String("Unknown Dolby Vision profile string: "));
            return null;
        }
        String str2 = strArr[2];
        Integer k10 = k(str2);
        if (k10 == null) {
            String valueOf4 = String.valueOf(str2);
            w.n(f23990a, valueOf4.length() != 0 ? "Unknown Dolby Vision level string: ".concat(valueOf4) : new String("Unknown Dolby Vision level string: "));
            return null;
        }
        return new Pair<>(l10, k10);
    }

    @Nullable
    private static Pair<Integer, Integer> x(String str, String[] strArr) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            w.n(f23990a, valueOf.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        int i4 = 1;
        Matcher matcher = f23991b.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            w.n(f23990a, valueOf2.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf2) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (!"2".equals(group)) {
                String valueOf3 = String.valueOf(group);
                w.n(f23990a, valueOf3.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf3) : new String("Unknown HEVC profile string: "));
                return null;
            }
            i4 = 2;
        }
        String str2 = strArr[3];
        Integer z9 = z(str2);
        if (z9 == null) {
            String valueOf4 = String.valueOf(str2);
            w.n(f23990a, valueOf4.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf4) : new String("Unknown HEVC level string: "));
            return null;
        }
        return new Pair<>(Integer.valueOf(i4), z9);
    }

    @Nullable
    private static Pair<Integer, Integer> y(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            w.n(f23990a, valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int R = R(parseInt);
            if (R == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown VP9 profile: ");
                sb.append(parseInt);
                w.n(f23990a, sb.toString());
                return null;
            }
            int Q = Q(parseInt2);
            if (Q == -1) {
                StringBuilder sb2 = new StringBuilder(30);
                sb2.append("Unknown VP9 level: ");
                sb2.append(parseInt2);
                w.n(f23990a, sb2.toString());
                return null;
            }
            return new Pair<>(Integer.valueOf(R), Integer.valueOf(Q));
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            w.n(f23990a, valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    @Nullable
    private static Integer z(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c10 = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c10 = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c10 = 2;
                    break;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    c10 = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c10 = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c10 = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c10 = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c10 = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c10 = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c10 = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c10 = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c10 = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c10 = 25;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                return 64;
            case '\t':
                return 256;
            case '\n':
                return 2048;
            case 11:
                return 8192;
            case '\f':
                return 32768;
            case '\r':
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }
}
