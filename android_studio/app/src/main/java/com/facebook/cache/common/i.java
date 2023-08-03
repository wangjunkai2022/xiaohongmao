package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NoOpCacheEventListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class i implements CacheEventListener {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private static i f10835a;

    private i() {
    }

    public static synchronized i i() {
        i iVar;
        synchronized (i.class) {
            if (f10835a == null) {
                f10835a = new i();
            }
            iVar = f10835a;
        }
        return iVar;
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void a() {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void b(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void c(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void d(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void e(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void f(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void g(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void h(b cacheEvent) {
    }
}
