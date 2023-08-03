package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.facebook.common.statfs.StatFsHelper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.nio.ByteBuffer;

/* compiled from: Ac4Util.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21157a = 44096;

    /* renamed from: b  reason: collision with root package name */
    public static final int f21158b = 44097;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21159c = 336000;

    /* renamed from: d  reason: collision with root package name */
    private static final int f21160d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21161e = 7;

    /* renamed from: f  reason: collision with root package name */
    public static final int f21162f = 16;

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f21163g = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, StatFsHelper.f11024h, StatFsHelper.f11024h, 2048};

    /* compiled from: Ac4Util.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f21164a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21165b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21166c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21167d;

        /* renamed from: e  reason: collision with root package name */
        public final int f21168e;

        private b(int i4, int i10, int i11, int i12, int i13) {
            this.f21164a = i4;
            this.f21166c = i10;
            this.f21165b = i11;
            this.f21167d = i12;
            this.f21168e = i13;
        }
    }

    private c() {
    }

    public static void a(int i4, com.google.android.exoplayer2.util.h0 h0Var) {
        h0Var.O(7);
        byte[] d4 = h0Var.d();
        d4[0] = -84;
        d4[1] = com.google.common.primitives.k.f34876a;
        d4[2] = -1;
        d4[3] = -1;
        d4[4] = (byte) ((i4 >> 16) & 255);
        d4[5] = (byte) ((i4 >> 8) & 255);
        d4[6] = (byte) (i4 & 255);
    }

    public static Format b(com.google.android.exoplayer2.util.h0 h0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        h0Var.T(1);
        return new Format.b().S(str).e0(com.google.android.exoplayer2.util.a0.O).H(2).f0(((h0Var.G() & 32) >> 5) == 1 ? 48000 : StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE).L(drmInitData).V(str2).E();
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return d(new com.google.android.exoplayer2.util.g0(bArr)).f21168e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0086, code lost:
        if (r10 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
        if (r10 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0090, code lost:
        if (r10 != 8) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.exoplayer2.audio.c.b d(com.google.android.exoplayer2.util.g0 r10) {
        /*
            r0 = 16
            int r1 = r10.h(r0)
            int r0 = r10.h(r0)
            r2 = 4
            r3 = 65535(0xffff, float:9.1834E-41)
            if (r0 != r3) goto L18
            r0 = 24
            int r0 = r10.h(r0)
            r3 = 7
            goto L19
        L18:
            r3 = 4
        L19:
            int r0 = r0 + r3
            r3 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r3) goto L21
            int r0 = r0 + 2
        L21:
            r7 = r0
            r0 = 2
            int r1 = r10.h(r0)
            r3 = 3
            if (r1 != r3) goto L2f
            int r4 = f(r10, r0)
            int r1 = r1 + r4
        L2f:
            r4 = r1
            r1 = 10
            int r1 = r10.h(r1)
            boolean r5 = r10.g()
            if (r5 == 0) goto L45
            int r5 = r10.h(r3)
            if (r5 <= 0) goto L45
            r10.s(r0)
        L45:
            boolean r5 = r10.g()
            r6 = 48000(0xbb80, float:6.7262E-41)
            r8 = 44100(0xac44, float:6.1797E-41)
            if (r5 == 0) goto L55
            r9 = 48000(0xbb80, float:6.7262E-41)
            goto L58
        L55:
            r9 = 44100(0xac44, float:6.1797E-41)
        L58:
            int r10 = r10.h(r2)
            r5 = 0
            if (r9 != r8) goto L69
            r8 = 13
            if (r10 != r8) goto L69
            int[] r0 = com.google.android.exoplayer2.audio.c.f21163g
            r10 = r0[r10]
            r8 = r10
            goto L99
        L69:
            if (r9 != r6) goto L98
            int[] r6 = com.google.android.exoplayer2.audio.c.f21163g
            int r8 = r6.length
            if (r10 >= r8) goto L98
            r5 = r6[r10]
            int r1 = r1 % 5
            r6 = 8
            r8 = 1
            if (r1 == r8) goto L8e
            r8 = 11
            if (r1 == r0) goto L89
            if (r1 == r3) goto L8e
            if (r1 == r2) goto L82
            goto L93
        L82:
            if (r10 == r3) goto L95
            if (r10 == r6) goto L95
            if (r10 != r8) goto L93
            goto L95
        L89:
            if (r10 == r6) goto L95
            if (r10 != r8) goto L93
            goto L95
        L8e:
            if (r10 == r3) goto L95
            if (r10 != r6) goto L93
            goto L95
        L93:
            r8 = r5
            goto L99
        L95:
            int r5 = r5 + 1
            goto L93
        L98:
            r8 = 0
        L99:
            com.google.android.exoplayer2.audio.c$b r10 = new com.google.android.exoplayer2.audio.c$b
            r5 = 2
            r0 = 0
            r3 = r10
            r6 = r9
            r9 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.c.d(com.google.android.exoplayer2.util.g0):com.google.android.exoplayer2.audio.c$b");
    }

    public static int e(byte[] bArr, int i4) {
        int i10 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i11 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i11 == 65535) {
            i11 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i10 = 4;
        }
        if (i4 == 44097) {
            i10 += 2;
        }
        return i11 + i10;
    }

    private static int f(com.google.android.exoplayer2.util.g0 g0Var, int i4) {
        int i10 = 0;
        while (true) {
            int h4 = i10 + g0Var.h(i4);
            if (!g0Var.g()) {
                return h4;
            }
            i10 = (h4 + 1) << i4;
        }
    }
}
