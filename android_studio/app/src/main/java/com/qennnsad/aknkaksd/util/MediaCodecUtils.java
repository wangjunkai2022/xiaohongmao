package com.qennnsad.aknkaksd.util;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: MediaCodecUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0014\u0010\u000b\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0007J\f\u0010\f\u001a\u00020\u0007*\u00020\u0004H\u0007J\f\u0010\r\u001a\u00020\u0007*\u00020\u0004H\u0007J\b\u0010\u000e\u001a\u00020\u0007H\u0007J\b\u0010\u000f\u001a\u00020\u0007H\u0007R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0011R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00100\u00188\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u0015\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;", "", "Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;", "mimeType", "Landroid/media/MediaCodecInfo;", "d", "c", "", "encoder", "b", "type", "a", "h", ContextChain.TAG_INFRA, "f", "g", "", "Ljava/lang/String;", "TAG", "EXYNOS_PREFIX", "INTEL_PREFIX", "e", "NVIDIA_PREFIX", "QCOM_PREFIX", "", "[Ljava/lang/String;", "()[Ljava/lang/String;", "SOFTWARE_IMPLEMENTATION_PREFIXES", "<init>", "()V", "VideoCodecMimeType", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MediaCodecUtils {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f54499b = "MediaCodecUtils";
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final String f54500c = "OMX.Exynos.";
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public static final String f54501d = "OMX.Intel.";
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public static final String f54502e = "OMX.Nvidia.";
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final String f54503f = "OMX.qcom.";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final MediaCodecUtils f54498a = new MediaCodecUtils();
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f54504g = {"OMX.google.", "OMX.SEC.", "c2.android"};

    /* compiled from: MediaCodecUtils.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;", "", "", "mimeType", "a", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "VP8", "VP9", "H264", "H265", "AV1", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public enum VideoCodecMimeType {
        VP8(com.google.android.exoplayer2.util.a0.f27453l),
        VP9(com.google.android.exoplayer2.util.a0.f27455m),
        H264("video/avc"),
        H265(com.google.android.exoplayer2.util.a0.f27451k),
        AV1(com.google.android.exoplayer2.util.a0.f27457n);
        
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f54506a;

        VideoCodecMimeType(String str) {
            this.f54506a = str;
        }

        @m8.g
        public final String mimeType() {
            return this.f54506a;
        }
    }

    private MediaCodecUtils() {
    }

    @JvmStatic
    public static final boolean a(@m8.g MediaCodecInfo mediaCodecInfo, @m8.g VideoCodecMimeType type) {
        Intrinsics.checkNotNullParameter(mediaCodecInfo, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
        Intrinsics.checkNotNullExpressionValue(supportedTypes, "supportedTypes");
        for (String str : supportedTypes) {
            if (Intrinsics.areEqual(str, type.mimeType())) {
                return true;
            }
        }
        return false;
    }

    private final MediaCodecInfo b(VideoCodecMimeType videoCodecMimeType, boolean z9) {
        boolean z10;
        boolean equals;
        int codecCount = MediaCodecList.getCodecCount();
        for (int i4 = 0; i4 < codecCount; i4++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i4);
            if (codecInfoAt.isEncoder() == z9) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                Intrinsics.checkNotNullExpressionValue(supportedTypes, "codecInfo.supportedTypes");
                int length = supportedTypes.length;
                int i10 = 0;
                while (true) {
                    z10 = true;
                    if (i10 >= length) {
                        z10 = false;
                        break;
                    }
                    equals = StringsKt__StringsJVMKt.equals(supportedTypes[i10], videoCodecMimeType.mimeType(), true);
                    if (equals) {
                        break;
                    }
                    i10++;
                }
                if (z10) {
                    return codecInfoAt;
                }
            }
        }
        return null;
    }

    @JvmStatic
    @m8.h
    public static final MediaCodecInfo c(@m8.g VideoCodecMimeType mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        return f54498a.b(mimeType, false);
    }

    @JvmStatic
    @m8.h
    public static final MediaCodecInfo d(@m8.g VideoCodecMimeType mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        return f54498a.b(mimeType, true);
    }

    @JvmStatic
    public static final boolean f() {
        MediaCodecInfo c10 = c(VideoCodecMimeType.H265);
        return c10 != null && h(c10);
    }

    @JvmStatic
    public static final boolean g() {
        MediaCodecInfo d4 = d(VideoCodecMimeType.H265);
        return d4 != null && h(d4);
    }

    @JvmStatic
    public static final boolean h(@m8.g MediaCodecInfo mediaCodecInfo) {
        Intrinsics.checkNotNullParameter(mediaCodecInfo, "<this>");
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isHardwareAccelerated();
        }
        return !i(mediaCodecInfo);
    }

    @JvmStatic
    public static final boolean i(@m8.g MediaCodecInfo mediaCodecInfo) {
        String[] strArr;
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(mediaCodecInfo, "<this>");
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        for (String str : f54504g) {
            String name = mediaCodecInfo.getName();
            Intrinsics.checkNotNullExpressionValue(name, "name");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null);
            if (startsWith$default) {
                return true;
            }
        }
        return false;
    }

    @m8.g
    public final String[] e() {
        return f54504g;
    }
}
