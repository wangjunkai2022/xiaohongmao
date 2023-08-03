package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey.java */
/* loaded from: classes.dex */
final class w implements com.bumptech.glide.load.c {

    /* renamed from: k  reason: collision with root package name */
    private static final com.bumptech.glide.util.j<Class<?>, byte[]> f8994k = new com.bumptech.glide.util.j<>(50);

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f8995c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bumptech.glide.load.c f8996d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.c f8997e;

    /* renamed from: f  reason: collision with root package name */
    private final int f8998f;

    /* renamed from: g  reason: collision with root package name */
    private final int f8999g;

    /* renamed from: h  reason: collision with root package name */
    private final Class<?> f9000h;

    /* renamed from: i  reason: collision with root package name */
    private final com.bumptech.glide.load.f f9001i;

    /* renamed from: j  reason: collision with root package name */
    private final com.bumptech.glide.load.i<?> f9002j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(com.bumptech.glide.load.engine.bitmap_recycle.b bVar, com.bumptech.glide.load.c cVar, com.bumptech.glide.load.c cVar2, int i4, int i10, com.bumptech.glide.load.i<?> iVar, Class<?> cls, com.bumptech.glide.load.f fVar) {
        this.f8995c = bVar;
        this.f8996d = cVar;
        this.f8997e = cVar2;
        this.f8998f = i4;
        this.f8999g = i10;
        this.f9002j = iVar;
        this.f9000h = cls;
        this.f9001i = fVar;
    }

    private byte[] c() {
        com.bumptech.glide.util.j<Class<?>, byte[]> jVar = f8994k;
        byte[] i4 = jVar.i(this.f9000h);
        if (i4 == null) {
            byte[] bytes = this.f9000h.getName().getBytes(com.bumptech.glide.load.c.f8527b);
            jVar.m(this.f9000h, bytes);
            return bytes;
        }
        return i4;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f8995c.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f8998f).putInt(this.f8999g).array();
        this.f8997e.b(messageDigest);
        this.f8996d.b(messageDigest);
        messageDigest.update(bArr);
        com.bumptech.glide.load.i<?> iVar = this.f9002j;
        if (iVar != null) {
            iVar.b(messageDigest);
        }
        this.f9001i.b(messageDigest);
        messageDigest.update(c());
        this.f8995c.put(bArr);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof w) {
            w wVar = (w) obj;
            return this.f8999g == wVar.f8999g && this.f8998f == wVar.f8998f && com.bumptech.glide.util.o.d(this.f9002j, wVar.f9002j) && this.f9000h.equals(wVar.f9000h) && this.f8996d.equals(wVar.f8996d) && this.f8997e.equals(wVar.f8997e) && this.f9001i.equals(wVar.f9001i);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        int hashCode = (((((this.f8996d.hashCode() * 31) + this.f8997e.hashCode()) * 31) + this.f8998f) * 31) + this.f8999g;
        com.bumptech.glide.load.i<?> iVar = this.f9002j;
        if (iVar != null) {
            hashCode = (hashCode * 31) + iVar.hashCode();
        }
        return (((hashCode * 31) + this.f9000h.hashCode()) * 31) + this.f9001i.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f8996d + ", signature=" + this.f8997e + ", width=" + this.f8998f + ", height=" + this.f8999g + ", decodedResourceClass=" + this.f9000h + ", transformation='" + this.f9002j + "', options=" + this.f9001i + '}';
    }
}
