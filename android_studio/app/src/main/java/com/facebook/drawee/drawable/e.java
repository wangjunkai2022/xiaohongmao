package com.facebook.drawee.drawable;

import android.annotation.SuppressLint;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DrawableProperties.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e {

    /* renamed from: f  reason: collision with root package name */
    private static final int f11449f = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f11450a = -1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11451b = false;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private ColorFilter f11452c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f11453d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f11454e = -1;

    @SuppressLint({com.google.common.net.b.G})
    public void a(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        int i4 = this.f11450a;
        if (i4 != -1) {
            drawable.setAlpha(i4);
        }
        if (this.f11451b) {
            drawable.setColorFilter(this.f11452c);
        }
        int i10 = this.f11453d;
        if (i10 != -1) {
            drawable.setDither(i10 != 0);
        }
        int i11 = this.f11454e;
        if (i11 != -1) {
            drawable.setFilterBitmap(i11 != 0);
        }
    }

    public void b(int alpha) {
        this.f11450a = alpha;
    }

    public void c(@r7.h ColorFilter colorFilter) {
        this.f11452c = colorFilter;
        this.f11451b = colorFilter != null;
    }

    public void d(boolean dither) {
        this.f11453d = dither ? 1 : 0;
    }

    public void e(boolean filterBitmap) {
        this.f11454e = filterBitmap ? 1 : 0;
    }
}
