package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.content.Context;

/* compiled from: ArrayWheelAdapter.java */
/* loaded from: classes3.dex */
public class d<T> extends b {

    /* renamed from: n  reason: collision with root package name */
    private T[] f53107n;

    public d(Context context, T[] tArr) {
        super(context);
        this.f53107n = tArr;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.b
    public CharSequence f(int i4) {
        if (i4 >= 0) {
            T[] tArr = this.f53107n;
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

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public int getItemsCount() {
        T[] tArr = this.f53107n;
        if (tArr == null) {
            return 0;
        }
        return tArr.length;
    }

    public void q(T[] tArr) {
        this.f53107n = tArr;
        a();
    }
}
