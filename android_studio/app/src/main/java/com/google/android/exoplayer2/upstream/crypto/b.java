package com.google.android.exoplayer2.upstream.crypto;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.upstream.p0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: AesCipherDataSource.java */
/* loaded from: classes2.dex */
public final class b implements m {

    /* renamed from: b  reason: collision with root package name */
    private final m f27212b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27213c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private c f27214d;

    public b(byte[] bArr, m mVar) {
        this.f27212b = mVar;
        this.f27213c = bArr;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        long a10 = this.f27212b.a(oVar);
        long a11 = d.a(oVar.f27296i);
        this.f27214d = new c(2, this.f27213c, a11, oVar.f27294g + oVar.f27289b);
        return a10;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        return this.f27212b.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27212b.c();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        this.f27214d = null;
        this.f27212b.close();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27212b.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        if (i10 == 0) {
            return 0;
        }
        int read = this.f27212b.read(bArr, i4, i10);
        if (read == -1) {
            return -1;
        }
        ((c) z0.k(this.f27214d)).d(bArr, i4, read);
        return read;
    }
}
