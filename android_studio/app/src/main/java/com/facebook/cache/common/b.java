package com.facebook.cache.common;

import com.facebook.cache.common.CacheEventListener;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;

/* compiled from: CacheEvent.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface b {
    @r7.h
    String a();

    long b();

    long c();

    @r7.h
    c d();

    @r7.h
    CacheEventListener.EvictionReason e();

    long f();

    @r7.h
    IOException getException();
}
