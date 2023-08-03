package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey.java */
/* loaded from: classes.dex */
class n implements com.bumptech.glide.load.c {

    /* renamed from: c  reason: collision with root package name */
    private final Object f8926c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8927d;

    /* renamed from: e  reason: collision with root package name */
    private final int f8928e;

    /* renamed from: f  reason: collision with root package name */
    private final Class<?> f8929f;

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f8930g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.load.c f8931h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<Class<?>, com.bumptech.glide.load.i<?>> f8932i;

    /* renamed from: j  reason: collision with root package name */
    private final com.bumptech.glide.load.f f8933j;

    /* renamed from: k  reason: collision with root package name */
    private int f8934k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Object obj, com.bumptech.glide.load.c cVar, int i4, int i10, Map<Class<?>, com.bumptech.glide.load.i<?>> map, Class<?> cls, Class<?> cls2, com.bumptech.glide.load.f fVar) {
        this.f8926c = com.bumptech.glide.util.m.d(obj);
        this.f8931h = (com.bumptech.glide.load.c) com.bumptech.glide.util.m.e(cVar, "Signature must not be null");
        this.f8927d = i4;
        this.f8928e = i10;
        this.f8932i = (Map) com.bumptech.glide.util.m.d(map);
        this.f8929f = (Class) com.bumptech.glide.util.m.e(cls, "Resource class must not be null");
        this.f8930g = (Class) com.bumptech.glide.util.m.e(cls2, "Transcode class must not be null");
        this.f8933j = (com.bumptech.glide.load.f) com.bumptech.glide.util.m.d(fVar);
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            return this.f8926c.equals(nVar.f8926c) && this.f8931h.equals(nVar.f8931h) && this.f8928e == nVar.f8928e && this.f8927d == nVar.f8927d && this.f8932i.equals(nVar.f8932i) && this.f8929f.equals(nVar.f8929f) && this.f8930g.equals(nVar.f8930g) && this.f8933j.equals(nVar.f8933j);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        if (this.f8934k == 0) {
            int hashCode = this.f8926c.hashCode();
            this.f8934k = hashCode;
            int hashCode2 = (((((hashCode * 31) + this.f8931h.hashCode()) * 31) + this.f8927d) * 31) + this.f8928e;
            this.f8934k = hashCode2;
            int hashCode3 = (hashCode2 * 31) + this.f8932i.hashCode();
            this.f8934k = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f8929f.hashCode();
            this.f8934k = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f8930g.hashCode();
            this.f8934k = hashCode5;
            this.f8934k = (hashCode5 * 31) + this.f8933j.hashCode();
        }
        return this.f8934k;
    }

    public String toString() {
        return "EngineKey{model=" + this.f8926c + ", width=" + this.f8927d + ", height=" + this.f8928e + ", resourceClass=" + this.f8929f + ", transcodeClass=" + this.f8930g + ", signature=" + this.f8931h + ", hashCode=" + this.f8934k + ", transformations=" + this.f8932i + ", options=" + this.f8933j + '}';
    }
}
