package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: DecoderReuseEvaluation.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: f  reason: collision with root package name */
    public static final int f21602f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f21603g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f21604h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f21605i = 3;

    /* renamed from: j  reason: collision with root package name */
    public static final int f21606j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f21607k = 2;

    /* renamed from: l  reason: collision with root package name */
    public static final int f21608l = 4;

    /* renamed from: m  reason: collision with root package name */
    public static final int f21609m = 8;

    /* renamed from: n  reason: collision with root package name */
    public static final int f21610n = 16;

    /* renamed from: o  reason: collision with root package name */
    public static final int f21611o = 32;

    /* renamed from: p  reason: collision with root package name */
    public static final int f21612p = 64;

    /* renamed from: q  reason: collision with root package name */
    public static final int f21613q = 128;

    /* renamed from: r  reason: collision with root package name */
    public static final int f21614r = 256;

    /* renamed from: s  reason: collision with root package name */
    public static final int f21615s = 512;

    /* renamed from: t  reason: collision with root package name */
    public static final int f21616t = 1024;

    /* renamed from: u  reason: collision with root package name */
    public static final int f21617u = 2048;

    /* renamed from: v  reason: collision with root package name */
    public static final int f21618v = 4096;

    /* renamed from: w  reason: collision with root package name */
    public static final int f21619w = 8192;

    /* renamed from: x  reason: collision with root package name */
    public static final int f21620x = 16384;

    /* renamed from: a  reason: collision with root package name */
    public final String f21621a;

    /* renamed from: b  reason: collision with root package name */
    public final Format f21622b;

    /* renamed from: c  reason: collision with root package name */
    public final Format f21623c;

    /* renamed from: d  reason: collision with root package name */
    public final int f21624d;

    /* renamed from: e  reason: collision with root package name */
    public final int f21625e;

    /* compiled from: DecoderReuseEvaluation.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: DecoderReuseEvaluation.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    public e(String str, Format format, Format format2, int i4, int i10) {
        com.google.android.exoplayer2.util.a.a(i4 == 0 || i10 == 0);
        this.f21621a = com.google.android.exoplayer2.util.a.e(str);
        this.f21622b = (Format) com.google.android.exoplayer2.util.a.g(format);
        this.f21623c = (Format) com.google.android.exoplayer2.util.a.g(format2);
        this.f21624d = i4;
        this.f21625e = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f21624d == eVar.f21624d && this.f21625e == eVar.f21625e && this.f21621a.equals(eVar.f21621a) && this.f21622b.equals(eVar.f21622b) && this.f21623c.equals(eVar.f21623c);
    }

    public int hashCode() {
        return ((((((((527 + this.f21624d) * 31) + this.f21625e) * 31) + this.f21621a.hashCode()) * 31) + this.f21622b.hashCode()) * 31) + this.f21623c.hashCode();
    }
}
