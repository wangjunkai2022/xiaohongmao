package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SimpleCacheKey.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class j implements c {

    /* renamed from: a  reason: collision with root package name */
    final String f10836a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f10837b;

    public j(final String key) {
        this(key, false);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f10836a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        return this.f10836a.contains(uri.toString());
    }

    @Override // com.facebook.cache.common.c
    public boolean c() {
        return this.f10837b;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@r7.h Object o9) {
        if (o9 == this) {
            return true;
        }
        if (o9 instanceof j) {
            return this.f10836a.equals(((j) o9).f10836a);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f10836a.hashCode();
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return this.f10836a;
    }

    public j(final String key, boolean isResourceIdForDebugging) {
        this.f10836a = (String) com.facebook.common.internal.j.i(key);
        this.f10837b = isResourceIdForDebugging;
    }
}
