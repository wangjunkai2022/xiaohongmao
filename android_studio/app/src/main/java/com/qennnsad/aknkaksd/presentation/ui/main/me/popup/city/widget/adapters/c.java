package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters;

import android.content.Context;

/* compiled from: AdapterWheel.java */
/* loaded from: classes3.dex */
public class c extends b {

    /* renamed from: n  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.e f53040n;

    public c(Context context, com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.e eVar) {
        super(context);
        this.f53040n = eVar;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.b
    protected CharSequence f(int i4) {
        return this.f53040n.getItem(i4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f
    public int getItemsCount() {
        return this.f53040n.getItemsCount();
    }

    public com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.e q() {
        return this.f53040n;
    }
}
