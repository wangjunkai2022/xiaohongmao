package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.model.n;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ResourceCacheGenerator.java */
/* loaded from: classes.dex */
public class v implements f, d.a<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f8984a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f8985b;

    /* renamed from: c  reason: collision with root package name */
    private int f8986c;

    /* renamed from: d  reason: collision with root package name */
    private int f8987d = -1;

    /* renamed from: e  reason: collision with root package name */
    private com.bumptech.glide.load.c f8988e;

    /* renamed from: f  reason: collision with root package name */
    private List<com.bumptech.glide.load.model.n<File, ?>> f8989f;

    /* renamed from: g  reason: collision with root package name */
    private int f8990g;

    /* renamed from: h  reason: collision with root package name */
    private volatile n.a<?> f8991h;

    /* renamed from: i  reason: collision with root package name */
    private File f8992i;

    /* renamed from: j  reason: collision with root package name */
    private w f8993j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(g<?> gVar, f.a aVar) {
        this.f8985b = gVar;
        this.f8984a = aVar;
    }

    private boolean a() {
        return this.f8990g < this.f8989f.size();
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean b() {
        com.bumptech.glide.util.pool.b.a("ResourceCacheGenerator.startNext");
        try {
            List<com.bumptech.glide.load.c> c10 = this.f8985b.c();
            boolean z9 = false;
            if (c10.isEmpty()) {
                return false;
            }
            List<Class<?>> m9 = this.f8985b.m();
            if (m9.isEmpty()) {
                if (File.class.equals(this.f8985b.r())) {
                    return false;
                }
                throw new IllegalStateException("Failed to find any load path from " + this.f8985b.i() + " to " + this.f8985b.r());
            }
            while (true) {
                if (this.f8989f != null && a()) {
                    this.f8991h = null;
                    while (!z9 && a()) {
                        List<com.bumptech.glide.load.model.n<File, ?>> list = this.f8989f;
                        int i4 = this.f8990g;
                        this.f8990g = i4 + 1;
                        this.f8991h = list.get(i4).b(this.f8992i, this.f8985b.t(), this.f8985b.f(), this.f8985b.k());
                        if (this.f8991h != null && this.f8985b.u(this.f8991h.f9079c.a())) {
                            this.f8991h.f9079c.d(this.f8985b.l(), this);
                            z9 = true;
                        }
                    }
                    return z9;
                }
                int i10 = this.f8987d + 1;
                this.f8987d = i10;
                if (i10 >= m9.size()) {
                    int i11 = this.f8986c + 1;
                    this.f8986c = i11;
                    if (i11 >= c10.size()) {
                        return false;
                    }
                    this.f8987d = 0;
                }
                com.bumptech.glide.load.c cVar = c10.get(this.f8986c);
                Class<?> cls = m9.get(this.f8987d);
                this.f8993j = new w(this.f8985b.b(), cVar, this.f8985b.p(), this.f8985b.t(), this.f8985b.f(), this.f8985b.s(cls), cls, this.f8985b.k());
                File b10 = this.f8985b.d().b(this.f8993j);
                this.f8992i = b10;
                if (b10 != null) {
                    this.f8988e = cVar;
                    this.f8989f = this.f8985b.j(b10);
                    this.f8990g = 0;
                }
            }
        } finally {
            com.bumptech.glide.util.pool.b.f();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void c(@NonNull Exception exc) {
        this.f8984a.a(this.f8993j, exc, this.f8991h.f9079c, DataSource.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        n.a<?> aVar = this.f8991h;
        if (aVar != null) {
            aVar.f9079c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void e(Object obj) {
        this.f8984a.e(this.f8988e, obj, this.f8991h.f9079c, DataSource.RESOURCE_DISK_CACHE, this.f8993j);
    }
}
