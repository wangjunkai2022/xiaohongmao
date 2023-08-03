package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface CacheEventListener {

    /* loaded from: classes.dex */
    public enum EvictionReason {
        CACHE_FULL,
        CONTENT_STALE,
        USER_FORCED,
        CACHE_MANAGER_TRIMMED
    }

    void a();

    void b(b cacheEvent);

    void c(b cacheEvent);

    void d(b cacheEvent);

    void e(b cacheEvent);

    void f(b cacheEvent);

    void g(b cacheEvent);

    void h(b cacheEvent);
}
