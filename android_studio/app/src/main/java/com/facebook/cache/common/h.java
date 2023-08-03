package com.facebook.cache.common;

import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NoOpCacheErrorLogger.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h implements CacheErrorLogger {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private static h f10834a;

    private h() {
    }

    public static synchronized h b() {
        h hVar;
        synchronized (h.class) {
            if (f10834a == null) {
                f10834a = new h();
            }
            hVar = f10834a;
        }
        return hVar;
    }

    @Override // com.facebook.cache.common.CacheErrorLogger
    public void a(CacheErrorLogger.CacheErrorCategory category, Class<?> clazz, String message, @r7.h Throwable throwable) {
    }
}
