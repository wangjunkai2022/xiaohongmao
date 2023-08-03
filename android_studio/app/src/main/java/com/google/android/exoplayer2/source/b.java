package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: BundledExtractorsAdapter.java */
/* loaded from: classes2.dex */
public final class b implements l0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.q f24729a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.k f24730b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.l f24731c;

    public b(com.google.android.exoplayer2.extractor.q qVar) {
        this.f24729a = qVar;
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void a(long j4, long j10) {
        ((com.google.android.exoplayer2.extractor.k) com.google.android.exoplayer2.util.a.g(this.f24730b)).a(j4, j10);
    }

    @Override // com.google.android.exoplayer2.source.l0
    public int b(com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        return ((com.google.android.exoplayer2.extractor.k) com.google.android.exoplayer2.util.a.g(this.f24730b)).c((com.google.android.exoplayer2.extractor.l) com.google.android.exoplayer2.util.a.g(this.f24731c), zVar);
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void c() {
        com.google.android.exoplayer2.extractor.k kVar = this.f24730b;
        if (kVar instanceof com.google.android.exoplayer2.extractor.mp3.f) {
            ((com.google.android.exoplayer2.extractor.mp3.f) kVar).j();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        if (r6.getPosition() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0062, code lost:
        if (r6.getPosition() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
        r1 = false;
     */
    @Override // com.google.android.exoplayer2.source.l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(com.google.android.exoplayer2.upstream.i r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, com.google.android.exoplayer2.extractor.m r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.exoplayer2.extractor.g r6 = new com.google.android.exoplayer2.extractor.g
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f24731c = r6
            com.google.android.exoplayer2.extractor.k r8 = r7.f24730b
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.exoplayer2.extractor.q r8 = r7.f24729a
            com.google.android.exoplayer2.extractor.k[] r8 = r8.a(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.f24730b = r8
            goto L75
        L20:
            int r10 = r8.length
            r0 = 0
        L22:
            if (r0 >= r10) goto L71
            r1 = r8[r0]
            boolean r2 = r1.b(r6)     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            if (r2 == 0) goto L35
            r7.f24730b = r1     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            com.google.android.exoplayer2.util.a.i(r14)
            r6.h()
            goto L71
        L35:
            com.google.android.exoplayer2.extractor.k r1 = r7.f24730b
            if (r1 != 0) goto L67
            long r1 = r6.getPosition()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L65
            goto L67
        L42:
            r8 = move-exception
            com.google.android.exoplayer2.extractor.k r9 = r7.f24730b
            if (r9 != 0) goto L4f
            long r9 = r6.getPosition()
            int r15 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r15 != 0) goto L50
        L4f:
            r13 = 1
        L50:
            com.google.android.exoplayer2.util.a.i(r13)
            r6.h()
            throw r8
        L57:
            com.google.android.exoplayer2.extractor.k r1 = r7.f24730b
            if (r1 != 0) goto L67
            long r1 = r6.getPosition()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L65
            goto L67
        L65:
            r1 = 0
            goto L68
        L67:
            r1 = 1
        L68:
            com.google.android.exoplayer2.util.a.i(r1)
            r6.h()
            int r0 = r0 + 1
            goto L22
        L71:
            com.google.android.exoplayer2.extractor.k r10 = r7.f24730b
            if (r10 == 0) goto L7b
        L75:
            com.google.android.exoplayer2.extractor.k r8 = r7.f24730b
            r8.d(r15)
            return
        L7b:
            com.google.android.exoplayer2.source.UnrecognizedInputFormatException r10 = new com.google.android.exoplayer2.source.UnrecognizedInputFormatException
            java.lang.String r8 = com.google.android.exoplayer2.util.z0.T(r8)
            java.lang.String r11 = java.lang.String.valueOf(r8)
            int r11 = r11.length()
            int r11 = r11 + 58
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>(r11)
            java.lang.String r11 = "None of the available extractors ("
            r12.append(r11)
            r12.append(r8)
            java.lang.String r8 = ") could read the stream."
            r12.append(r8)
            java.lang.String r8 = r12.toString()
            java.lang.Object r9 = com.google.android.exoplayer2.util.a.g(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r10.<init>(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.b.d(com.google.android.exoplayer2.upstream.i, android.net.Uri, java.util.Map, long, long, com.google.android.exoplayer2.extractor.m):void");
    }

    @Override // com.google.android.exoplayer2.source.l0
    public long e() {
        com.google.android.exoplayer2.extractor.l lVar = this.f24731c;
        if (lVar != null) {
            return lVar.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void release() {
        com.google.android.exoplayer2.extractor.k kVar = this.f24730b;
        if (kVar != null) {
            kVar.release();
            this.f24730b = null;
        }
        this.f24731c = null;
    }
}
