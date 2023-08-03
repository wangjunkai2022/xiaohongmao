package com.facebook.cache.disk;

import com.facebook.cache.common.CacheEventListener;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import v1.u;

/* compiled from: SettableCacheEvent.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class k implements com.facebook.cache.common.b {

    /* renamed from: i  reason: collision with root package name */
    private static final Object f10939i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private static final int f10940j = 5;
    @r7.h

    /* renamed from: k  reason: collision with root package name */
    private static k f10941k;

    /* renamed from: l  reason: collision with root package name */
    private static int f10942l;
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private com.facebook.cache.common.c f10943a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private String f10944b;

    /* renamed from: c  reason: collision with root package name */
    private long f10945c;

    /* renamed from: d  reason: collision with root package name */
    private long f10946d;

    /* renamed from: e  reason: collision with root package name */
    private long f10947e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private IOException f10948f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private CacheEventListener.EvictionReason f10949g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private k f10950h;

    private k() {
    }

    @u
    public static k g() {
        synchronized (f10939i) {
            k kVar = f10941k;
            if (kVar != null) {
                f10941k = kVar.f10950h;
                kVar.f10950h = null;
                f10942l--;
                return kVar;
            }
            return new k();
        }
    }

    private void i() {
        this.f10943a = null;
        this.f10944b = null;
        this.f10945c = 0L;
        this.f10946d = 0L;
        this.f10947e = 0L;
        this.f10948f = null;
        this.f10949g = null;
    }

    @Override // com.facebook.cache.common.b
    @r7.h
    public String a() {
        return this.f10944b;
    }

    @Override // com.facebook.cache.common.b
    public long b() {
        return this.f10947e;
    }

    @Override // com.facebook.cache.common.b
    public long c() {
        return this.f10946d;
    }

    @Override // com.facebook.cache.common.b
    @r7.h
    public com.facebook.cache.common.c d() {
        return this.f10943a;
    }

    @Override // com.facebook.cache.common.b
    @r7.h
    public CacheEventListener.EvictionReason e() {
        return this.f10949g;
    }

    @Override // com.facebook.cache.common.b
    public long f() {
        return this.f10945c;
    }

    @Override // com.facebook.cache.common.b
    @r7.h
    public IOException getException() {
        return this.f10948f;
    }

    public void h() {
        synchronized (f10939i) {
            if (f10942l < 5) {
                i();
                f10942l++;
                k kVar = f10941k;
                if (kVar != null) {
                    this.f10950h = kVar;
                }
                f10941k = this;
            }
        }
    }

    public k j(com.facebook.cache.common.c cacheKey) {
        this.f10943a = cacheKey;
        return this;
    }

    public k k(long cacheLimit) {
        this.f10946d = cacheLimit;
        return this;
    }

    public k l(long cacheSize) {
        this.f10947e = cacheSize;
        return this;
    }

    public k m(CacheEventListener.EvictionReason evictionReason) {
        this.f10949g = evictionReason;
        return this;
    }

    public k n(IOException exception) {
        this.f10948f = exception;
        return this;
    }

    public k o(long itemSize) {
        this.f10945c = itemSize;
        return this;
    }

    public k p(String resourceId) {
        this.f10944b = resourceId;
        return this;
    }
}
