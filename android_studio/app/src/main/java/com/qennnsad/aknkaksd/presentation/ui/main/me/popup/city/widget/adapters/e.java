package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters;

import android.content.Context;

/* compiled from: NumericWheelAdapter.java */
/* loaded from: classes3.dex */
public class e extends b {

    /* renamed from: q  reason: collision with root package name */
    public static final int f53042q = 9;

    /* renamed from: r  reason: collision with root package name */
    private static final int f53043r = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f53044n;

    /* renamed from: o  reason: collision with root package name */
    private int f53045o;

    /* renamed from: p  reason: collision with root package name */
    private String f53046p;

    public e(Context context) {
        this(context, 0, 9);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.b
    public CharSequence f(int i4) {
        if (i4 < 0 || i4 >= getItemsCount()) {
            return null;
        }
        int i10 = this.f53044n + i4;
        String str = this.f53046p;
        return str != null ? String.format(str, Integer.valueOf(i10)) : Integer.toString(i10);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f
    public int getItemsCount() {
        return (this.f53045o - this.f53044n) + 1;
    }

    public e(Context context, int i4, int i10) {
        this(context, i4, i10, null);
    }

    public e(Context context, int i4, int i10, String str) {
        super(context);
        this.f53044n = i4;
        this.f53045o = i10;
        this.f53046p = str;
    }
}
