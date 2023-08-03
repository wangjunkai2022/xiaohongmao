package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: StatsDataSource.java */
/* loaded from: classes2.dex */
public final class m0 implements m {

    /* renamed from: b  reason: collision with root package name */
    private final m f27267b;

    /* renamed from: c  reason: collision with root package name */
    private long f27268c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f27269d = Uri.EMPTY;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, List<String>> f27270e = Collections.emptyMap();

    public m0(m mVar) {
        this.f27267b = (m) com.google.android.exoplayer2.util.a.g(mVar);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        this.f27269d = oVar.f27288a;
        this.f27270e = Collections.emptyMap();
        long a10 = this.f27267b.a(oVar);
        this.f27269d = (Uri) com.google.android.exoplayer2.util.a.g(c());
        this.f27270e = b();
        return a10;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        return this.f27267b.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27267b.c();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        this.f27267b.close();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27267b.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int read = this.f27267b.read(bArr, i4, i10);
        if (read != -1) {
            this.f27268c += read;
        }
        return read;
    }

    public long t() {
        return this.f27268c;
    }

    public Uri u() {
        return this.f27269d;
    }

    public Map<String, List<String>> v() {
        return this.f27270e;
    }

    public void w() {
        this.f27268c = 0L;
    }
}
