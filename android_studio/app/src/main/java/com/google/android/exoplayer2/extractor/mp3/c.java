package com.google.android.exoplayer2.extractor.mp3;

import android.util.Pair;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.z0;

/* compiled from: MlltSeeker.java */
/* loaded from: classes2.dex */
final class c implements g {

    /* renamed from: d  reason: collision with root package name */
    private final long[] f22520d;

    /* renamed from: e  reason: collision with root package name */
    private final long[] f22521e;

    /* renamed from: f  reason: collision with root package name */
    private final long f22522f;

    private c(long[] jArr, long[] jArr2, long j4) {
        this.f22520d = jArr;
        this.f22521e = jArr2;
        this.f22522f = j4 == com.google.android.exoplayer2.i.f23649b ? com.google.android.exoplayer2.i.c(jArr2[jArr2.length - 1]) : j4;
    }

    public static c a(long j4, MlltFrame mlltFrame, long j10) {
        int length = mlltFrame.bytesDeviations.length;
        int i4 = length + 1;
        long[] jArr = new long[i4];
        long[] jArr2 = new long[i4];
        jArr[0] = j4;
        long j11 = 0;
        jArr2[0] = 0;
        for (int i10 = 1; i10 <= length; i10++) {
            int i11 = i10 - 1;
            j4 += mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i11];
            j11 += mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i11];
            jArr[i10] = j4;
            jArr2[i10] = j11;
        }
        return new c(jArr, jArr2, j10);
    }

    private static Pair<Long, Long> b(long j4, long[] jArr, long[] jArr2) {
        int j10 = z0.j(jArr, j4, true, true);
        long j11 = jArr[j10];
        long j12 = jArr2[j10];
        int i4 = j10 + 1;
        if (i4 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i4];
        return Pair.create(Long.valueOf(j4), Long.valueOf(((long) ((j13 == j11 ? 0.0d : (j4 - j11) / (j13 - j11)) * (jArr2[i4] - j12))) + j12));
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        Pair<Long, Long> b10 = b(com.google.android.exoplayer2.i.d(z0.u(j4, 0L, this.f22522f)), this.f22521e, this.f22520d);
        return new b0.a(new c0(com.google.android.exoplayer2.i.c(((Long) b10.first).longValue()), ((Long) b10.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long f() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long h(long j4) {
        return com.google.android.exoplayer2.i.c(((Long) b(j4, this.f22520d, this.f22521e).second).longValue());
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22522f;
    }
}
