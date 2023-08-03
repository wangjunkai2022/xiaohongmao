package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

/* compiled from: ItemsRange.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private int f53108a;

    /* renamed from: b  reason: collision with root package name */
    private int f53109b;

    public e() {
        this(0, 0);
    }

    public boolean a(int i4) {
        return i4 >= c() && i4 <= d();
    }

    public int b() {
        return this.f53109b;
    }

    public int c() {
        return this.f53108a;
    }

    public int d() {
        return (c() + b()) - 1;
    }

    public e(int i4, int i10) {
        this.f53108a = i4;
        this.f53109b = i10;
    }
}
