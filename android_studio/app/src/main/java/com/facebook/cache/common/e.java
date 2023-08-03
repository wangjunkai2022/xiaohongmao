package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DebuggingCacheKey.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e extends j {
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final Object f10831c;

    /* renamed from: d  reason: collision with root package name */
    private final Uri f10832d;

    public e(String key, @r7.h Object callerContext, Uri sourceUri) {
        super(key);
        this.f10831c = callerContext;
        this.f10832d = sourceUri;
    }

    @r7.h
    public Object d() {
        return this.f10831c;
    }

    public Uri e() {
        return this.f10832d;
    }
}
