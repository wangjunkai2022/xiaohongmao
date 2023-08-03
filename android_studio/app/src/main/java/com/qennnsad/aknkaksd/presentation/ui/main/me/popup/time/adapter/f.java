package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.content.Context;

/* compiled from: NumericWheelAdapter.java */
/* loaded from: classes3.dex */
public class f extends b {

    /* renamed from: q  reason: collision with root package name */
    public static final int f53110q = 9;

    /* renamed from: r  reason: collision with root package name */
    private static final int f53111r = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f53112n;

    /* renamed from: o  reason: collision with root package name */
    private int f53113o;

    /* renamed from: p  reason: collision with root package name */
    private String f53114p;

    public f(Context context) {
        this(context, 0, 9);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.b
    public CharSequence f(int i4) {
        if (i4 < 0 || i4 >= getItemsCount()) {
            return null;
        }
        int i10 = this.f53112n + i4;
        String str = this.f53114p;
        return str != null ? String.format(str, Integer.valueOf(i10)) : Integer.toString(i10);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public int getItemsCount() {
        return (this.f53113o - this.f53112n) + 1;
    }

    public f(Context context, int i4, int i10) {
        this(context, i4, i10, null);
    }

    public f(Context context, int i4, int i10, String str) {
        super(context);
        this.f53112n = i4;
        this.f53113o = i10;
        this.f53114p = str;
    }
}
