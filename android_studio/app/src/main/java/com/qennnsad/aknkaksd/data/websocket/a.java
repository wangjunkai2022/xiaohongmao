package com.qennnsad.aknkaksd.data.websocket;

import android.app.Service;
import androidx.annotation.CallSuper;

/* compiled from: Hilt_WebSocketService.java */
/* loaded from: classes3.dex */
abstract class a extends Service implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.k f47796a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f47797b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private boolean f47798c = false;

    @Override // q6.d
    /* renamed from: a */
    public final dagger.hilt.android.internal.managers.k componentManager() {
        if (this.f47796a == null) {
            synchronized (this.f47797b) {
                if (this.f47796a == null) {
                    this.f47796a = b();
                }
            }
        }
        return this.f47796a;
    }

    protected dagger.hilt.android.internal.managers.k b() {
        return new dagger.hilt.android.internal.managers.k(this);
    }

    protected void c() {
        if (this.f47798c) {
            return;
        }
        this.f47798c = true;
        ((g) generatedComponent()).a((WebSocketService) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        c();
        super.onCreate();
    }
}
