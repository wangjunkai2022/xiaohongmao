package com.google.android.exoplayer2.source;

import java.util.Arrays;
import java.util.Random;

/* compiled from: ShuffleOrder.java */
/* loaded from: classes2.dex */
public interface z0 {

    /* compiled from: ShuffleOrder.java */
    /* loaded from: classes2.dex */
    public static class a implements z0 {

        /* renamed from: a  reason: collision with root package name */
        private final Random f25226a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f25227b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f25228c;

        public a(int i4) {
            this(i4, new Random());
        }

        private static int[] h(int i4, Random random) {
            int[] iArr = new int[i4];
            int i10 = 0;
            while (i10 < i4) {
                int i11 = i10 + 1;
                int nextInt = random.nextInt(i11);
                iArr[i10] = iArr[nextInt];
                iArr[nextInt] = i10;
                i10 = i11;
            }
            return iArr;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public z0 a(int i4, int i10) {
            int i11 = i10 - i4;
            int[] iArr = new int[this.f25227b.length - i11];
            int i12 = 0;
            int i13 = 0;
            while (true) {
                int[] iArr2 = this.f25227b;
                if (i12 < iArr2.length) {
                    if (iArr2[i12] < i4 || iArr2[i12] >= i10) {
                        iArr[i12 - i13] = iArr2[i12] >= i4 ? iArr2[i12] - i11 : iArr2[i12];
                    } else {
                        i13++;
                    }
                    i12++;
                } else {
                    return new a(iArr, new Random(this.f25226a.nextLong()));
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int b(int i4) {
            int i10 = this.f25228c[i4] - 1;
            if (i10 >= 0) {
                return this.f25227b[i10];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int c(int i4) {
            int i10 = this.f25228c[i4] + 1;
            int[] iArr = this.f25227b;
            if (i10 < iArr.length) {
                return iArr[i10];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int d() {
            int[] iArr = this.f25227b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public z0 e() {
            return new a(0, new Random(this.f25226a.nextLong()));
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int f() {
            int[] iArr = this.f25227b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public z0 g(int i4, int i10) {
            int[] iArr = new int[i10];
            int[] iArr2 = new int[i10];
            int i11 = 0;
            int i12 = 0;
            while (i12 < i10) {
                iArr[i12] = this.f25226a.nextInt(this.f25227b.length + 1);
                int i13 = i12 + 1;
                int nextInt = this.f25226a.nextInt(i13);
                iArr2[i12] = iArr2[nextInt];
                iArr2[nextInt] = i12 + i4;
                i12 = i13;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f25227b.length + i10];
            int i14 = 0;
            int i15 = 0;
            while (true) {
                int[] iArr4 = this.f25227b;
                if (i11 < iArr4.length + i10) {
                    if (i14 < i10 && i15 == iArr[i14]) {
                        iArr3[i11] = iArr2[i14];
                        i14++;
                    } else {
                        int i16 = i15 + 1;
                        iArr3[i11] = iArr4[i15];
                        if (iArr3[i11] >= i4) {
                            iArr3[i11] = iArr3[i11] + i10;
                        }
                        i15 = i16;
                    }
                    i11++;
                } else {
                    return new a(iArr3, new Random(this.f25226a.nextLong()));
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int getLength() {
            return this.f25227b.length;
        }

        public a(int i4, long j4) {
            this(i4, new Random(j4));
        }

        public a(int[] iArr, long j4) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j4));
        }

        private a(int i4, Random random) {
            this(h(i4, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f25227b = iArr;
            this.f25226a = random;
            this.f25228c = new int[iArr.length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                this.f25228c[iArr[i4]] = i4;
            }
        }
    }

    /* compiled from: ShuffleOrder.java */
    /* loaded from: classes2.dex */
    public static final class b implements z0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f25229a;

        public b(int i4) {
            this.f25229a = i4;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public z0 a(int i4, int i10) {
            return new b((this.f25229a - i10) + i4);
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int b(int i4) {
            int i10 = i4 - 1;
            if (i10 >= 0) {
                return i10;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int c(int i4) {
            int i10 = i4 + 1;
            if (i10 < this.f25229a) {
                return i10;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int d() {
            int i4 = this.f25229a;
            if (i4 > 0) {
                return i4 - 1;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public z0 e() {
            return new b(0);
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int f() {
            return this.f25229a > 0 ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.source.z0
        public z0 g(int i4, int i10) {
            return new b(this.f25229a + i10);
        }

        @Override // com.google.android.exoplayer2.source.z0
        public int getLength() {
            return this.f25229a;
        }
    }

    z0 a(int i4, int i10);

    int b(int i4);

    int c(int i4);

    int d();

    z0 e();

    int f();

    z0 g(int i4, int i10);

    int getLength();
}
