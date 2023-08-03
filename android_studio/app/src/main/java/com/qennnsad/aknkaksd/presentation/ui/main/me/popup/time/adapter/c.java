package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.content.Context;

/* compiled from: AdapterWheel.java */
/* loaded from: classes3.dex */
public class c extends b {

    /* renamed from: n  reason: collision with root package name */
    private j f53106n;

    public c(Context context, j jVar) {
        super(context);
        this.f53106n = jVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.b
    protected CharSequence f(int i4) {
        return this.f53106n.getItem(i4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public int getItemsCount() {
        return this.f53106n.getItemsCount();
    }

    public j q() {
        return this.f53106n;
    }
}
