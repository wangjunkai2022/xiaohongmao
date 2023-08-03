package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class b2 implements ServiceConnection, f2 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<ServiceConnection, ServiceConnection> f29061a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private int f29062b = 2;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29063c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private IBinder f29064d;

    /* renamed from: e  reason: collision with root package name */
    private final a2 f29065e;

    /* renamed from: f  reason: collision with root package name */
    private ComponentName f29066f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ e2 f29067g;

    public b2(e2 e2Var, a2 a2Var) {
        this.f29067g = e2Var;
        this.f29065e = a2Var;
    }

    public final int a() {
        return this.f29062b;
    }

    public final ComponentName b() {
        return this.f29066f;
    }

    @Nullable
    public final IBinder c() {
        return this.f29064d;
    }

    public final void d(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f29061a.put(serviceConnection, serviceConnection2);
    }

    public final void e(String str, @Nullable Executor executor) {
        com.google.android.gms.common.stats.a aVar;
        Context context;
        Context context2;
        com.google.android.gms.common.stats.a aVar2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j4;
        this.f29062b = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (y2.v.r()) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch().build());
        }
        try {
            e2 e2Var = this.f29067g;
            aVar = e2Var.f29109j;
            context = e2Var.f29106g;
            a2 a2Var = this.f29065e;
            context2 = e2Var.f29106g;
            boolean e4 = aVar.e(context, str, a2Var.c(context2), this, this.f29065e.a(), executor);
            this.f29063c = e4;
            if (e4) {
                handler = this.f29067g.f29107h;
                Message obtainMessage = handler.obtainMessage(1, this.f29065e);
                handler2 = this.f29067g.f29107h;
                j4 = this.f29067g.f29111l;
                handler2.sendMessageDelayed(obtainMessage, j4);
            } else {
                this.f29062b = 2;
                try {
                    e2 e2Var2 = this.f29067g;
                    aVar2 = e2Var2.f29109j;
                    context3 = e2Var2.f29106g;
                    aVar2.c(context3, this);
                } catch (IllegalArgumentException unused) {
                }
            }
        } finally {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.f29061a.remove(serviceConnection);
    }

    public final void g(String str) {
        Handler handler;
        com.google.android.gms.common.stats.a aVar;
        Context context;
        handler = this.f29067g.f29107h;
        handler.removeMessages(1, this.f29065e);
        e2 e2Var = this.f29067g;
        aVar = e2Var.f29109j;
        context = e2Var.f29106g;
        aVar.c(context, this);
        this.f29063c = false;
        this.f29062b = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.f29061a.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.f29061a.isEmpty();
    }

    public final boolean j() {
        return this.f29063c;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f29067g.f29105f;
        synchronized (hashMap) {
            handler = this.f29067g.f29107h;
            handler.removeMessages(1, this.f29065e);
            this.f29064d = iBinder;
            this.f29066f = componentName;
            for (ServiceConnection serviceConnection : this.f29061a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f29062b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f29067g.f29105f;
        synchronized (hashMap) {
            handler = this.f29067g.f29107h;
            handler.removeMessages(1, this.f29065e);
            this.f29064d = null;
            this.f29066f = componentName;
            for (ServiceConnection serviceConnection : this.f29061a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f29062b = 2;
        }
    }
}
