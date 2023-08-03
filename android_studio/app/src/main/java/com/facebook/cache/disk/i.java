package com.facebook.cache.disk;

import com.facebook.cache.disk.d;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;

/* compiled from: FileCache.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface i extends m0.a {
    void a();

    d.a b() throws IOException;

    boolean c(com.facebook.cache.common.c key);

    @r7.h
    k0.a d(com.facebook.cache.common.c key);

    long f(long cacheExpirationMs);

    boolean g(com.facebook.cache.common.c key);

    long getCount();

    long getSize();

    void i(com.facebook.cache.common.c key);

    boolean isEnabled();

    boolean j(com.facebook.cache.common.c key);

    @r7.h
    k0.a k(com.facebook.cache.common.c key, com.facebook.cache.common.k writer) throws IOException;
}
