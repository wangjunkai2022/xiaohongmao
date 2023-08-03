package com.googlecode.mp4parser.util;

import android.util.Log;

/* compiled from: AndroidLogger.java */
/* loaded from: classes2.dex */
public class a extends j {

    /* renamed from: b  reason: collision with root package name */
    private static final String f36970b = "isoparser";

    /* renamed from: a  reason: collision with root package name */
    String f36971a;

    public a(String str) {
        this.f36971a = str;
    }

    @Override // com.googlecode.mp4parser.util.j
    public void b(String str) {
        Log.d(f36970b, String.valueOf(this.f36971a) + ":" + str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void c(String str) {
        Log.e(f36970b, String.valueOf(this.f36971a) + ":" + str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void d(String str) {
        Log.w(f36970b, String.valueOf(this.f36971a) + ":" + str);
    }
}
