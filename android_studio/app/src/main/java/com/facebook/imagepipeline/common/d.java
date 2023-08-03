package com.facebook.imagepipeline.common;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: ResizeOptions.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d {

    /* renamed from: e  reason: collision with root package name */
    public static final float f12198e = 0.6666667f;

    /* renamed from: a  reason: collision with root package name */
    public final int f12199a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12200b;

    /* renamed from: c  reason: collision with root package name */
    public final float f12201c;

    /* renamed from: d  reason: collision with root package name */
    public final float f12202d;

    public d(int width, int height) {
        this(width, height, 2048.0f);
    }

    @h
    public static d a(int width, int height) {
        if (width <= 0 || height <= 0) {
            return null;
        }
        return new d(width, height);
    }

    @h
    public static d b(int size) {
        if (size <= 0) {
            return null;
        }
        return new d(size, size);
    }

    public boolean equals(@h Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof d) {
            d dVar = (d) other;
            return this.f12199a == dVar.f12199a && this.f12200b == dVar.f12200b;
        }
        return false;
    }

    public int hashCode() {
        return com.facebook.common.util.b.b(this.f12199a, this.f12200b);
    }

    public String toString() {
        return String.format(null, "%dx%d", Integer.valueOf(this.f12199a), Integer.valueOf(this.f12200b));
    }

    public d(int width, int height, float maxBitmapSize) {
        this(width, height, maxBitmapSize, 0.6666667f);
    }

    public d(int width, int height, float maxBitmapSize, float roundUpFraction) {
        j.d(Boolean.valueOf(width > 0));
        j.d(Boolean.valueOf(height > 0));
        this.f12199a = width;
        this.f12200b = height;
        this.f12201c = maxBitmapSize;
        this.f12202d = roundUpFraction;
    }
}
