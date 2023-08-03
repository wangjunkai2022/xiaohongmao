package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.io.IOException;

/* compiled from: Ac4Extractor.java */
/* loaded from: classes2.dex */
public final class e implements com.google.android.exoplayer2.extractor.k {

    /* renamed from: g  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.q f23038g = d.f23035b;

    /* renamed from: h  reason: collision with root package name */
    private static final int f23039h = 8192;

    /* renamed from: i  reason: collision with root package name */
    private static final int f23040i = 16384;

    /* renamed from: j  reason: collision with root package name */
    private static final int f23041j = 7;

    /* renamed from: d  reason: collision with root package name */
    private final f f23042d = new f();

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23043e = new com.google.android.exoplayer2.util.h0(16384);

    /* renamed from: f  reason: collision with root package name */
    private boolean f23044f;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] f() {
        return new com.google.android.exoplayer2.extractor.k[]{new e()};
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f23044f = false;
        this.f23042d.c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        r9.h();
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
        if ((r4 - r3) < 8192) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.google.android.exoplayer2.extractor.l r9) throws java.io.IOException {
        /*
            r8 = this;
            com.google.android.exoplayer2.util.h0 r0 = new com.google.android.exoplayer2.util.h0
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.d()
            r9.s(r4, r2, r1)
            r0.S(r2)
            int r4 = r0.J()
            r5 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r5) goto L65
            r9.h()
            r9.k(r3)
            r4 = r3
        L23:
            r1 = 0
        L24:
            byte[] r5 = r0.d()
            r6 = 7
            r9.s(r5, r2, r6)
            r0.S(r2)
            int r5 = r0.M()
            r6 = 44096(0xac40, float:6.1792E-41)
            if (r5 == r6) goto L4d
            r6 = 44097(0xac41, float:6.1793E-41)
            if (r5 == r6) goto L4d
            r9.h()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r5) goto L49
            return r2
        L49:
            r9.k(r4)
            goto L23
        L4d:
            r6 = 1
            int r1 = r1 + r6
            r7 = 4
            if (r1 < r7) goto L53
            return r6
        L53:
            byte[] r6 = r0.d()
            int r5 = com.google.android.exoplayer2.audio.c.e(r6, r5)
            r6 = -1
            if (r5 != r6) goto L5f
            return r2
        L5f:
            int r5 = r5 + (-7)
            r9.k(r5)
            goto L24
        L65:
            r4 = 3
            r0.T(r4)
            int r4 = r0.F()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r9.k(r4)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.e.b(com.google.android.exoplayer2.extractor.l):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        int read = lVar.read(this.f23043e.d(), 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f23043e.S(0);
        this.f23043e.R(read);
        if (!this.f23044f) {
            this.f23042d.f(0L, 4);
            this.f23044f = true;
        }
        this.f23042d.b(this.f23043e);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.f23042d.d(mVar, new i0.e(0, 1));
        mVar.t();
        mVar.q(new b0.b(com.google.android.exoplayer2.i.f23649b));
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }
}
