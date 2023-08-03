package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.z0;

/* compiled from: FixedSampleSizeRechunker.java */
/* loaded from: classes2.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int f22678a = 8192;

    /* compiled from: FixedSampleSizeRechunker.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f22679a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f22680b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22681c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f22682d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f22683e;

        /* renamed from: f  reason: collision with root package name */
        public final long f22684f;

        private b(long[] jArr, int[] iArr, int i4, long[] jArr2, int[] iArr2, long j4) {
            this.f22679a = jArr;
            this.f22680b = iArr;
            this.f22681c = i4;
            this.f22682d = jArr2;
            this.f22683e = iArr2;
            this.f22684f = j4;
        }
    }

    private d() {
    }

    public static b a(int i4, long[] jArr, int[] iArr, long j4) {
        int i10 = 8192 / i4;
        int i11 = 0;
        for (int i12 : iArr) {
            i11 += z0.m(i12, i10);
        }
        long[] jArr2 = new long[i11];
        int[] iArr2 = new int[i11];
        long[] jArr3 = new long[i11];
        int[] iArr3 = new int[i11];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < iArr.length; i16++) {
            int i17 = iArr[i16];
            long j10 = jArr[i16];
            while (i17 > 0) {
                int min = Math.min(i10, i17);
                jArr2[i14] = j10;
                iArr2[i14] = i4 * min;
                i15 = Math.max(i15, iArr2[i14]);
                jArr3[i14] = i13 * j4;
                iArr3[i14] = 1;
                j10 += iArr2[i14];
                i13 += min;
                i17 -= min;
                i14++;
            }
        }
        return new b(jArr2, iArr2, i15, jArr3, iArr3, j4 * i13);
    }
}
