package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.model.n;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SourceGenerator.java */
/* loaded from: classes.dex */
public class y implements f, f.a {

    /* renamed from: h  reason: collision with root package name */
    private static final String f9006h = "SourceGenerator";

    /* renamed from: a  reason: collision with root package name */
    private final g<?> f9007a;

    /* renamed from: b  reason: collision with root package name */
    private final f.a f9008b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f9009c;

    /* renamed from: d  reason: collision with root package name */
    private volatile c f9010d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f9011e;

    /* renamed from: f  reason: collision with root package name */
    private volatile n.a<?> f9012f;

    /* renamed from: g  reason: collision with root package name */
    private volatile d f9013g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SourceGenerator.java */
    /* loaded from: classes.dex */
    public class a implements d.a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n.a f9014a;

        a(n.a aVar) {
            this.f9014a = aVar;
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void c(@NonNull Exception exc) {
            if (y.this.g(this.f9014a)) {
                y.this.i(this.f9014a, exc);
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void e(@Nullable Object obj) {
            if (y.this.g(this.f9014a)) {
                y.this.h(this.f9014a, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(g<?> gVar, f.a aVar) {
        this.f9007a = gVar;
        this.f9008b = aVar;
    }

    private boolean d(Object obj) throws IOException {
        long b10 = com.bumptech.glide.util.i.b();
        boolean z9 = true;
        try {
            com.bumptech.glide.load.data.e<T> o9 = this.f9007a.o(obj);
            Object a10 = o9.a();
            com.bumptech.glide.load.a<X> q9 = this.f9007a.q(a10);
            e eVar = new e(q9, a10, this.f9007a.k());
            d dVar = new d(this.f9012f.f9077a, this.f9007a.p());
            com.bumptech.glide.load.engine.cache.a d4 = this.f9007a.d();
            d4.a(dVar, eVar);
            if (Log.isLoggable(f9006h, 2)) {
                Log.v(f9006h, "Finished encoding source to cache, key: " + dVar + ", data: " + obj + ", encoder: " + q9 + ", duration: " + com.bumptech.glide.util.i.a(b10));
            }
            if (d4.b(dVar) != null) {
                this.f9013g = dVar;
                this.f9010d = new c(Collections.singletonList(this.f9012f.f9077a), this.f9007a, this);
                this.f9012f.f9079c.b();
                return true;
            }
            if (Log.isLoggable(f9006h, 3)) {
                Log.d(f9006h, "Attempt to write: " + this.f9013g + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f9008b.e(this.f9012f.f9077a, o9.a(), this.f9012f.f9079c, this.f9012f.f9079c.getDataSource(), this.f9012f.f9077a);
                return false;
            } catch (Throwable th) {
                th = th;
                if (!z9) {
                    this.f9012f.f9079c.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z9 = false;
        }
    }

    private boolean f() {
        return this.f9009c < this.f9007a.g().size();
    }

    private void j(n.a<?> aVar) {
        this.f9012f.f9079c.d(this.f9007a.l(), new a(aVar));
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void a(com.bumptech.glide.load.c cVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource) {
        this.f9008b.a(cVar, exc, dVar, this.f9012f.f9079c.getDataSource());
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean b() {
        if (this.f9011e != null) {
            Object obj = this.f9011e;
            this.f9011e = null;
            try {
                if (!d(obj)) {
                    return true;
                }
            } catch (IOException e4) {
                if (Log.isLoggable(f9006h, 3)) {
                    Log.d(f9006h, "Failed to properly rewind or write data to cache", e4);
                }
            }
        }
        if (this.f9010d == null || !this.f9010d.b()) {
            this.f9010d = null;
            this.f9012f = null;
            boolean z9 = false;
            while (!z9 && f()) {
                List<n.a<?>> g4 = this.f9007a.g();
                int i4 = this.f9009c;
                this.f9009c = i4 + 1;
                this.f9012f = g4.get(i4);
                if (this.f9012f != null && (this.f9007a.e().c(this.f9012f.f9079c.getDataSource()) || this.f9007a.u(this.f9012f.f9079c.a()))) {
                    j(this.f9012f);
                    z9 = true;
                }
            }
            return z9;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void c() {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        n.a<?> aVar = this.f9012f;
        if (aVar != null) {
            aVar.f9079c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void e(com.bumptech.glide.load.c cVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource, com.bumptech.glide.load.c cVar2) {
        this.f9008b.e(cVar, obj, dVar, this.f9012f.f9079c.getDataSource(), cVar);
    }

    boolean g(n.a<?> aVar) {
        n.a<?> aVar2 = this.f9012f;
        return aVar2 != null && aVar2 == aVar;
    }

    void h(n.a<?> aVar, Object obj) {
        j e4 = this.f9007a.e();
        if (obj != null && e4.c(aVar.f9079c.getDataSource())) {
            this.f9011e = obj;
            this.f9008b.c();
            return;
        }
        f.a aVar2 = this.f9008b;
        com.bumptech.glide.load.c cVar = aVar.f9077a;
        com.bumptech.glide.load.data.d<?> dVar = aVar.f9079c;
        aVar2.e(cVar, obj, dVar, dVar.getDataSource(), this.f9013g);
    }

    void i(n.a<?> aVar, @NonNull Exception exc) {
        f.a aVar2 = this.f9008b;
        d dVar = this.f9013g;
        com.bumptech.glide.load.data.d<?> dVar2 = aVar.f9079c;
        aVar2.a(dVar, exc, dVar2, dVar2.getDataSource());
    }
}
