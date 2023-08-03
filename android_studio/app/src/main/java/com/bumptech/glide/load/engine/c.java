package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.model.n;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataCacheGenerator.java */
/* loaded from: classes.dex */
public class c implements f, d.a<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.bumptech.glide.load.c> f8683a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f8684b;

    /* renamed from: c  reason: collision with root package name */
    private final f.a f8685c;

    /* renamed from: d  reason: collision with root package name */
    private int f8686d;

    /* renamed from: e  reason: collision with root package name */
    private com.bumptech.glide.load.c f8687e;

    /* renamed from: f  reason: collision with root package name */
    private List<com.bumptech.glide.load.model.n<File, ?>> f8688f;

    /* renamed from: g  reason: collision with root package name */
    private int f8689g;

    /* renamed from: h  reason: collision with root package name */
    private volatile n.a<?> f8690h;

    /* renamed from: i  reason: collision with root package name */
    private File f8691i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(g<?> gVar, f.a aVar) {
        this(gVar.c(), gVar, aVar);
    }

    private boolean a() {
        return this.f8689g < this.f8688f.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        if (a() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        r0 = r7.f8688f;
        r3 = r7.f8689g;
        r7.f8689g = r3 + 1;
        r7.f8690h = r0.get(r3).b(r7.f8691i, r7.f8684b.t(), r7.f8684b.f(), r7.f8684b.k());
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
        if (r7.f8690h == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        if (r7.f8684b.u(r7.f8690h.f9079c.a()) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        r7.f8690h.f9079c.d(r7.f8684b.l(), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0066, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
        r7.f8690h = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        if (r1 != false) goto L30;
     */
    @Override // com.bumptech.glide.load.engine.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b() {
        /*
            r7 = this;
            java.lang.String r0 = "DataCacheGenerator.startNext"
            com.bumptech.glide.util.pool.b.a(r0)
        L5:
            java.util.List<com.bumptech.glide.load.model.n<java.io.File, ?>> r0 = r7.f8688f     // Catch: java.lang.Throwable -> Lae
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L6c
            boolean r0 = r7.a()     // Catch: java.lang.Throwable -> Lae
            if (r0 != 0) goto L12
            goto L6c
        L12:
            r0 = 0
            r7.f8690h = r0     // Catch: java.lang.Throwable -> Lae
        L15:
            if (r1 != 0) goto L68
            boolean r0 = r7.a()     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto L68
            java.util.List<com.bumptech.glide.load.model.n<java.io.File, ?>> r0 = r7.f8688f     // Catch: java.lang.Throwable -> Lae
            int r3 = r7.f8689g     // Catch: java.lang.Throwable -> Lae
            int r4 = r3 + 1
            r7.f8689g = r4     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r0 = r0.get(r3)     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.model.n r0 = (com.bumptech.glide.load.model.n) r0     // Catch: java.lang.Throwable -> Lae
            java.io.File r3 = r7.f8691i     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r4 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            int r4 = r4.t()     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r5 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            int r5 = r5.f()     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r6 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.f r6 = r6.k()     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.model.n$a r0 = r0.b(r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Lae
            r7.f8690h = r0     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.model.n$a<?> r0 = r7.f8690h     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto L15
            com.bumptech.glide.load.engine.g<?> r0 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.model.n$a<?> r3 = r7.f8690h     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.data.d<Data> r3 = r3.f9079c     // Catch: java.lang.Throwable -> Lae
            java.lang.Class r3 = r3.a()     // Catch: java.lang.Throwable -> Lae
            boolean r0 = r0.u(r3)     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto L15
            com.bumptech.glide.load.model.n$a<?> r0 = r7.f8690h     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.data.d<Data> r0 = r0.f9079c     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r1 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.Priority r1 = r1.l()     // Catch: java.lang.Throwable -> Lae
            r0.d(r1, r7)     // Catch: java.lang.Throwable -> Lae
            r1 = 1
            goto L15
        L68:
            com.bumptech.glide.util.pool.b.f()
            return r1
        L6c:
            int r0 = r7.f8686d     // Catch: java.lang.Throwable -> Lae
            int r0 = r0 + r2
            r7.f8686d = r0     // Catch: java.lang.Throwable -> Lae
            java.util.List<com.bumptech.glide.load.c> r2 = r7.f8683a     // Catch: java.lang.Throwable -> Lae
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lae
            if (r0 < r2) goto L7d
            com.bumptech.glide.util.pool.b.f()
            return r1
        L7d:
            java.util.List<com.bumptech.glide.load.c> r0 = r7.f8683a     // Catch: java.lang.Throwable -> Lae
            int r2 = r7.f8686d     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.c r0 = (com.bumptech.glide.load.c) r0     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.d r2 = new com.bumptech.glide.load.engine.d     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r3 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.c r3 = r3.p()     // Catch: java.lang.Throwable -> Lae
            r2.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r3 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.cache.a r3 = r3.d()     // Catch: java.lang.Throwable -> Lae
            java.io.File r2 = r3.b(r2)     // Catch: java.lang.Throwable -> Lae
            r7.f8691i = r2     // Catch: java.lang.Throwable -> Lae
            if (r2 == 0) goto L5
            r7.f8687e = r0     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r0 = r7.f8684b     // Catch: java.lang.Throwable -> Lae
            java.util.List r0 = r0.j(r2)     // Catch: java.lang.Throwable -> Lae
            r7.f8688f = r0     // Catch: java.lang.Throwable -> Lae
            r7.f8689g = r1     // Catch: java.lang.Throwable -> Lae
            goto L5
        Lae:
            r0 = move-exception
            com.bumptech.glide.util.pool.b.f()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.c.b():boolean");
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void c(@NonNull Exception exc) {
        this.f8685c.a(this.f8687e, exc, this.f8690h.f9079c, DataSource.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        n.a<?> aVar = this.f8690h;
        if (aVar != null) {
            aVar.f9079c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void e(Object obj) {
        this.f8685c.e(this.f8687e, obj, this.f8690h.f9079c, DataSource.DATA_DISK_CACHE, this.f8687e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(List<com.bumptech.glide.load.c> list, g<?> gVar, f.a aVar) {
        this.f8686d = -1;
        this.f8683a = list;
        this.f8684b = gVar;
        this.f8685c = aVar;
    }
}
