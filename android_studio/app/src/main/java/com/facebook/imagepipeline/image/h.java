package com.facebook.imagepipeline.image;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ImmutableQualityInfo.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class h implements j {

    /* renamed from: d  reason: collision with root package name */
    public static final j f12520d = d(Integer.MAX_VALUE, true, true);

    /* renamed from: a  reason: collision with root package name */
    int f12521a;

    /* renamed from: b  reason: collision with root package name */
    boolean f12522b;

    /* renamed from: c  reason: collision with root package name */
    boolean f12523c;

    private h(int quality, boolean isOfGoodEnoughQuality, boolean isOfFullQuality) {
        this.f12521a = quality;
        this.f12522b = isOfGoodEnoughQuality;
        this.f12523c = isOfFullQuality;
    }

    public static j d(int quality, boolean isOfGoodEnoughQuality, boolean isOfFullQuality) {
        return new h(quality, isOfGoodEnoughQuality, isOfFullQuality);
    }

    @Override // com.facebook.imagepipeline.image.j
    public boolean a() {
        return this.f12523c;
    }

    @Override // com.facebook.imagepipeline.image.j
    public boolean b() {
        return this.f12522b;
    }

    @Override // com.facebook.imagepipeline.image.j
    public int c() {
        return this.f12521a;
    }

    public boolean equals(@r7.h Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof h) {
            h hVar = (h) other;
            return this.f12521a == hVar.f12521a && this.f12522b == hVar.f12522b && this.f12523c == hVar.f12523c;
        }
        return false;
    }

    public int hashCode() {
        return (this.f12521a ^ (this.f12522b ? 4194304 : 0)) ^ (this.f12523c ? 8388608 : 0);
    }
}
