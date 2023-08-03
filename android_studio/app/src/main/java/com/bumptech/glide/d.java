package com.bumptech.glide;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.c;
import com.bumptech.glide.f;
import com.bumptech.glide.load.engine.cache.a;
import com.bumptech.glide.load.engine.cache.l;
import com.bumptech.glide.manager.o;
import com.bumptech.glide.util.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: GlideBuilder.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.load.engine.k f7150c;

    /* renamed from: d  reason: collision with root package name */
    private com.bumptech.glide.load.engine.bitmap_recycle.e f7151d;

    /* renamed from: e  reason: collision with root package name */
    private com.bumptech.glide.load.engine.bitmap_recycle.b f7152e;

    /* renamed from: f  reason: collision with root package name */
    private com.bumptech.glide.load.engine.cache.j f7153f;

    /* renamed from: g  reason: collision with root package name */
    private com.bumptech.glide.load.engine.executor.a f7154g;

    /* renamed from: h  reason: collision with root package name */
    private com.bumptech.glide.load.engine.executor.a f7155h;

    /* renamed from: i  reason: collision with root package name */
    private a.InterfaceC0048a f7156i;

    /* renamed from: j  reason: collision with root package name */
    private com.bumptech.glide.load.engine.cache.l f7157j;

    /* renamed from: k  reason: collision with root package name */
    private com.bumptech.glide.manager.d f7158k;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private o.b f7161n;

    /* renamed from: o  reason: collision with root package name */
    private com.bumptech.glide.load.engine.executor.a f7162o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f7163p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private List<com.bumptech.glide.request.g<Object>> f7164q;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, l<?, ?>> f7148a = new ArrayMap();

    /* renamed from: b  reason: collision with root package name */
    private final f.a f7149b = new f.a();

    /* renamed from: l  reason: collision with root package name */
    private int f7159l = 4;

    /* renamed from: m  reason: collision with root package name */
    private c.a f7160m = new a();

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    class a implements c.a {
        a() {
        }

        @Override // com.bumptech.glide.c.a
        @NonNull
        public com.bumptech.glide.request.h build() {
            return new com.bumptech.glide.request.h();
        }
    }

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    class b implements c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.bumptech.glide.request.h f7166a;

        b(com.bumptech.glide.request.h hVar) {
            this.f7166a = hVar;
        }

        @Override // com.bumptech.glide.c.a
        @NonNull
        public com.bumptech.glide.request.h build() {
            com.bumptech.glide.request.h hVar = this.f7166a;
            return hVar != null ? hVar : new com.bumptech.glide.request.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    public static final class c implements f.b {
        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GlideBuilder.java */
    /* renamed from: com.bumptech.glide.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0040d implements f.b {
        C0040d() {
        }
    }

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    public static final class e implements f.b {
    }

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    static final class f implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final int f7168a;

        f(int i4) {
            this.f7168a = i4;
        }
    }

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    public static final class g implements f.b {
        private g() {
        }
    }

    @NonNull
    public d a(@NonNull com.bumptech.glide.request.g<Object> gVar) {
        if (this.f7164q == null) {
            this.f7164q = new ArrayList();
        }
        this.f7164q.add(gVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public com.bumptech.glide.c b(@NonNull Context context) {
        if (this.f7154g == null) {
            this.f7154g = com.bumptech.glide.load.engine.executor.a.j();
        }
        if (this.f7155h == null) {
            this.f7155h = com.bumptech.glide.load.engine.executor.a.f();
        }
        if (this.f7162o == null) {
            this.f7162o = com.bumptech.glide.load.engine.executor.a.c();
        }
        if (this.f7157j == null) {
            this.f7157j = new l.a(context).a();
        }
        if (this.f7158k == null) {
            this.f7158k = new com.bumptech.glide.manager.f();
        }
        if (this.f7151d == null) {
            int b10 = this.f7157j.b();
            if (b10 > 0) {
                this.f7151d = new com.bumptech.glide.load.engine.bitmap_recycle.k(b10);
            } else {
                this.f7151d = new com.bumptech.glide.load.engine.bitmap_recycle.f();
            }
        }
        if (this.f7152e == null) {
            this.f7152e = new com.bumptech.glide.load.engine.bitmap_recycle.j(this.f7157j.a());
        }
        if (this.f7153f == null) {
            this.f7153f = new com.bumptech.glide.load.engine.cache.i(this.f7157j.d());
        }
        if (this.f7156i == null) {
            this.f7156i = new com.bumptech.glide.load.engine.cache.h(context);
        }
        if (this.f7150c == null) {
            this.f7150c = new com.bumptech.glide.load.engine.k(this.f7153f, this.f7156i, this.f7155h, this.f7154g, com.bumptech.glide.load.engine.executor.a.n(), this.f7162o, this.f7163p);
        }
        List<com.bumptech.glide.request.g<Object>> list = this.f7164q;
        if (list == null) {
            this.f7164q = Collections.emptyList();
        } else {
            this.f7164q = Collections.unmodifiableList(list);
        }
        com.bumptech.glide.f c10 = this.f7149b.c();
        return new com.bumptech.glide.c(context, this.f7150c, this.f7153f, this.f7151d, this.f7152e, new o(this.f7161n, c10), this.f7158k, this.f7159l, this.f7160m, this.f7148a, this.f7164q, c10);
    }

    @NonNull
    public d c(@Nullable com.bumptech.glide.load.engine.executor.a aVar) {
        this.f7162o = aVar;
        return this;
    }

    @NonNull
    public d d(@Nullable com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f7152e = bVar;
        return this;
    }

    @NonNull
    public d e(@Nullable com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this.f7151d = eVar;
        return this;
    }

    @NonNull
    public d f(@Nullable com.bumptech.glide.manager.d dVar) {
        this.f7158k = dVar;
        return this;
    }

    @NonNull
    public d g(@NonNull c.a aVar) {
        this.f7160m = (c.a) m.d(aVar);
        return this;
    }

    @NonNull
    public d h(@Nullable com.bumptech.glide.request.h hVar) {
        return g(new b(hVar));
    }

    @NonNull
    public <T> d i(@NonNull Class<T> cls, @Nullable l<?, T> lVar) {
        this.f7148a.put(cls, lVar);
        return this;
    }

    @NonNull
    public d j(@Nullable a.InterfaceC0048a interfaceC0048a) {
        this.f7156i = interfaceC0048a;
        return this;
    }

    @NonNull
    public d k(@Nullable com.bumptech.glide.load.engine.executor.a aVar) {
        this.f7155h = aVar;
        return this;
    }

    public d l(boolean z9) {
        this.f7149b.d(new c(), z9);
        return this;
    }

    d m(com.bumptech.glide.load.engine.k kVar) {
        this.f7150c = kVar;
        return this;
    }

    public d n(boolean z9) {
        this.f7149b.d(new C0040d(), z9 && Build.VERSION.SDK_INT >= 29);
        return this;
    }

    @NonNull
    public d o(boolean z9) {
        this.f7163p = z9;
        return this;
    }

    @NonNull
    public d p(int i4) {
        if (i4 >= 2 && i4 <= 6) {
            this.f7159l = i4;
            return this;
        }
        throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
    }

    public d q(boolean z9) {
        this.f7149b.d(new e(), z9);
        return this;
    }

    @NonNull
    public d r(@Nullable com.bumptech.glide.load.engine.cache.j jVar) {
        this.f7153f = jVar;
        return this;
    }

    @NonNull
    public d s(@NonNull l.a aVar) {
        return t(aVar.a());
    }

    @NonNull
    public d t(@Nullable com.bumptech.glide.load.engine.cache.l lVar) {
        this.f7157j = lVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(@Nullable o.b bVar) {
        this.f7161n = bVar;
    }

    @Deprecated
    public d v(@Nullable com.bumptech.glide.load.engine.executor.a aVar) {
        return w(aVar);
    }

    @NonNull
    public d w(@Nullable com.bumptech.glide.load.engine.executor.a aVar) {
        this.f7154g = aVar;
        return this;
    }
}
