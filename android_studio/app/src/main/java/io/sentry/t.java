package io.sentry;

import java.io.StringReader;
import java.nio.charset.Charset;
import m8.a;

/* compiled from: EnvelopeReader.java */
@a.c
/* loaded from: classes4.dex */
public final class t implements k0 {

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f83969b = Charset.forName("UTF-8");
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final u0 f83970a;

    public t(@m8.g u0 u0Var) {
        this.f83970a = u0Var;
    }

    @m8.h
    private m3 b(@m8.g byte[] bArr, int i4, int i10) {
        return (m3) this.f83970a.c(new StringReader(new String(bArr, i4, i10, f83969b)), m3.class);
    }

    @m8.h
    private g4 c(@m8.g byte[] bArr, int i4, int i10) {
        return (g4) this.f83970a.c(new StringReader(new String(bArr, i4, i10, f83969b)), g4.class);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0081, code lost:
        r11 = new io.sentry.l3(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0086, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0089, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e2, code lost:
        throw new java.lang.IllegalArgumentException("Item header at index '" + r2.size() + "' is null or empty.");
     */
    @Override // io.sentry.k0
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public io.sentry.l3 a(@m8.g java.io.InputStream r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.t.a(java.io.InputStream):io.sentry.l3");
    }
}
