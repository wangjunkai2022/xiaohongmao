package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.video.ColorInfo;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new a();
    public static final int NO_VALUE = -1;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;
    public final int accessibilityChannel;
    public final int averageBitrate;
    public final int bitrate;
    public final int channelCount;
    @Nullable
    public final String codecs;
    @Nullable
    public final ColorInfo colorInfo;
    @Nullable
    public final String containerMimeType;
    @Nullable
    public final DrmInitData drmInitData;
    public final int encoderDelay;
    public final int encoderPadding;
    @Nullable
    public final Class<? extends com.google.android.exoplayer2.drm.a0> exoMediaCryptoType;
    public final float frameRate;
    private int hashCode;
    public final int height;
    @Nullable
    public final String id;
    public final List<byte[]> initializationData;
    @Nullable
    public final String label;
    @Nullable
    public final String language;
    public final int maxInputSize;
    @Nullable
    public final Metadata metadata;
    public final int pcmEncoding;
    public final int peakBitrate;
    public final float pixelWidthHeightRatio;
    @Nullable
    public final byte[] projectionData;
    public final int roleFlags;
    public final int rotationDegrees;
    @Nullable
    public final String sampleMimeType;
    public final int sampleRate;
    public final int selectionFlags;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Parcelable.Creator<Format> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Format[] newArray(int i4) {
            return new Format[i4];
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private int A;
        private int B;
        private int C;
        @Nullable
        private Class<? extends com.google.android.exoplayer2.drm.a0> D;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f20679a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f20680b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f20681c;

        /* renamed from: d  reason: collision with root package name */
        private int f20682d;

        /* renamed from: e  reason: collision with root package name */
        private int f20683e;

        /* renamed from: f  reason: collision with root package name */
        private int f20684f;

        /* renamed from: g  reason: collision with root package name */
        private int f20685g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f20686h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Metadata f20687i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f20688j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private String f20689k;

        /* renamed from: l  reason: collision with root package name */
        private int f20690l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private List<byte[]> f20691m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private DrmInitData f20692n;

        /* renamed from: o  reason: collision with root package name */
        private long f20693o;

        /* renamed from: p  reason: collision with root package name */
        private int f20694p;

        /* renamed from: q  reason: collision with root package name */
        private int f20695q;

        /* renamed from: r  reason: collision with root package name */
        private float f20696r;

        /* renamed from: s  reason: collision with root package name */
        private int f20697s;

        /* renamed from: t  reason: collision with root package name */
        private float f20698t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private byte[] f20699u;

        /* renamed from: v  reason: collision with root package name */
        private int f20700v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private ColorInfo f20701w;

        /* renamed from: x  reason: collision with root package name */
        private int f20702x;

        /* renamed from: y  reason: collision with root package name */
        private int f20703y;

        /* renamed from: z  reason: collision with root package name */
        private int f20704z;

        /* synthetic */ b(Format format, a aVar) {
            this(format);
        }

        public Format E() {
            return new Format(this, null);
        }

        public b F(int i4) {
            this.C = i4;
            return this;
        }

        public b G(int i4) {
            this.f20684f = i4;
            return this;
        }

        public b H(int i4) {
            this.f20702x = i4;
            return this;
        }

        public b I(@Nullable String str) {
            this.f20686h = str;
            return this;
        }

        public b J(@Nullable ColorInfo colorInfo) {
            this.f20701w = colorInfo;
            return this;
        }

        public b K(@Nullable String str) {
            this.f20688j = str;
            return this;
        }

        public b L(@Nullable DrmInitData drmInitData) {
            this.f20692n = drmInitData;
            return this;
        }

        public b M(int i4) {
            this.A = i4;
            return this;
        }

        public b N(int i4) {
            this.B = i4;
            return this;
        }

        public b O(@Nullable Class<? extends com.google.android.exoplayer2.drm.a0> cls) {
            this.D = cls;
            return this;
        }

        public b P(float f10) {
            this.f20696r = f10;
            return this;
        }

        public b Q(int i4) {
            this.f20695q = i4;
            return this;
        }

        public b R(int i4) {
            this.f20679a = Integer.toString(i4);
            return this;
        }

        public b S(@Nullable String str) {
            this.f20679a = str;
            return this;
        }

        public b T(@Nullable List<byte[]> list) {
            this.f20691m = list;
            return this;
        }

        public b U(@Nullable String str) {
            this.f20680b = str;
            return this;
        }

        public b V(@Nullable String str) {
            this.f20681c = str;
            return this;
        }

        public b W(int i4) {
            this.f20690l = i4;
            return this;
        }

        public b X(@Nullable Metadata metadata) {
            this.f20687i = metadata;
            return this;
        }

        public b Y(int i4) {
            this.f20704z = i4;
            return this;
        }

        public b Z(int i4) {
            this.f20685g = i4;
            return this;
        }

        public b a0(float f10) {
            this.f20698t = f10;
            return this;
        }

        public b b0(@Nullable byte[] bArr) {
            this.f20699u = bArr;
            return this;
        }

        public b c0(int i4) {
            this.f20683e = i4;
            return this;
        }

        public b d0(int i4) {
            this.f20697s = i4;
            return this;
        }

        public b e0(@Nullable String str) {
            this.f20689k = str;
            return this;
        }

        public b f0(int i4) {
            this.f20703y = i4;
            return this;
        }

        public b g0(int i4) {
            this.f20682d = i4;
            return this;
        }

        public b h0(int i4) {
            this.f20700v = i4;
            return this;
        }

        public b i0(long j4) {
            this.f20693o = j4;
            return this;
        }

        public b j0(int i4) {
            this.f20694p = i4;
            return this;
        }

        public b() {
            this.f20684f = -1;
            this.f20685g = -1;
            this.f20690l = -1;
            this.f20693o = Long.MAX_VALUE;
            this.f20694p = -1;
            this.f20695q = -1;
            this.f20696r = -1.0f;
            this.f20698t = 1.0f;
            this.f20700v = -1;
            this.f20702x = -1;
            this.f20703y = -1;
            this.f20704z = -1;
            this.C = -1;
        }

        private b(Format format) {
            this.f20679a = format.id;
            this.f20680b = format.label;
            this.f20681c = format.language;
            this.f20682d = format.selectionFlags;
            this.f20683e = format.roleFlags;
            this.f20684f = format.averageBitrate;
            this.f20685g = format.peakBitrate;
            this.f20686h = format.codecs;
            this.f20687i = format.metadata;
            this.f20688j = format.containerMimeType;
            this.f20689k = format.sampleMimeType;
            this.f20690l = format.maxInputSize;
            this.f20691m = format.initializationData;
            this.f20692n = format.drmInitData;
            this.f20693o = format.subsampleOffsetUs;
            this.f20694p = format.width;
            this.f20695q = format.height;
            this.f20696r = format.frameRate;
            this.f20697s = format.rotationDegrees;
            this.f20698t = format.pixelWidthHeightRatio;
            this.f20699u = format.projectionData;
            this.f20700v = format.stereoMode;
            this.f20701w = format.colorInfo;
            this.f20702x = format.channelCount;
            this.f20703y = format.sampleRate;
            this.f20704z = format.pcmEncoding;
            this.A = format.encoderDelay;
            this.B = format.encoderPadding;
            this.C = format.accessibilityChannel;
            this.D = format.exoMediaCryptoType;
        }
    }

    /* synthetic */ Format(b bVar, a aVar) {
        this(bVar);
    }

    @Deprecated
    public static Format createAudioContainerFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Metadata metadata, int i4, int i10, int i11, @Nullable List<byte[]> list, int i12, int i13, @Nullable String str6) {
        return new b().S(str).U(str2).V(str6).g0(i12).c0(i13).G(i4).Z(i4).I(str5).X(metadata).K(str3).e0(str4).T(list).H(i10).f0(i11).E();
    }

    @Deprecated
    public static Format createAudioSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i4, int i10, int i11, int i12, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData, int i13, @Nullable String str4) {
        return new b().S(str).V(str4).g0(i13).G(i4).Z(i4).I(str3).e0(str2).W(i10).T(list).L(drmInitData).H(i11).f0(i12).E();
    }

    @Deprecated
    public static Format createContainerFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i4, int i10, int i11, @Nullable String str6) {
        return new b().S(str).U(str2).V(str6).g0(i10).c0(i11).G(i4).Z(i4).I(str5).K(str3).e0(str4).E();
    }

    @Deprecated
    public static Format createImageSampleFormat(@Nullable String str, @Nullable String str2, int i4, @Nullable List<byte[]> list, @Nullable String str3) {
        return new b().S(str).V(str3).g0(i4).e0(str2).T(list).E();
    }

    @Deprecated
    public static Format createSampleFormat(@Nullable String str, @Nullable String str2) {
        return new b().S(str).e0(str2).E();
    }

    @Deprecated
    public static Format createTextContainerFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i4, int i10, int i11, @Nullable String str6) {
        return new b().S(str).U(str2).V(str6).g0(i10).c0(i11).G(i4).Z(i4).I(str5).K(str3).e0(str4).E();
    }

    @Deprecated
    public static Format createTextSampleFormat(@Nullable String str, @Nullable String str2, int i4, @Nullable String str3) {
        return new b().S(str).V(str3).g0(i4).e0(str2).E();
    }

    @Deprecated
    public static Format createVideoContainerFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Metadata metadata, int i4, int i10, int i11, float f10, @Nullable List<byte[]> list, int i12, int i13) {
        return new b().S(str).U(str2).g0(i12).c0(i13).G(i4).Z(i4).I(str5).X(metadata).K(str3).e0(str4).T(list).j0(i10).Q(i11).P(f10).E();
    }

    @Deprecated
    public static Format createVideoSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i4, int i10, int i11, int i12, float f10, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData) {
        return new b().S(str).G(i4).Z(i4).I(str3).e0(str2).W(i10).T(list).L(drmInitData).j0(i11).Q(i12).P(f10).E();
    }

    public static String toLogString(@Nullable Format format) {
        if (format == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.id);
        sb.append(", mimeType=");
        sb.append(format.sampleMimeType);
        if (format.bitrate != -1) {
            sb.append(", bitrate=");
            sb.append(format.bitrate);
        }
        if (format.codecs != null) {
            sb.append(", codecs=");
            sb.append(format.codecs);
        }
        if (format.drmInitData != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i4 = 0;
            while (true) {
                DrmInitData drmInitData = format.drmInitData;
                if (i4 >= drmInitData.schemeDataCount) {
                    break;
                }
                UUID uuid = drmInitData.get(i4).uuid;
                if (uuid.equals(i.J1)) {
                    linkedHashSet.add(i.E1);
                } else if (uuid.equals(i.K1)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(i.M1)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(i.L1)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(i.I1)) {
                    linkedHashSet.add("universal");
                } else {
                    String valueOf = String.valueOf(uuid);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
                    sb2.append("unknown (");
                    sb2.append(valueOf);
                    sb2.append(")");
                    linkedHashSet.add(sb2.toString());
                }
                i4++;
            }
            sb.append(", drm=[");
            sb.append(com.google.common.base.u.o(',').k(linkedHashSet));
            sb.append(']');
        }
        if (format.width != -1 && format.height != -1) {
            sb.append(", res=");
            sb.append(format.width);
            sb.append(y.b.f83919g);
            sb.append(format.height);
        }
        if (format.frameRate != -1.0f) {
            sb.append(", fps=");
            sb.append(format.frameRate);
        }
        if (format.channelCount != -1) {
            sb.append(", channels=");
            sb.append(format.channelCount);
        }
        if (format.sampleRate != -1) {
            sb.append(", sample_rate=");
            sb.append(format.sampleRate);
        }
        if (format.language != null) {
            sb.append(", language=");
            sb.append(format.language);
        }
        if (format.label != null) {
            sb.append(", label=");
            sb.append(format.label);
        }
        if ((format.roleFlags & 16384) != 0) {
            sb.append(", trick-play-track");
        }
        return sb.toString();
    }

    public b buildUpon() {
        return new b(this, null);
    }

    @Deprecated
    public Format copyWithBitrate(int i4) {
        return buildUpon().G(i4).Z(i4).E();
    }

    @Deprecated
    public Format copyWithDrmInitData(@Nullable DrmInitData drmInitData) {
        return buildUpon().L(drmInitData).E();
    }

    public Format copyWithExoMediaCryptoType(@Nullable Class<? extends com.google.android.exoplayer2.drm.a0> cls) {
        return buildUpon().O(cls).E();
    }

    @Deprecated
    public Format copyWithFrameRate(float f10) {
        return buildUpon().P(f10).E();
    }

    @Deprecated
    public Format copyWithGaplessInfo(int i4, int i10) {
        return buildUpon().M(i4).N(i10).E();
    }

    @Deprecated
    public Format copyWithLabel(@Nullable String str) {
        return buildUpon().U(str).E();
    }

    @Deprecated
    public Format copyWithManifestFormatInfo(Format format) {
        return withManifestFormatInfo(format);
    }

    @Deprecated
    public Format copyWithMaxInputSize(int i4) {
        return buildUpon().W(i4).E();
    }

    @Deprecated
    public Format copyWithMetadata(@Nullable Metadata metadata) {
        return buildUpon().X(metadata).E();
    }

    @Deprecated
    public Format copyWithSubsampleOffsetUs(long j4) {
        return buildUpon().i0(j4).E();
    }

    @Deprecated
    public Format copyWithVideoSize(int i4, int i10) {
        return buildUpon().j0(i4).Q(i10).E();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        int i4;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i10 = this.hashCode;
        return (i10 == 0 || (i4 = format.hashCode) == 0 || i10 == i4) && this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.averageBitrate == format.averageBitrate && this.peakBitrate == format.peakBitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && Float.compare(this.frameRate, format.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && com.google.android.exoplayer2.util.z0.c(this.exoMediaCryptoType, format.exoMediaCryptoType) && com.google.android.exoplayer2.util.z0.c(this.id, format.id) && com.google.android.exoplayer2.util.z0.c(this.label, format.label) && com.google.android.exoplayer2.util.z0.c(this.codecs, format.codecs) && com.google.android.exoplayer2.util.z0.c(this.containerMimeType, format.containerMimeType) && com.google.android.exoplayer2.util.z0.c(this.sampleMimeType, format.sampleMimeType) && com.google.android.exoplayer2.util.z0.c(this.language, format.language) && Arrays.equals(this.projectionData, format.projectionData) && com.google.android.exoplayer2.util.z0.c(this.metadata, format.metadata) && com.google.android.exoplayer2.util.z0.c(this.colorInfo, format.colorInfo) && com.google.android.exoplayer2.util.z0.c(this.drmInitData, format.drmInitData) && initializationDataEquals(format);
    }

    public int getPixelCount() {
        int i4;
        int i10 = this.width;
        if (i10 == -1 || (i4 = this.height) == -1) {
            return -1;
        }
        return i10 * i4;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.id;
            int hashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.label;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.language;
            int hashCode3 = (((((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31) + this.averageBitrate) * 31) + this.peakBitrate) * 31;
            String str4 = this.codecs;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.metadata;
            int hashCode5 = (hashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.containerMimeType;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.sampleMimeType;
            int hashCode7 = (((((((((((((((((((((((((((((hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.maxInputSize) * 31) + ((int) this.subsampleOffsetUs)) * 31) + this.width) * 31) + this.height) * 31) + Float.floatToIntBits(this.frameRate)) * 31) + this.rotationDegrees) * 31) + Float.floatToIntBits(this.pixelWidthHeightRatio)) * 31) + this.stereoMode) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.pcmEncoding) * 31) + this.encoderDelay) * 31) + this.encoderPadding) * 31) + this.accessibilityChannel) * 31;
            Class<? extends com.google.android.exoplayer2.drm.a0> cls = this.exoMediaCryptoType;
            this.hashCode = hashCode7 + (cls != null ? cls.hashCode() : 0);
        }
        return this.hashCode;
    }

    public boolean initializationDataEquals(Format format) {
        if (this.initializationData.size() != format.initializationData.size()) {
            return false;
        }
        for (int i4 = 0; i4 < this.initializationData.size(); i4++) {
            if (!Arrays.equals(this.initializationData.get(i4), format.initializationData.get(i4))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        String str = this.id;
        String str2 = this.label;
        String str3 = this.containerMimeType;
        String str4 = this.sampleMimeType;
        String str5 = this.codecs;
        int i4 = this.bitrate;
        String str6 = this.language;
        int i10 = this.width;
        int i11 = this.height;
        float f10 = this.frameRate;
        int i12 = this.channelCount;
        int i13 = this.sampleRate;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i4);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i10);
        sb.append(", ");
        sb.append(i11);
        sb.append(", ");
        sb.append(f10);
        sb.append("], [");
        sb.append(i12);
        sb.append(", ");
        sb.append(i13);
        sb.append("])");
        return sb.toString();
    }

    public Format withManifestFormatInfo(Format format) {
        String str;
        Metadata copyWithAppendedEntriesFrom;
        if (this == format) {
            return this;
        }
        int l10 = com.google.android.exoplayer2.util.a0.l(this.sampleMimeType);
        String str2 = format.id;
        String str3 = format.label;
        if (str3 == null) {
            str3 = this.label;
        }
        String str4 = this.language;
        if ((l10 == 3 || l10 == 1) && (str = format.language) != null) {
            str4 = str;
        }
        int i4 = this.averageBitrate;
        if (i4 == -1) {
            i4 = format.averageBitrate;
        }
        int i10 = this.peakBitrate;
        if (i10 == -1) {
            i10 = format.peakBitrate;
        }
        String str5 = this.codecs;
        if (str5 == null) {
            String S = com.google.android.exoplayer2.util.z0.S(format.codecs, l10);
            if (com.google.android.exoplayer2.util.z0.n1(S).length == 1) {
                str5 = S;
            }
        }
        Metadata metadata = this.metadata;
        if (metadata == null) {
            copyWithAppendedEntriesFrom = format.metadata;
        } else {
            copyWithAppendedEntriesFrom = metadata.copyWithAppendedEntriesFrom(format.metadata);
        }
        float f10 = this.frameRate;
        if (f10 == -1.0f && l10 == 2) {
            f10 = format.frameRate;
        }
        int i11 = this.selectionFlags | format.selectionFlags;
        return buildUpon().S(str2).U(str3).V(str4).g0(i11).c0(this.roleFlags | format.roleFlags).G(i4).Z(i10).I(str5).X(copyWithAppendedEntriesFrom).L(DrmInitData.createSessionCreationData(format.drmInitData, this.drmInitData)).P(f10).E();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.label);
        parcel.writeString(this.language);
        parcel.writeInt(this.selectionFlags);
        parcel.writeInt(this.roleFlags);
        parcel.writeInt(this.averageBitrate);
        parcel.writeInt(this.peakBitrate);
        parcel.writeString(this.codecs);
        parcel.writeParcelable(this.metadata, 0);
        parcel.writeString(this.containerMimeType);
        parcel.writeString(this.sampleMimeType);
        parcel.writeInt(this.maxInputSize);
        int size = this.initializationData.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeByteArray(this.initializationData.get(i10));
        }
        parcel.writeParcelable(this.drmInitData, 0);
        parcel.writeLong(this.subsampleOffsetUs);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.frameRate);
        parcel.writeInt(this.rotationDegrees);
        parcel.writeFloat(this.pixelWidthHeightRatio);
        com.google.android.exoplayer2.util.z0.x1(parcel, this.projectionData != null);
        byte[] bArr = this.projectionData;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.stereoMode);
        parcel.writeParcelable(this.colorInfo, i4);
        parcel.writeInt(this.channelCount);
        parcel.writeInt(this.sampleRate);
        parcel.writeInt(this.pcmEncoding);
        parcel.writeInt(this.encoderDelay);
        parcel.writeInt(this.encoderPadding);
        parcel.writeInt(this.accessibilityChannel);
    }

    private Format(b bVar) {
        this.id = bVar.f20679a;
        this.label = bVar.f20680b;
        this.language = com.google.android.exoplayer2.util.z0.Q0(bVar.f20681c);
        this.selectionFlags = bVar.f20682d;
        this.roleFlags = bVar.f20683e;
        int i4 = bVar.f20684f;
        this.averageBitrate = i4;
        int i10 = bVar.f20685g;
        this.peakBitrate = i10;
        this.bitrate = i10 != -1 ? i10 : i4;
        this.codecs = bVar.f20686h;
        this.metadata = bVar.f20687i;
        this.containerMimeType = bVar.f20688j;
        this.sampleMimeType = bVar.f20689k;
        this.maxInputSize = bVar.f20690l;
        this.initializationData = bVar.f20691m == null ? Collections.emptyList() : bVar.f20691m;
        DrmInitData drmInitData = bVar.f20692n;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = bVar.f20693o;
        this.width = bVar.f20694p;
        this.height = bVar.f20695q;
        this.frameRate = bVar.f20696r;
        this.rotationDegrees = bVar.f20697s == -1 ? 0 : bVar.f20697s;
        this.pixelWidthHeightRatio = bVar.f20698t == -1.0f ? 1.0f : bVar.f20698t;
        this.projectionData = bVar.f20699u;
        this.stereoMode = bVar.f20700v;
        this.colorInfo = bVar.f20701w;
        this.channelCount = bVar.f20702x;
        this.sampleRate = bVar.f20703y;
        this.pcmEncoding = bVar.f20704z;
        this.encoderDelay = bVar.A == -1 ? 0 : bVar.A;
        this.encoderPadding = bVar.B != -1 ? bVar.B : 0;
        this.accessibilityChannel = bVar.C;
        if (bVar.D == null && drmInitData != null) {
            this.exoMediaCryptoType = com.google.android.exoplayer2.drm.m0.class;
        } else {
            this.exoMediaCryptoType = bVar.D;
        }
    }

    @Deprecated
    public static Format createTextSampleFormat(@Nullable String str, @Nullable String str2, int i4, @Nullable String str3, int i10, long j4, @Nullable List<byte[]> list) {
        return new b().S(str).V(str3).g0(i4).e0(str2).T(list).i0(j4).F(i10).E();
    }

    @Deprecated
    public static Format createTextContainerFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i4, int i10, int i11, @Nullable String str6, int i12) {
        return new b().S(str).U(str2).V(str6).g0(i10).c0(i11).G(i4).Z(i4).I(str5).K(str3).e0(str4).F(i12).E();
    }

    @Deprecated
    public static Format createVideoSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i4, int i10, int i11, int i12, float f10, @Nullable List<byte[]> list, int i13, float f11, @Nullable DrmInitData drmInitData) {
        return new b().S(str).G(i4).Z(i4).I(str3).e0(str2).W(i10).T(list).L(drmInitData).j0(i11).Q(i12).P(f10).d0(i13).a0(f11).E();
    }

    @Deprecated
    public static Format createAudioSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i4, int i10, int i11, int i12, int i13, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData, int i14, @Nullable String str4) {
        return new b().S(str).V(str4).g0(i14).G(i4).Z(i4).I(str3).e0(str2).W(i10).T(list).L(drmInitData).H(i11).f0(i12).Y(i13).E();
    }

    @Deprecated
    public static Format createVideoSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i4, int i10, int i11, int i12, float f10, @Nullable List<byte[]> list, int i13, float f11, @Nullable byte[] bArr, int i14, @Nullable ColorInfo colorInfo, @Nullable DrmInitData drmInitData) {
        return new b().S(str).G(i4).Z(i4).I(str3).e0(str2).W(i10).T(list).L(drmInitData).j0(i11).Q(i12).P(f10).d0(i13).a0(f11).b0(bArr).h0(i14).J(colorInfo).E();
    }

    @Deprecated
    public static Format createAudioSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i4, int i10, int i11, int i12, int i13, int i14, int i15, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData, int i16, @Nullable String str4, @Nullable Metadata metadata) {
        return new b().S(str).V(str4).g0(i16).G(i4).Z(i4).I(str3).X(metadata).e0(str2).W(i10).T(list).L(drmInitData).H(i11).f0(i12).Y(i13).M(i14).N(i15).E();
    }

    Format(Parcel parcel) {
        this.id = parcel.readString();
        this.label = parcel.readString();
        this.language = parcel.readString();
        this.selectionFlags = parcel.readInt();
        this.roleFlags = parcel.readInt();
        int readInt = parcel.readInt();
        this.averageBitrate = readInt;
        int readInt2 = parcel.readInt();
        this.peakBitrate = readInt2;
        this.bitrate = readInt2 != -1 ? readInt2 : readInt;
        this.codecs = parcel.readString();
        this.metadata = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.containerMimeType = parcel.readString();
        this.sampleMimeType = parcel.readString();
        this.maxInputSize = parcel.readInt();
        int readInt3 = parcel.readInt();
        this.initializationData = new ArrayList(readInt3);
        for (int i4 = 0; i4 < readInt3; i4++) {
            this.initializationData.add((byte[]) com.google.android.exoplayer2.util.a.g(parcel.createByteArray()));
        }
        DrmInitData drmInitData = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = parcel.readLong();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.frameRate = parcel.readFloat();
        this.rotationDegrees = parcel.readInt();
        this.pixelWidthHeightRatio = parcel.readFloat();
        this.projectionData = com.google.android.exoplayer2.util.z0.Z0(parcel) ? parcel.createByteArray() : null;
        this.stereoMode = parcel.readInt();
        this.colorInfo = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.channelCount = parcel.readInt();
        this.sampleRate = parcel.readInt();
        this.pcmEncoding = parcel.readInt();
        this.encoderDelay = parcel.readInt();
        this.encoderPadding = parcel.readInt();
        this.accessibilityChannel = parcel.readInt();
        this.exoMediaCryptoType = drmInitData != null ? com.google.android.exoplayer2.drm.m0.class : null;
    }
}
