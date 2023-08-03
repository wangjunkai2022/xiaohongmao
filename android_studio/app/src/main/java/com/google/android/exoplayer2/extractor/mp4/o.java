package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Track.java */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: l  reason: collision with root package name */
    public static final int f22810l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f22811m = 1;

    /* renamed from: a  reason: collision with root package name */
    public final int f22812a;

    /* renamed from: b  reason: collision with root package name */
    public final int f22813b;

    /* renamed from: c  reason: collision with root package name */
    public final long f22814c;

    /* renamed from: d  reason: collision with root package name */
    public final long f22815d;

    /* renamed from: e  reason: collision with root package name */
    public final long f22816e;

    /* renamed from: f  reason: collision with root package name */
    public final Format f22817f;

    /* renamed from: g  reason: collision with root package name */
    public final int f22818g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final long[] f22819h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f22820i;

    /* renamed from: j  reason: collision with root package name */
    public final int f22821j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final p[] f22822k;

    /* compiled from: Track.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public o(int i4, int i10, long j4, long j10, long j11, Format format, int i11, @Nullable p[] pVarArr, int i12, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.f22812a = i4;
        this.f22813b = i10;
        this.f22814c = j4;
        this.f22815d = j10;
        this.f22816e = j11;
        this.f22817f = format;
        this.f22818g = i11;
        this.f22822k = pVarArr;
        this.f22821j = i12;
        this.f22819h = jArr;
        this.f22820i = jArr2;
    }

    public o a(Format format) {
        return new o(this.f22812a, this.f22813b, this.f22814c, this.f22815d, this.f22816e, format, this.f22818g, this.f22822k, this.f22821j, this.f22819h, this.f22820i);
    }

    @Nullable
    public p b(int i4) {
        p[] pVarArr = this.f22822k;
        if (pVarArr == null) {
            return null;
        }
        return pVarArr[i4];
    }
}
