package com.google.android.play.core.internal;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class m1 extends l1 {

    /* renamed from: a  reason: collision with root package name */
    private final l1 f31731a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31732b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31733c;

    public m1(l1 l1Var, long j4, long j10) {
        this.f31731a = l1Var;
        long h4 = h(j4);
        this.f31732b = h4;
        this.f31733c = h(h4 + j10);
    }

    private final long h(long j4) {
        if (j4 < 0) {
            return 0L;
        }
        return j4 > this.f31731a.a() ? this.f31731a.a() : j4;
    }

    @Override // com.google.android.play.core.internal.l1
    public final long a() {
        return this.f31733c - this.f31732b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.l1
    public final InputStream b(long j4, long j10) throws IOException {
        long h4 = h(this.f31732b);
        return this.f31731a.b(h4, h(j10 + h4) - h4);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
