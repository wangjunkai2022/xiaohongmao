package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.l;
import java.io.IOException;

/* compiled from: VarintReader.java */
/* loaded from: classes2.dex */
final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final int f22509d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final int f22510e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final long[] f22511f = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f22512a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private int f22513b;

    /* renamed from: c  reason: collision with root package name */
    private int f22514c;

    public static long a(byte[] bArr, int i4, boolean z9) {
        long j4 = bArr[0] & 255;
        if (z9) {
            j4 &= ~f22511f[i4 - 1];
        }
        for (int i10 = 1; i10 < i4; i10++) {
            j4 = (j4 << 8) | (bArr[i10] & 255);
        }
        return j4;
    }

    public static int c(int i4) {
        int i10 = 0;
        while (true) {
            long[] jArr = f22511f;
            if (i10 >= jArr.length) {
                return -1;
            }
            if ((jArr[i10] & i4) != 0) {
                return i10 + 1;
            }
            i10++;
        }
    }

    public int b() {
        return this.f22514c;
    }

    public long d(l lVar, boolean z9, boolean z10, int i4) throws IOException {
        if (this.f22513b == 0) {
            if (!lVar.i(this.f22512a, 0, 1, z9)) {
                return -1L;
            }
            int c10 = c(this.f22512a[0] & 255);
            this.f22514c = c10;
            if (c10 != -1) {
                this.f22513b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i10 = this.f22514c;
        if (i10 > i4) {
            this.f22513b = 0;
            return -2L;
        }
        if (i10 != 1) {
            lVar.readFully(this.f22512a, 1, i10 - 1);
        }
        this.f22513b = 0;
        return a(this.f22512a, this.f22514c, z10);
    }

    public void e() {
        this.f22513b = 0;
        this.f22514c = 0;
    }
}
