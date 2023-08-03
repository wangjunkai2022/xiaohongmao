package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* compiled from: ParsingLoadable.java */
/* loaded from: classes2.dex */
public final class h0<T> implements Loader.e {

    /* renamed from: a  reason: collision with root package name */
    public final long f27245a;

    /* renamed from: b  reason: collision with root package name */
    public final o f27246b;

    /* renamed from: c  reason: collision with root package name */
    public final int f27247c;

    /* renamed from: d  reason: collision with root package name */
    private final m0 f27248d;

    /* renamed from: e  reason: collision with root package name */
    private final a<? extends T> f27249e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile T f27250f;

    /* compiled from: ParsingLoadable.java */
    /* loaded from: classes2.dex */
    public interface a<T> {
        T a(Uri uri, InputStream inputStream) throws IOException;
    }

    public h0(m mVar, Uri uri, int i4, a<? extends T> aVar) {
        this(mVar, new o.b().j(uri).c(1).a(), i4, aVar);
    }

    public static <T> T g(m mVar, a<? extends T> aVar, Uri uri, int i4) throws IOException {
        h0 h0Var = new h0(mVar, uri, i4, aVar);
        h0Var.a();
        return (T) com.google.android.exoplayer2.util.a.g(h0Var.e());
    }

    public static <T> T h(m mVar, a<? extends T> aVar, o oVar, int i4) throws IOException {
        h0 h0Var = new h0(mVar, oVar, i4, aVar);
        h0Var.a();
        return (T) com.google.android.exoplayer2.util.a.g(h0Var.e());
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void a() throws IOException {
        this.f27248d.w();
        n nVar = new n(this.f27248d, this.f27246b);
        try {
            nVar.d();
            this.f27250f = this.f27249e.a((Uri) com.google.android.exoplayer2.util.a.g(this.f27248d.c()), nVar);
        } finally {
            z0.q(nVar);
        }
    }

    public long b() {
        return this.f27248d.t();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void c() {
    }

    public Map<String, List<String>> d() {
        return this.f27248d.v();
    }

    @Nullable
    public final T e() {
        return this.f27250f;
    }

    public Uri f() {
        return this.f27248d.u();
    }

    public h0(m mVar, o oVar, int i4, a<? extends T> aVar) {
        this.f27248d = new m0(mVar);
        this.f27246b = oVar;
        this.f27247c = i4;
        this.f27249e = aVar;
        this.f27245a = com.google.android.exoplayer2.source.o.a();
    }
}
