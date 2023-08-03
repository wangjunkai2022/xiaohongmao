package com.facebook.imageutils;

import android.graphics.ColorSpace;
import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: ImageMetaData.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final Pair<Integer, Integer> f13384a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final ColorSpace f13385b;

    public b(int width, int height, @h ColorSpace colorSpace) {
        this.f13384a = (width == -1 || height == -1) ? null : new Pair<>(Integer.valueOf(width), Integer.valueOf(height));
        this.f13385b = colorSpace;
    }

    @h
    public ColorSpace a() {
        return this.f13385b;
    }

    @h
    public Pair<Integer, Integer> b() {
        return this.f13384a;
    }
}
