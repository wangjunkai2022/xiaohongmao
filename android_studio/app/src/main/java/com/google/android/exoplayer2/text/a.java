package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Cue.java */
/* loaded from: classes2.dex */
public final class a {
    public static final int A = 1;
    public static final int B = 2;
    public static final int C = 1;
    public static final int D = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final a f25304r = new c().A("").a();

    /* renamed from: s  reason: collision with root package name */
    public static final float f25305s = -3.4028235E38f;

    /* renamed from: t  reason: collision with root package name */
    public static final int f25306t = Integer.MIN_VALUE;

    /* renamed from: u  reason: collision with root package name */
    public static final int f25307u = 0;

    /* renamed from: v  reason: collision with root package name */
    public static final int f25308v = 1;

    /* renamed from: w  reason: collision with root package name */
    public static final int f25309w = 2;

    /* renamed from: x  reason: collision with root package name */
    public static final int f25310x = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f25311y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f25312z = 0;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f25313a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Layout.Alignment f25314b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f25315c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f25316d;

    /* renamed from: e  reason: collision with root package name */
    public final float f25317e;

    /* renamed from: f  reason: collision with root package name */
    public final int f25318f;

    /* renamed from: g  reason: collision with root package name */
    public final int f25319g;

    /* renamed from: h  reason: collision with root package name */
    public final float f25320h;

    /* renamed from: i  reason: collision with root package name */
    public final int f25321i;

    /* renamed from: j  reason: collision with root package name */
    public final float f25322j;

    /* renamed from: k  reason: collision with root package name */
    public final float f25323k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f25324l;

    /* renamed from: m  reason: collision with root package name */
    public final int f25325m;

    /* renamed from: n  reason: collision with root package name */
    public final int f25326n;

    /* renamed from: o  reason: collision with root package name */
    public final float f25327o;

    /* renamed from: p  reason: collision with root package name */
    public final int f25328p;

    /* renamed from: q  reason: collision with root package name */
    public final float f25329q;

    /* compiled from: Cue.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: Cue.java */
    /* loaded from: classes2.dex */
    public static final class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f25330a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f25331b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Layout.Alignment f25332c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Layout.Alignment f25333d;

        /* renamed from: e  reason: collision with root package name */
        private float f25334e;

        /* renamed from: f  reason: collision with root package name */
        private int f25335f;

        /* renamed from: g  reason: collision with root package name */
        private int f25336g;

        /* renamed from: h  reason: collision with root package name */
        private float f25337h;

        /* renamed from: i  reason: collision with root package name */
        private int f25338i;

        /* renamed from: j  reason: collision with root package name */
        private int f25339j;

        /* renamed from: k  reason: collision with root package name */
        private float f25340k;

        /* renamed from: l  reason: collision with root package name */
        private float f25341l;

        /* renamed from: m  reason: collision with root package name */
        private float f25342m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f25343n;
        @ColorInt

        /* renamed from: o  reason: collision with root package name */
        private int f25344o;

        /* renamed from: p  reason: collision with root package name */
        private int f25345p;

        /* renamed from: q  reason: collision with root package name */
        private float f25346q;

        public c A(CharSequence charSequence) {
            this.f25330a = charSequence;
            return this;
        }

        public c B(@Nullable Layout.Alignment alignment) {
            this.f25332c = alignment;
            return this;
        }

        public c C(float f10, int i4) {
            this.f25340k = f10;
            this.f25339j = i4;
            return this;
        }

        public c D(int i4) {
            this.f25345p = i4;
            return this;
        }

        public c E(@ColorInt int i4) {
            this.f25344o = i4;
            this.f25343n = true;
            return this;
        }

        public a a() {
            return new a(this.f25330a, this.f25332c, this.f25333d, this.f25331b, this.f25334e, this.f25335f, this.f25336g, this.f25337h, this.f25338i, this.f25339j, this.f25340k, this.f25341l, this.f25342m, this.f25343n, this.f25344o, this.f25345p, this.f25346q);
        }

        public c b() {
            this.f25343n = false;
            return this;
        }

        @Nullable
        public Bitmap c() {
            return this.f25331b;
        }

        public float d() {
            return this.f25342m;
        }

        public float e() {
            return this.f25334e;
        }

        public int f() {
            return this.f25336g;
        }

        public int g() {
            return this.f25335f;
        }

        public float h() {
            return this.f25337h;
        }

        public int i() {
            return this.f25338i;
        }

        public float j() {
            return this.f25341l;
        }

        @Nullable
        public CharSequence k() {
            return this.f25330a;
        }

        @Nullable
        public Layout.Alignment l() {
            return this.f25332c;
        }

        public float m() {
            return this.f25340k;
        }

