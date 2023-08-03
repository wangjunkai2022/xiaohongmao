package com.facebook.fresco.animation.bitmap.cache;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimationFrameCacheKey.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements com.facebook.cache.common.c {

    /* renamed from: c  reason: collision with root package name */
    private static final String f11681c = "anim://";

    /* renamed from: a  reason: collision with root package name */
    private final String f11682a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11683b;

    public a(int imageId) {
        this(imageId, false);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f11682a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        return uri.toString().startsWith(this.f11682a);
    }

    @Override // com.facebook.cache.common.c
    public boolean c() {
        return false;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@h Object o9) {
        if (this.f11683b) {
            if (this == o9) {
                return true;
            }
            if (o9 == null || getClass() != o9.getClass()) {
                return false;
            }
            return this.f11682a.equals(((a) o9).f11682a);
        }
        return super.equals(o9);
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        if (!this.f11683b) {
            return super.hashCode();
        }
        return this.f11682a.hashCode();
    }

    public a(int imageId, boolean deepEquals) {
        this.f11682a = f11681c + imageId;
        this.f11683b = deepEquals;
    }
}
