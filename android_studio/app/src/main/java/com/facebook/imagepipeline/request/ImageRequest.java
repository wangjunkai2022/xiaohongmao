package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.common.internal.g;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.common.Priority;
import io.sentry.protocol.t;
import java.io.File;
import r7.h;

@s7.b
/* loaded from: classes.dex */
public class ImageRequest {

    /* renamed from: w  reason: collision with root package name */
    private static boolean f13316w;

    /* renamed from: x  reason: collision with root package name */
    private static boolean f13317x;

    /* renamed from: y  reason: collision with root package name */
    public static final g<ImageRequest, Uri> f13318y = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f13319a;

    /* renamed from: b  reason: collision with root package name */
    private final CacheChoice f13320b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f13321c;

    /* renamed from: d  reason: collision with root package name */
    private final int f13322d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private File f13323e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f13324f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f13325g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f13326h;

    /* renamed from: i  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.b f13327i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.d f13328j;

    /* renamed from: k  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.e f13329k;
    @h

    /* renamed from: l  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.a f13330l;

    /* renamed from: m  reason: collision with root package name */
    private final Priority f13331m;

    /* renamed from: n  reason: collision with root package name */
    private final RequestLevel f13332n;

    /* renamed from: o  reason: collision with root package name */
    private final int f13333o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f13334p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f13335q;
    @h

    /* renamed from: r  reason: collision with root package name */
    private final Boolean f13336r;
    @h

    /* renamed from: s  reason: collision with root package name */
    private final d f13337s;
    @h

    /* renamed from: t  reason: collision with root package name */
    private final q1.f f13338t;
    @h

    /* renamed from: u  reason: collision with root package name */
    private final Boolean f13339u;

    /* renamed from: v  reason: collision with root package name */
    private final int f13340v;

    /* loaded from: classes.dex */
    public enum CacheChoice {
        SMALL,
        DEFAULT
    }

    /* loaded from: classes.dex */
    public enum RequestLevel {
        FULL_FETCH(1),
        DISK_CACHE(2),
        ENCODED_MEMORY_CACHE(3),
        BITMAP_MEMORY_CACHE(4);
        

        /* renamed from: a  reason: collision with root package name */
        private int f13343a;

        RequestLevel(int value) {
            this.f13343a = value;
        }

        public static RequestLevel getMax(RequestLevel requestLevel1, RequestLevel requestLevel2) {
            return requestLevel1.getValue() > requestLevel2.getValue() ? requestLevel1 : requestLevel2;
        }

        public int getValue() {
            return this.f13343a;
        }
    }

    /* loaded from: classes.dex */
    static class a implements g<ImageRequest, Uri> {
        a() {
        }

