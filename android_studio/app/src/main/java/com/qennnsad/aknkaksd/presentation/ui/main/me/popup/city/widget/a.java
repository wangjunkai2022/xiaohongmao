package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget;

/* compiled from: ItemsRange.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f53025a;

    /* renamed from: b  reason: collision with root package name */
    private int f53026b;

    public a() {
        this(0, 0);
    }

    public boolean a(int i4) {
        return i4 >= c() && i4 <= d();
    }

    public int b() {
        return this.f53026b;
    }

    public int c() {
        return this.f53025a;
    }

    public int d() {
        return (c() + b()) - 1;
    }

    public a(int i4, int i10) {
        this.f53025a = i4;
        this.f53026b = i10;
    }
}
