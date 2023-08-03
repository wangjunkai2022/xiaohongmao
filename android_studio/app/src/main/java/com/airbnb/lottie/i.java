package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: LottieImageAsset.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final int f4352a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4353b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4354c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4355d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4356e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f4357f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public i(int i4, int i10, String str, String str2, String str3) {
        this.f4352a = i4;
        this.f4353b = i10;
        this.f4354c = str;
        this.f4355d = str2;
        this.f4356e = str3;
    }

    @Nullable
    public Bitmap a() {
        return this.f4357f;
    }

    public String b() {
        return this.f4356e;
    }

    public String c() {
        return this.f4355d;
    }

    public int d() {
        return this.f4353b;
    }

    public String e() {
        return this.f4354c;
    }

    public int f() {
        return this.f4352a;
    }

    public void g(@Nullable Bitmap bitmap) {
        this.f4357f = bitmap;
    }
}
