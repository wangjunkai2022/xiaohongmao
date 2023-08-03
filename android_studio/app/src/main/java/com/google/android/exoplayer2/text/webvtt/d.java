package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: WebvttCssStyle.java */
/* loaded from: classes2.dex */
public final class d {
    private static final int A = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f25844r = -1;

    /* renamed from: s  reason: collision with root package name */
    public static final int f25845s = 0;

    /* renamed from: t  reason: collision with root package name */
    public static final int f25846t = 1;

    /* renamed from: u  reason: collision with root package name */
    public static final int f25847u = 2;

    /* renamed from: v  reason: collision with root package name */
    public static final int f25848v = 3;

    /* renamed from: w  reason: collision with root package name */
    public static final int f25849w = 1;

    /* renamed from: x  reason: collision with root package name */
    public static final int f25850x = 2;

    /* renamed from: y  reason: collision with root package name */
    public static final int f25851y = 3;

    /* renamed from: z  reason: collision with root package name */
    private static final int f25852z = 0;
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f25858f;

    /* renamed from: h  reason: collision with root package name */
    private int f25860h;

    /* renamed from: o  reason: collision with root package name */
    private float f25867o;

    /* renamed from: a  reason: collision with root package name */
    private String f25853a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f25854b = "";

    /* renamed from: c  reason: collision with root package name */
    private Set<String> f25855c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private String f25856d = "";
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f25857e = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f25859g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f25861i = false;

    /* renamed from: j  reason: collision with root package name */
    private int f25862j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f25863k = -1;

    /* renamed from: l  reason: collision with root package name */
    private int f25864l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f25865m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f25866n = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f25868p = -1;

    /* renamed from: q  reason: collision with root package name */
    private boolean f25869q = false;

    /* compiled from: WebvttCssStyle.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: WebvttCssStyle.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    private static int C(int i4, String str, @Nullable String str2, int i10) {
        if (str.isEmpty() || i4 == -1) {
            return i4;
        }
        if (str.equals(str2)) {
            return i4 + i10;
        }
        return -1;
    }

    public void A(String str) {
        this.f25856d = str;
    }

    public d B(boolean z9) {
        this.f25863k = z9 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f25861i) {
            return this.f25860h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f25869q;
    }

    public int c() {
        if (this.f25859g) {
            return this.f25858f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    @Nullable
    public String d() {
        return this.f25857e;
    }

    public float e() {
        return this.f25867o;
    }

    public int f() {
        return this.f25866n;
    }

    public int g() {
        return this.f25868p;
    }

    public int h(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        if (this.f25853a.isEmpty() && this.f25854b.isEmpty() && this.f25855c.isEmpty() && this.f25856d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int C = C(C(C(0, this.f25853a, str, 1073741824), this.f25854b, str2, 2), this.f25856d, str3, 4);
        if (C == -1 || !set.containsAll(this.f25855c)) {
            return 0;
        }
        return C + (this.f25855c.size() * 4);
    }

    public int i() {
        int i4 = this.f25864l;
        if (i4 == -1 && this.f25865m == -1) {
            return -1;
        }
        return (i4 == 1 ? 1 : 0) | (this.f25865m == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.f25861i;
    }

    public boolean k() {
        return this.f25859g;
    }

    public boolean l() {
        return this.f25862j == 1;
    }

    public boolean m() {
        return this.f25863k == 1;
    }

    public d n(int i4) {
        this.f25860h = i4;
        this.f25861i = true;
        return this;
    }

    public d o(boolean z9) {
        this.f25864l = z9 ? 1 : 0;
        return this;
    }

    public d p(boolean z9) {
        this.f25869q = z9;
        return this;
    }

    public d q(int i4) {
        this.f25858f = i4;
        this.f25859g = true;
        return this;
    }

    public d r(@Nullable String str) {
        this.f25857e = str == null ? null : com.google.common.base.c.g(str);
        return this;
    }

    public d s(float f10) {
        this.f25867o = f10;
        return this;
    }

    public d t(short s9) {
        this.f25866n = s9;
        return this;
    }

    public d u(boolean z9) {
        this.f25865m = z9 ? 1 : 0;
        return this;
    }

    public d v(boolean z9) {
        this.f25862j = z9 ? 1 : 0;
        return this;
    }

    public d w(int i4) {
        this.f25868p = i4;
        return this;
    }

    public void x(String[] strArr) {
        this.f25855c = new HashSet(Arrays.asList(strArr));
    }

    public void y(String str) {
        this.f25853a = str;
    }

    public void z(String str) {
        this.f25854b = str;
    }
}
