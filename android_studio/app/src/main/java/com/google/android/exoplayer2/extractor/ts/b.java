package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.io.IOException;

/* compiled from: Ac3Extractor.java */
/* loaded from: classes2.dex */
public final class b implements com.google.android.exoplayer2.extractor.k {

    /* renamed from: g  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.q f23003g = a.f22970b;

    /* renamed from: h  reason: collision with root package name */
    private static final int f23004h = 8192;

    /* renamed from: i  reason: collision with root package name */
    private static final int f23005i = 2935;

    /* renamed from: j  reason: collision with root package name */
    private static final int f23006j = 2786;

    /* renamed from: d  reason: collision with root package name */
    private final c f23007d = new c();

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23008e = new com.google.android.exoplayer2.util.h0((int) f23006j);

    /* renamed from: f  reason: collision with root package name */
    private boolean f23009f;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] f() {
        return new com.google.android.exoplayer2.extractor.k[]{new b()};
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f23009f = false;
        this.f23007d.c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
        if ((r4 - r3) < 8192) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        r8.h();
        r4 = r4 + 1;
     */
    @Override // com.google.android.exoplayer2.extractor.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.google.android.exoplayer2.extractor.l r8) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.exoplayer2.util.h0 r0 = new com.google.android.exoplayer2.util.h0
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.d()
            r8.s(r4, r2, r1)
            r0.S(r2)
            int r4 = r0.J()
            r5 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r5) goto L5f
            r8.h()
            r8.k(r3)
            r4 = r3
        L23:
            r1 = 0
        L24:
            byte[] r5 = r0.d()
            r6 = 6
            r8.s(r5, r2, r6)
            r0.S(r2)
            int r5 = r0.M()
            r6 = 2935(0xb77, float:4.113E-42)
            if (r5 == r6) goto L47
            r8.h()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r5) goto L43
            return r2
        L43:
            r8.k(r4)
            goto L23
        L47:
            r5 = 1
            int r1 = r1 + r5
            r6 = 4
            if (r1 < r6) goto L4d
            return r5
        L4d:
            byte[] r5 = r0.d()
            int r5 = com.google.android.exoplayer2.audio.b.f(r5)
            r6 = -1
            if (r5 != r6) goto L59
            return r2
        L59:
            int r5 = r5 + (-6)
            r8.k(r5)
            goto L24
        L5f:
            r4 = 3
            r0.T(r4)
            int r4 = r0.F()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r8.k(r4)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.b.b(com.google.android.exoplayer2.extractor.l):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        int read = lVar.read(this.f23008e.d(), 0, f23006j);
        if (read == -1) {
            return -1;
        }
        this.f23008e.S(0);
        this.f23008e.R(read);
        if (!this.f23009f) {
            this.f23007d.f(0L, 4);
            this.f23009f = true;
        }
        this.f23007d.b(this.f23008e);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.f23007d.d(mVar, new i0.e(0, 1));
        mVar.t();
        mVar.q(new b0.b(com.google.android.exoplayer2.i.f23649b));
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }
}
