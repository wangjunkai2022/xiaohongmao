package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.upstream.o;
import java.util.Collections;

/* compiled from: SingleSampleMediaSource.java */
/* loaded from: classes2.dex */
public final class d1 extends com.google.android.exoplayer2.source.a {

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.o f24896g;

    /* renamed from: h  reason: collision with root package name */
    private final m.a f24897h;

    /* renamed from: i  reason: collision with root package name */
    private final Format f24898i;

    /* renamed from: j  reason: collision with root package name */
    private final long f24899j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.f0 f24900k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f24901l;

    /* renamed from: m  reason: collision with root package name */
    private final s2 f24902m;

    /* renamed from: n  reason: collision with root package name */
    private final com.google.android.exoplayer2.b1 f24903n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.p0 f24904o;

    /* compiled from: SingleSampleMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final m.a f24905a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.f0 f24906b = new com.google.android.exoplayer2.upstream.w();

        /* renamed from: c  reason: collision with root package name */
        private boolean f24907c = true;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Object f24908d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f24909e;

        public b(m.a aVar) {
            this.f24905a = (m.a) com.google.android.exoplayer2.util.a.g(aVar);
        }

        @Deprecated
        public d1 a(Uri uri, Format format, long j4) {
            String str = format.id;
            if (str == null) {
                str = this.f24909e;
            }
            return new d1(str, new b1.h(uri, (String) com.google.android.exoplayer2.util.a.g(format.sampleMimeType), format.language, format.selectionFlags), this.f24905a, j4, this.f24906b, this.f24907c, this.f24908d);
        }

        public d1 b(b1.h hVar, long j4) {
            return new d1(this.f24909e, hVar, this.f24905a, j4, this.f24906b, this.f24907c, this.f24908d);
        }

        public b c(@Nullable com.google.android.exoplayer2.upstream.f0 f0Var) {
            if (f0Var == null) {
                f0Var = new com.google.android.exoplayer2.upstream.w();
            }
            this.f24906b = f0Var;
            return this;
        }

        public b d(@Nullable Object obj) {
            this.f24908d = obj;
            return this;
        }

        public b e(@Nullable String str) {
            this.f24909e = str;
            return this;
        }

        public b f(boolean z9) {
            this.f24907c = z9;
            return this;
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void A() {
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        return new c1(this.f24896g, this.f24897h, this.f24904o, this.f24898i, this.f24899j, this.f24900k, t(aVar), this.f24901l);
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return this.f24903n;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return ((b1.g) com.google.android.exoplayer2.util.z0.k(this.f24903n.f21439b)).f21509h;
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        ((c1) wVar).t();
    }

    @Override // com.google.android.exoplayer2.source.z
    public void n() {
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        this.f24904o = p0Var;
        z(this.f24902m);
    }

    private d1(@Nullable String str, b1.h hVar, m.a aVar, long j4, com.google.android.exoplayer2.upstream.f0 f0Var, boolean z9, @Nullable Object obj) {
        this.f24897h = aVar;
        this.f24899j = j4;
        this.f24900k = f0Var;
        this.f24901l = z9;
        com.google.android.exoplayer2.b1 a10 = new b1.c().F(Uri.EMPTY).z(hVar.f21510a.toString()).D(Collections.singletonList(hVar)).E(obj).a();
        this.f24903n = a10;
        this.f24898i = new Format.b().S(str).e0(hVar.f21511b).V(hVar.f21512c).g0(hVar.f21513d).c0(hVar.f21514e).U(hVar.f21515f).E();
        this.f24896g = new o.b().j(hVar.f21510a).c(1).a();
        this.f24902m = new b1(j4, true, false, false, (Object) null, a10);
    }
}
