package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: TtmlStyle.java */
/* loaded from: classes2.dex */
final class g {
    public static final int A = 2;
    public static final int B = 3;
    private static final int C = 0;
    private static final int D = 1;
    public static final int E = 1;
    public static final int F = 2;
    public static final int G = 3;
    public static final int H = 4;

    /* renamed from: t  reason: collision with root package name */
    public static final int f25772t = -1;

    /* renamed from: u  reason: collision with root package name */
    public static final float f25773u = Float.MAX_VALUE;

    /* renamed from: v  reason: collision with root package name */
    public static final int f25774v = 0;

    /* renamed from: w  reason: collision with root package name */
    public static final int f25775w = 1;

    /* renamed from: x  reason: collision with root package name */
    public static final int f25776x = 2;

    /* renamed from: y  reason: collision with root package name */
    public static final int f25777y = 3;

    /* renamed from: z  reason: collision with root package name */
    public static final int f25778z = 1;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f25779a;

    /* renamed from: b  reason: collision with root package name */
    private int f25780b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25781c;

    /* renamed from: d  reason: collision with root package name */
    private int f25782d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f25783e;

    /* renamed from: k  reason: collision with root package name */
    private float f25789k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f25790l;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Layout.Alignment f25793o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Layout.Alignment f25794p;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private com.google.android.exoplayer2.text.ttml.b f25796r;

    /* renamed from: f  reason: collision with root package name */
    private int f25784f = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f25785g = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f25786h = -1;

    /* renamed from: i  reason: collision with root package name */
    private int f25787i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f25788j = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f25791m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f25792n = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f25795q = -1;

    /* renamed from: s  reason: collision with root package name */
    private float f25797s = Float.MAX_VALUE;

    /* compiled from: TtmlStyle.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: TtmlStyle.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: TtmlStyle.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface c {
    }

    private g s(@Nullable g gVar, boolean z9) {
        int i4;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f25781c && gVar.f25781c) {
                x(gVar.f25780b);
            }
            if (this.f25786h == -1) {
                this.f25786h = gVar.f25786h;
            }
            if (this.f25787i == -1) {
                this.f25787i = gVar.f25787i;
            }
            if (this.f25779a == null && (str = gVar.f25779a) != null) {
                this.f25779a = str;
            }
            if (this.f25784f == -1) {
                this.f25784f = gVar.f25784f;
            }
            if (this.f25785g == -1) {
                this.f25785g = gVar.f25785g;
            }
            if (this.f25792n == -1) {
                this.f25792n = gVar.f25792n;
            }
            if (this.f25793o == null && (alignment2 = gVar.f25793o) != null) {
                this.f25793o = alignment2;
            }
            if (this.f25794p == null && (alignment = gVar.f25794p) != null) {
                this.f25794p = alignment;
            }
            if (this.f25795q == -1) {
                this.f25795q = gVar.f25795q;
            }
            if (this.f25788j == -1) {
                this.f25788j = gVar.f25788j;
                this.f25789k = gVar.f25789k;
            }
            if (this.f25796r == null) {
                this.f25796r = gVar.f25796r;
            }
            if (this.f25797s == Float.MAX_VALUE) {
                this.f25797s = gVar.f25797s;
            }
            if (z9 && !this.f25783e && gVar.f25783e) {
                v(gVar.f25782d);
            }
            if (z9 && this.f25791m == -1 && (i4 = gVar.f25791m) != -1) {
                this.f25791m = i4;
            }
        }
        return this;
    }

    public g A(int i4) {
        this.f25788j = i4;
        return this;
    }

    public g B(@Nullable String str) {
        this.f25790l = str;
        return this;
    }

    public g C(boolean z9) {
        this.f25787i = z9 ? 1 : 0;
        return this;
    }

    public g D(boolean z9) {
        this.f25784f = z9 ? 1 : 0;
        return this;
    }

    public g E(@Nullable Layout.Alignment alignment) {
        this.f25794p = alignment;
        return this;
    }

    public g F(int i4) {
        this.f25792n = i4;
        return this;
    }

    public g G(int i4) {
        this.f25791m = i4;
        return this;
    }

    public g H(float f10) {
        this.f25797s = f10;
        return this;
    }

    public g I(@Nullable Layout.Alignment alignment) {
        this.f25793o = alignment;
        return this;
    }

    public g J(boolean z9) {
        this.f25795q = z9 ? 1 : 0;
        return this;
    }

    public g K(@Nullable com.google.android.exoplayer2.text.ttml.b bVar) {
        this.f25796r = bVar;
        return this;
    }

    public g L(boolean z9) {
        this.f25785g = z9 ? 1 : 0;
        return this;
    }

    public g a(@Nullable g gVar) {
        return s(gVar, true);
    }

    public int b() {
        if (this.f25783e) {
            return this.f25782d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.f25781c) {
            return this.f25780b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    @Nullable
    public String d() {
        return this.f25779a;
    }

    public float e() {
        return this.f25789k;
    }

    public int f() {
        return this.f25788j;
    }

    @Nullable
    public String g() {
        return this.f25790l;
    }

    @Nullable
    public Layout.Alignment h() {
        return this.f25794p;
    }

    public int i() {
        return this.f25792n;
    }

    public int j() {
        return this.f25791m;
    }

    public float k() {
        return this.f25797s;
    }

    public int l() {
        int i4 = this.f25786h;
        if (i4 == -1 && this.f25787i == -1) {
            return -1;
        }
        return (i4 == 1 ? 1 : 0) | (this.f25787i == 1 ? 2 : 0);
    }

    @Nullable
    public Layout.Alignment m() {
        return this.f25793o;
    }

    public boolean n() {
        return this.f25795q == 1;
    }

    @Nullable
    public com.google.android.exoplayer2.text.ttml.b o() {
        return this.f25796r;
    }

    public boolean p() {
        return this.f25783e;
    }

    public boolean q() {
        return this.f25781c;
    }

    public g r(@Nullable g gVar) {
        return s(gVar, false);
    }

    public boolean t() {
        return this.f25784f == 1;
    }

    public boolean u() {
        return this.f25785g == 1;
    }

    public g v(int i4) {
        this.f25782d = i4;
        this.f25783e = true;
        return this;
    }

    public g w(boolean z9) {
        this.f25786h = z9 ? 1 : 0;
        return this;
    }

    public g x(int i4) {
        this.f25780b = i4;
        this.f25781c = true;
        return this;
    }

    public g y(@Nullable String str) {
        this.f25779a = str;
        return this;
    }

    public g z(float f10) {
        this.f25789k = f10;
        return this;
    }
}
