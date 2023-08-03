package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: TeeDataSource.java */
/* loaded from: classes2.dex */
public final class n0 implements m {

    /* renamed from: b  reason: collision with root package name */
    private final m f27277b;

    /* renamed from: c  reason: collision with root package name */
    private final k f27278c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27279d;

    /* renamed from: e  reason: collision with root package name */
    private long f27280e;

    public n0(m mVar, k kVar) {
        this.f27277b = (m) com.google.android.exoplayer2.util.a.g(mVar);
        this.f27278c = (k) com.google.android.exoplayer2.util.a.g(kVar);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        long a10 = this.f27277b.a(oVar);
        this.f27280e = a10;
        if (a10 == 0) {
            return 0L;
        }
        if (oVar.f27295h == -1 && a10 != -1) {
            oVar = oVar.f(0L, a10);
        }
        this.f27279d = true;
        this.f27278c.a(oVar);
        return this.f27280e;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        return this.f27277b.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27277b.c();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        try {
            this.f27277b.close();
        } finally {
            if (this.f27279d) {
                this.f27279d = false;
                this.f27278c.close();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27277b.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f27280e == 0) {
            return -1;
        }
        int read = this.f27277b.read(bArr, i4, i10);
        if (read > 0) {
            this.f27278c.write(bArr, i4, read);
            long j4 = this.f27280e;
            if (j4 != -1) {
                this.f27280e = j4 - read;
            }
        }
        return read;
    }
}
