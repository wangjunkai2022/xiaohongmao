package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.m;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: ResolvingDataSource.java */
/* loaded from: classes2.dex */
public final class k0 implements m {

    /* renamed from: b  reason: collision with root package name */
    private final m f27262b;

    /* renamed from: c  reason: collision with root package name */
    private final b f27263c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27264d;

    /* compiled from: ResolvingDataSource.java */
    /* loaded from: classes2.dex */
    public static final class a implements m.a {

        /* renamed from: a  reason: collision with root package name */
        private final m.a f27265a;

        /* renamed from: b  reason: collision with root package name */
        private final b f27266b;

        public a(m.a aVar, b bVar) {
            this.f27265a = aVar;
            this.f27266b = bVar;
        }

        @Override // com.google.android.exoplayer2.upstream.m.a
        /* renamed from: d */
        public k0 a() {
            return new k0(this.f27265a.a(), this.f27266b);
        }
    }

    /* compiled from: ResolvingDataSource.java */
    /* loaded from: classes2.dex */
    public interface b {
        o a(o oVar) throws IOException;

        Uri b(Uri uri);
    }

    public k0(m mVar, b bVar) {
        this.f27262b = mVar;
        this.f27263c = bVar;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        o a10 = this.f27263c.a(oVar);
        this.f27264d = true;
        return this.f27262b.a(a10);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        return this.f27262b.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        Uri c10 = this.f27262b.c();
        if (c10 == null) {
            return null;
        }
        return this.f27263c.b(c10);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        if (this.f27264d) {
            this.f27264d = false;
            this.f27262b.close();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27262b.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        return this.f27262b.read(bArr, i4, i10);
    }
}
