package com.iab.omid.library.giphy.b;

import android.annotation.SuppressLint;
import android.content.Context;

/* loaded from: classes2.dex */
public class c {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static c f39382b = new c();

    /* renamed from: a  reason: collision with root package name */
    private Context f39383a;

    private c() {
    }

    public static c a() {
        return f39382b;
    }

    public void b(Context context) {
        this.f39383a = context != null ? context.getApplicationContext() : null;
    }

    public Context c() {
        return this.f39383a;
    }
}
