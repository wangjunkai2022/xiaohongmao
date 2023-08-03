package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;
import com.airbnb.lottie.model.content.j;
import java.util.List;

/* compiled from: FontCharacter.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final List<j> f4431a;

    /* renamed from: b  reason: collision with root package name */
    private final char f4432b;

    /* renamed from: c  reason: collision with root package name */
    private final double f4433c;

    /* renamed from: d  reason: collision with root package name */
    private final double f4434d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4435e;

    /* renamed from: f  reason: collision with root package name */
    private final String f4436f;

    public c(List<j> list, char c10, double d4, double d10, String str, String str2) {
        this.f4431a = list;
        this.f4432b = c10;
        this.f4433c = d4;
        this.f4434d = d10;
        this.f4435e = str;
        this.f4436f = str2;
    }

    public static int e(char c10, String str, String str2) {
        return ((((0 + c10) * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List<j> a() {
        return this.f4431a;
    }

    double b() {
        return this.f4433c;
    }

    String c() {
        return this.f4435e;
    }

    public double d() {
        return this.f4434d;
    }

    public int hashCode() {
        return e(this.f4432b, this.f4436f, this.f4435e);
    }
}
