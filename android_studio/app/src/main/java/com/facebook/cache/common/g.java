package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;

/* compiled from: MultiCacheKey.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g implements c {

    /* renamed from: a  reason: collision with root package name */
    final List<c> f10833a;

    public g(List<c> cacheKeys) {
        this.f10833a = (List) com.facebook.common.internal.j.i(cacheKeys);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f10833a.get(0).a();
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        for (int i4 = 0; i4 < this.f10833a.size(); i4++) {
            if (this.f10833a.get(i4).b(uri)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public boolean c() {
        return false;
    }

    public List<c> d() {
        return this.f10833a;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@r7.h Object o9) {
        if (o9 == this) {
            return true;
        }
        if (o9 instanceof g) {
            return this.f10833a.equals(((g) o9).f10833a);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f10833a.hashCode();
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return "MultiCacheKey:" + this.f10833a.toString();
    }
}