        @Override // com.facebook.common.internal.g
        @h
        /* renamed from: a */
        public Uri apply(@h ImageRequest arg) {
            if (arg != null) {
                return arg.w();
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public @interface b {

        /* renamed from: p0  reason: collision with root package name */
        public static final int f13344p0 = 1;

        /* renamed from: q0  reason: collision with root package name */
        public static final int f13345q0 = 2;

        /* renamed from: r0  reason: collision with root package name */
        public static final int f13346r0 = 4;

        /* renamed from: s0  reason: collision with root package name */
        public static final int f13347s0 = 8;

        /* renamed from: t0  reason: collision with root package name */
        public static final int f13348t0 = 16;

        /* renamed from: u0  reason: collision with root package name */
        public static final int f13349u0 = 32;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageRequest(ImageRequestBuilder builder) {
        com.facebook.imagepipeline.common.e q9;
        this.f13320b = builder.f();
        Uri r9 = builder.r();
        this.f13321c = r9;
        this.f13322d = y(r9);
        this.f13324f = builder.v();
        this.f13325g = builder.t();
        this.f13326h = builder.j();
        this.f13327i = builder.i();
        this.f13328j = builder.o();
        if (builder.q() == null) {
            q9 = com.facebook.imagepipeline.common.e.a();
        } else {
            q9 = builder.q();
        }
        this.f13329k = q9;
        this.f13330l = builder.e();
        this.f13331m = builder.n();
        this.f13332n = builder.k();
        this.f13333o = builder.g();
        this.f13334p = builder.s();
        this.f13335q = builder.u();
        this.f13336r = builder.Q();
        this.f13337s = builder.l();
        this.f13338t = builder.m();
        this.f13339u = builder.p();
        this.f13340v = builder.h();
    }

    public static void C(boolean cacheHashcode) {
        f13317x = cacheHashcode;
    }

    public static void D(boolean useCachedHashcodeInEquals) {
        f13316w = useCachedHashcodeInEquals;
    }

    @h
    public static ImageRequest a(@h File file) {
        if (file == null) {
            return null;
        }
        return b(com.facebook.common.util.f.d(file));
    }

    @h
    public static ImageRequest b(@h Uri uri) {
        if (uri == null) {
            return null;
        }
        return ImageRequestBuilder.x(uri).a();
    }

    @h
    public static ImageRequest c(@h String uriString) {
        if (uriString == null || uriString.length() == 0) {
            return null;
        }
        return b(Uri.parse(uriString));
    }

    private static int y(final Uri uri) {
        if (uri == null) {
            return -1;
        }
        if (com.facebook.common.util.f.n(uri)) {
            return 0;
        }
        if (com.facebook.common.util.f.l(uri)) {
            return q0.a.f(q0.a.b(uri.getPath())) ? 2 : 3;
        } else if (com.facebook.common.util.f.k(uri)) {
            return 4;
        } else {
            if (com.facebook.common.util.f.h(uri)) {
                return 5;
            }
            if (com.facebook.common.util.f.m(uri)) {
                return 6;
            }
            if (com.facebook.common.util.f.g(uri)) {
                return 7;
            }
            return com.facebook.common.util.f.o(uri) ? 8 : -1;
        }
    }

    public boolean A() {
        return this.f13334p;
    }

    public boolean B() {
        return this.f13335q;
    }

    @h
    public Boolean E() {
        return this.f13336r;
    }

    @Deprecated
    public boolean d() {
        return this.f13329k.h();
    }

    @h
    public com.facebook.imagepipeline.common.a e() {
        return this.f13330l;
    }

    public boolean equals(@h Object o9) {
        if (o9 instanceof ImageRequest) {
            ImageRequest imageRequest = (ImageRequest) o9;
            if (f13316w) {
                int i4 = this.f13319a;
                int i10 = imageRequest.f13319a;
                if (i4 != 0 && i10 != 0 && i4 != i10) {
                    return false;
                }
            }
            if (this.f13325g == imageRequest.f13325g && this.f13334p == imageRequest.f13334p && this.f13335q == imageRequest.f13335q && i.a(this.f13321c, imageRequest.f13321c) && i.a(this.f13320b, imageRequest.f13320b) && i.a(this.f13323e, imageRequest.f13323e) && i.a(this.f13330l, imageRequest.f13330l) && i.a(this.f13327i, imageRequest.f13327i) && i.a(this.f13328j, imageRequest.f13328j) && i.a(this.f13331m, imageRequest.f13331m) && i.a(this.f13332n, imageRequest.f13332n) && i.a(Integer.valueOf(this.f13333o), Integer.valueOf(imageRequest.f13333o)) && i.a(this.f13336r, imageRequest.f13336r) && i.a(this.f13339u, imageRequest.f13339u) && i.a(this.f13329k, imageRequest.f13329k) && this.f13326h == imageRequest.f13326h) {
                d dVar = this.f13337s;
                com.facebook.cache.common.c a10 = dVar != null ? dVar.a() : null;
                d dVar2 = imageRequest.f13337s;
                return i.a(a10, dVar2 != null ? dVar2.a() : null) && this.f13340v == imageRequest.f13340v;
            }
            return false;
        }
        return false;
    }

    public CacheChoice f() {
        return this.f13320b;
    }

    public int g() {
        return this.f13333o;
    }

    public int h() {
        return this.f13340v;
    }

    public int hashCode() {
        boolean z9 = f13317x;
        int i4 = z9 ? this.f13319a : 0;
        if (i4 == 0) {
            d dVar = this.f13337s;
            i4 = i.c(this.f13320b, this.f13321c, Boolean.valueOf(this.f13325g), this.f13330l, this.f13331m, this.f13332n, Integer.valueOf(this.f13333o), Boolean.valueOf(this.f13334p), Boolean.valueOf(this.f13335q), this.f13327i, this.f13336r, this.f13328j, this.f13329k, dVar != null ? dVar.a() : null, this.f13339u, Integer.valueOf(this.f13340v), Boolean.valueOf(this.f13326h));
            if (z9) {
                this.f13319a = i4;
            }
        }
        return i4;
    }

    public com.facebook.imagepipeline.common.b i() {
        return this.f13327i;
    }

    public boolean j() {
        return this.f13326h;
    }

    public boolean k() {
        return this.f13325g;
    }

    public RequestLevel l() {
        return this.f13332n;
    }

    @h
    public d m() {
        return this.f13337s;
    }

    public int n() {
        com.facebook.imagepipeline.common.d dVar = this.f13328j;
        if (dVar != null) {
            return dVar.f12200b;
        }
        return 2048;
    }

    public int o() {
        com.facebook.imagepipeline.common.d dVar = this.f13328j;
        if (dVar != null) {
            return dVar.f12199a;
        }
        return 2048;
    }

    public Priority p() {
        return this.f13331m;
    }

    public boolean q() {
        return this.f13324f;
    }

    @h
    public q1.f r() {
        return this.f13338t;
    }

    @h
    public com.facebook.imagepipeline.common.d s() {
        return this.f13328j;
    }

    @h
    public Boolean t() {
        return this.f13339u;
    }

    public String toString() {
        return i.e(this).f("uri", this.f13321c).f("cacheChoice", this.f13320b).f("decodeOptions", this.f13327i).f("postprocessor", this.f13337s).f(t.b.f83857b, this.f13331m).f("resizeOptions", this.f13328j).f("rotationOptions", this.f13329k).f("bytesRange", this.f13330l).f("resizingAllowedOverride", this.f13339u).g("progressiveRenderingEnabled", this.f13324f).g("localThumbnailPreviewsEnabled", this.f13325g).g("loadThumbnailOnly", this.f13326h).f("lowestPermittedRequestLevel", this.f13332n).d("cachesDisabled", this.f13333o).g("isDiskCacheEnabled", this.f13334p).g("isMemoryCacheEnabled", this.f13335q).f("decodePrefetches", this.f13336r).d("delayMs", this.f13340v).toString();
    }

    public com.facebook.imagepipeline.common.e u() {
        return this.f13329k;
    }

    public synchronized File v() {
        if (this.f13323e == null) {
            this.f13323e = new File(this.f13321c.getPath());
        }
        return this.f13323e;
    }

    public Uri w() {
        return this.f13321c;
    }

    public int x() {
        return this.f13322d;
    }

    public boolean z(int cacheMask) {
        return (cacheMask & g()) == 0;
    }
}
