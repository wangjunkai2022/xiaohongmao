package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: DataCacheKey.java */
/* loaded from: classes.dex */
final class d implements com.bumptech.glide.load.c {

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.c f8748c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bumptech.glide.load.c f8749d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(com.bumptech.glide.load.c cVar, com.bumptech.glide.load.c cVar2) {
        this.f8748c = cVar;
        this.f8749d = cVar2;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        this.f8748c.b(messageDigest);
        this.f8749d.b(messageDigest);
    }

    com.bumptech.glide.load.c c() {
        return this.f8748c;
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f8748c.equals(dVar.f8748c) && this.f8749d.equals(dVar.f8749d);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return (this.f8748c.hashCode() * 31) + this.f8749d.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f8748c + ", signature=" + this.f8749d + '}';
    }
}