        public int n() {
            return this.f25339j;
        }

        public int o() {
            return this.f25345p;
        }

        @ColorInt
        public int p() {
            return this.f25344o;
        }

        public boolean q() {
            return this.f25343n;
        }

        public c r(Bitmap bitmap) {
            this.f25331b = bitmap;
            return this;
        }

        public c s(float f10) {
            this.f25342m = f10;
            return this;
        }

        public c t(float f10, int i4) {
            this.f25334e = f10;
            this.f25335f = i4;
            return this;
        }

        public c u(int i4) {
            this.f25336g = i4;
            return this;
        }

        public c v(@Nullable Layout.Alignment alignment) {
            this.f25333d = alignment;
            return this;
        }

        public c w(float f10) {
            this.f25337h = f10;
            return this;
        }

        public c x(int i4) {
            this.f25338i = i4;
            return this;
        }

        public c y(float f10) {
            this.f25346q = f10;
            return this;
        }

        public c z(float f10) {
            this.f25341l = f10;
            return this;
        }

        public c() {
            this.f25330a = null;
            this.f25331b = null;
            this.f25332c = null;
            this.f25333d = null;
            this.f25334e = -3.4028235E38f;
            this.f25335f = Integer.MIN_VALUE;
            this.f25336g = Integer.MIN_VALUE;
            this.f25337h = -3.4028235E38f;
            this.f25338i = Integer.MIN_VALUE;
            this.f25339j = Integer.MIN_VALUE;
            this.f25340k = -3.4028235E38f;
            this.f25341l = -3.4028235E38f;
            this.f25342m = -3.4028235E38f;
            this.f25343n = false;
            this.f25344o = ViewCompat.MEASURED_STATE_MASK;
            this.f25345p = Integer.MIN_VALUE;
        }

        private c(a aVar) {
            this.f25330a = aVar.f25313a;
            this.f25331b = aVar.f25316d;
            this.f25332c = aVar.f25314b;
            this.f25333d = aVar.f25315c;
            this.f25334e = aVar.f25317e;
            this.f25335f = aVar.f25318f;
            this.f25336g = aVar.f25319g;
            this.f25337h = aVar.f25320h;
            this.f25338i = aVar.f25321i;
            this.f25339j = aVar.f25326n;
            this.f25340k = aVar.f25327o;
            this.f25341l = aVar.f25322j;
            this.f25342m = aVar.f25323k;
            this.f25343n = aVar.f25324l;
            this.f25344o = aVar.f25325m;
            this.f25345p = aVar.f25328p;
            this.f25346q = aVar.f25329q;
        }
    }

    /* compiled from: Cue.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    /* compiled from: Cue.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface e {
    }

    /* compiled from: Cue.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface f {
    }

    public c a() {
        return new c();
    }

    @Deprecated
    public a(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f);
    }

    @Deprecated
    public a(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f10, int i4, int i10, float f11, int i11, float f12) {
        this(charSequence, alignment, f10, i4, i10, f11, i11, f12, false, (int) ViewCompat.MEASURED_STATE_MASK);
    }

    @Deprecated
    public a(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f10, int i4, int i10, float f11, int i11, float f12, int i12, float f13) {
        this(charSequence, alignment, null, null, f10, i4, i10, f11, i11, i12, f13, f12, -3.4028235E38f, false, ViewCompat.MEASURED_STATE_MASK, Integer.MIN_VALUE, 0.0f);
    }

    @Deprecated
    public a(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f10, int i4, int i10, float f11, int i11, float f12, boolean z9, int i12) {
        this(charSequence, alignment, null, null, f10, i4, i10, f11, i11, Integer.MIN_VALUE, -3.4028235E38f, f12, -3.4028235E38f, z9, i12, Integer.MIN_VALUE, 0.0f);
    }

    private a(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f10, int i4, int i10, float f11, int i11, int i12, float f12, float f13, float f14, boolean z9, int i13, int i14, float f15) {
        if (charSequence == null) {
            com.google.android.exoplayer2.util.a.g(bitmap);
        } else {
            com.google.android.exoplayer2.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f25313a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f25313a = charSequence.toString();
        } else {
            this.f25313a = null;
        }
        this.f25314b = alignment;
        this.f25315c = alignment2;
        this.f25316d = bitmap;
        this.f25317e = f10;
        this.f25318f = i4;
        this.f25319g = i10;
        this.f25320h = f11;
        this.f25321i = i11;
        this.f25322j = f13;
        this.f25323k = f14;
        this.f25324l = z9;
        this.f25325m = i13;
        this.f25326n = i12;
        this.f25327o = f12;
        this.f25328p = i14;
        this.f25329q = f15;
    }
}
