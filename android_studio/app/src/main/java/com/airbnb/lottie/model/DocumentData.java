package com.airbnb.lottie.model;

import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DocumentData {

    /* renamed from: a  reason: collision with root package name */
    public final String f4395a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4396b;

    /* renamed from: c  reason: collision with root package name */
    public final double f4397c;

    /* renamed from: d  reason: collision with root package name */
    public final Justification f4398d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4399e;

    /* renamed from: f  reason: collision with root package name */
    public final double f4400f;

    /* renamed from: g  reason: collision with root package name */
    public final double f4401g;
    @ColorInt

    /* renamed from: h  reason: collision with root package name */
    public final int f4402h;
    @ColorInt

    /* renamed from: i  reason: collision with root package name */
    public final int f4403i;

    /* renamed from: j  reason: collision with root package name */
    public final double f4404j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f4405k;

    /* loaded from: classes.dex */
    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData(String str, String str2, double d4, Justification justification, int i4, double d10, double d11, @ColorInt int i10, @ColorInt int i11, double d12, boolean z9) {
        this.f4395a = str;
        this.f4396b = str2;
        this.f4397c = d4;
        this.f4398d = justification;
        this.f4399e = i4;
        this.f4400f = d10;
        this.f4401g = d11;
        this.f4402h = i10;
        this.f4403i = i11;
        this.f4404j = d12;
        this.f4405k = z9;
    }

    public int hashCode() {
        int hashCode = (((((int) ((((this.f4395a.hashCode() * 31) + this.f4396b.hashCode()) * 31) + this.f4397c)) * 31) + this.f4398d.ordinal()) * 31) + this.f4399e;
        long doubleToLongBits = Double.doubleToLongBits(this.f4400f);
        return (((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + this.f4402h;
    }
}
