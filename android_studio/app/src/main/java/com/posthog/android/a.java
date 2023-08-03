package com.posthog.android;

import android.content.SharedPreferences;

/* compiled from: BooleanPreference.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f47453a;

    /* renamed from: b  reason: collision with root package name */
    private final String f47454b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f47455c;

    public a(SharedPreferences sharedPreferences, String str, boolean z9) {
        this.f47453a = sharedPreferences;
        this.f47454b = str;
        this.f47455c = z9;
    }

    public boolean a() {
        return this.f47453a.getBoolean(this.f47454b, this.f47455c);
    }

    public void b(boolean z9) {
        this.f47453a.edit().putBoolean(this.f47454b, z9).apply();
    }
}
