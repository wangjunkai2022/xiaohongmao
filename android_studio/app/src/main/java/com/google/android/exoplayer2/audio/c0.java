package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: DtsUtil.java */
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21169a = 192000;

    /* renamed from: b  reason: collision with root package name */
    public static final int f21170b = 2250000;

    /* renamed from: c  reason: collision with root package name */
    private static final int f21171c = 2147385345;

    /* renamed from: d  reason: collision with root package name */
    private static final int f21172d = 536864768;

    /* renamed from: e  reason: collision with root package name */
    private static final int f21173e = -25230976;

    /* renamed from: f  reason: collision with root package name */
    private static final int f21174f = -14745368;

    /* renamed from: g  reason: collision with root package name */
    private static final byte f21175g = Byte.MAX_VALUE;

    /* renamed from: h  reason: collision with root package name */
    private static final byte f21176h = 31;

    /* renamed from: i  reason: collision with root package name */
    private static final byte f21177i = -2;

    /* renamed from: j  reason: collision with root package name */
    private static final byte f21178j = -1;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f21179k = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f21180l = {-1, 8000, a.f21097g, 32000, -1, -1, 11025, 22050, StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f21181m = {64, 112, 128, 192, 224, 256, com.facebook.imagepipeline.memory.c.f12563b, 448, 512, 640, 768, 896, 1024, 1152, com.im.freechat.utils.h.f43782b, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    private c0() {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 6
            r4 = 7
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4a
            r2 = -1
            if (r1 == r2) goto L32
            r2 = 31
            if (r1 == r2) goto L21
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L58
        L21:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
            goto L42
        L32:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
        L42:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = 1
            goto L5d
        L4a:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L58:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
        L5d:
            if (r0 == 0) goto L63
            int r7 = r7 * 16
            int r7 = r7 / 14
        L63:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.c0.a(byte[]):int");
    }

    private static com.google.android.exoplayer2.util.g0 b(byte[] bArr) {
        if (bArr[0] == Byte.MAX_VALUE) {
            return new com.google.android.exoplayer2.util.g0(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (c(copyOf)) {
            for (int i4 = 0; i4 < copyOf.length - 1; i4 += 2) {
                byte b10 = copyOf[i4];
                int i10 = i4 + 1;
                copyOf[i4] = copyOf[i10];
                copyOf[i10] = b10;
            }
        }
        com.google.android.exoplayer2.util.g0 g0Var = new com.google.android.exoplayer2.util.g0(copyOf);
        if (copyOf[0] == 31) {
            com.google.android.exoplayer2.util.g0 g0Var2 = new com.google.android.exoplayer2.util.g0(copyOf);
            while (g0Var2.b() >= 16) {
                g0Var2.s(2);
                g0Var.f(g0Var2.h(14), 14);
            }
        }
        g0Var.o(copyOf);
        return g0Var;
    }

    private static boolean c(byte[] bArr) {
        return bArr[0] == -2 || bArr[0] == -1;
    }

    public static boolean d(int i4) {
        return i4 == f21171c || i4 == f21173e || i4 == f21172d || i4 == f21174f;
    }

    public static int e(ByteBuffer byteBuffer) {
        int i4;
        byte b10;
        int i10;
        byte b11;
        int position = byteBuffer.position();
        byte b12 = byteBuffer.get(position);
        if (b12 != -2) {
            if (b12 == -1) {
                i4 = (byteBuffer.get(position + 4) & 7) << 4;
                b11 = byteBuffer.get(position + 7);
            } else if (b12 != 31) {
                i4 = (byteBuffer.get(position + 4) & 1) << 6;
                b10 = byteBuffer.get(position + 5);
            } else {
                i4 = (byteBuffer.get(position + 5) & 7) << 4;
                b11 = byteBuffer.get(position + 6);
            }
            i10 = b11 & 60;
            return (((i10 >> 2) | i4) + 1) * 32;
        }
        i4 = (byteBuffer.get(position + 5) & 1) << 6;
        b10 = byteBuffer.get(position + 4);
        i10 = b10 & 252;
        return (((i10 >> 2) | i4) + 1) * 32;
    }

    public static int f(byte[] bArr) {
        int i4;
        byte b10;
        int i10;
        byte b11;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 == -1) {
                i4 = (bArr[4] & 7) << 4;
                b11 = bArr[7];
            } else if (b12 != 31) {
                i4 = (bArr[4] & 1) << 6;
                b10 = bArr[5];
            } else {
                i4 = (bArr[5] & 7) << 4;
                b11 = bArr[6];
            }
            i10 = b11 & 60;
            return (((i10 >> 2) | i4) + 1) * 32;
        }
        i4 = (bArr[5] & 1) << 6;
        b10 = bArr[4];
        i10 = b10 & 252;
        return (((i10 >> 2) | i4) + 1) * 32;
    }

    public static Format g(byte[] bArr, @Nullable String str, @Nullable String str2, @Nullable DrmInitData drmInitData) {
        com.google.android.exoplayer2.util.g0 b10 = b(bArr);
        b10.s(60);
        int i4 = f21179k[b10.h(6)];
        int i10 = f21180l[b10.h(4)];
        int h4 = b10.h(5);
        int[] iArr = f21181m;
        int i11 = h4 >= iArr.length ? -1 : (iArr[h4] * 1000) / 2;
        b10.s(10);
        return new Format.b().S(str).e0(com.google.android.exoplayer2.util.a0.Q).G(i11).H(i4 + (b10.h(2) > 0 ? 1 : 0)).f0(i10).L(drmInitData).V(str2).E();
    }
}
