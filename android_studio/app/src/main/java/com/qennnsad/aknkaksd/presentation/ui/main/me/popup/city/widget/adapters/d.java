package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters;

import android.content.Context;

/* compiled from: ArrayWheelAdapter.java */
/* loaded from: classes3.dex */
public class d<T> extends b {

    /* renamed from: n  reason: collision with root package name */
    private T[] f53041n;

    public d(Context context, T[] tArr) {
        super(context);
        this.f53041n = tArr;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.b
    public CharSequence f(int i4) {
        if (i4 >= 0) {
            T[] tArr = this.f53041n;
            if (i4 < tArr.length) {
                T t9 = tArr[i4];
                if (t9 instanceof CharSequence) {
                    return (CharSequence) t9;
                }
                return t9.toString();
            }
            return null;
        }
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f
    public int getItemsCount() {
        return this.f53041n.length;
    }
}
