package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class p implements a.f, ServiceConnection {

    /* renamed from: l  reason: collision with root package name */
    private static final String f28840l = p.class.getSimpleName();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f28841a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f28842b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ComponentName f28843c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f28844d;

    /* renamed from: e  reason: collision with root package name */
    private final f f28845e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f28846f;

    /* renamed from: g  reason: collision with root package name */
    private final q f28847g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private IBinder f28848h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28849i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f28850j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f28851k;

    @u2.a
    public p(@NonNull Context context, @NonNull Looper looper, @NonNull ComponentName componentName, @NonNull f fVar, @NonNull q qVar) {
        this(context, looper, null, null, componentName, fVar, qVar);
    }

    private final void A(String str) {
        String.valueOf(this.f28848h);
    }

    @WorkerThread
    private final void z() {
        if (Thread.currentThread() != this.f28846f.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final boolean a() {
        z();
        return this.f28848h != null;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final void c() {
        z();
        A("Disconnect called.");
        try {
            this.f28844d.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f28849i = false;
        this.f28848h = null;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean d() {
        return false;
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final void e(@NonNull String str) {
        z();
        this.f28850j = str;
        c();
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final boolean f() {
        z();
        return this.f28849i;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final String g() {
        String str = this.f28841a;
        if (str != null) {
            return str;
        }
        com.google.android.gms.common.internal.u.k(this.f28843c);
        return this.f28843c.getPackageName();
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final void h(@NonNull e.c cVar) {
        z();
        A("Connect started.");
        if (a()) {
            try {
                e("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f28843c;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f28841a).setAction(this.f28842b);
            }
            boolean bindService = this.f28844d.bindService(intent, this, com.google.android.gms.common.internal.j.c());
            this.f28849i = bindService;
            if (!bindService) {
                this.f28848h = null;
                this.f28847g.z(new ConnectionResult(16));
            }
            A("Finished connect.");
        } catch (SecurityException e4) {
            this.f28849i = false;
            this.f28848h = null;
            throw e4;
        }
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final Feature[] i() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean j() {
        return false;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean k() {
        return false;
    }

    @Override // com.google.android.gms.common.api.a.f
    @Nullable
    public final IBinder l() {
        return null;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final Set<Scope> m() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void n(@Nullable com.google.android.gms.common.internal.m mVar, @Nullable Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void o(@NonNull e.InterfaceC0197e interfaceC0197e) {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull final IBinder iBinder) {
        this.f28846f.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.m2
            @Override // java.lang.Runnable
            public final void run() {
                p.this.x(iBinder);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        this.f28846f.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.l2
            @Override // java.lang.Runnable
            public final void run() {
                p.this.zab();
            }
        });
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void p(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.a.f
    public final int r() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final Feature[] s() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.a.f
    @Nullable
    public final String u() {
        return this.f28850j;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final Intent v() {
        return new Intent();
    }

    @Nullable
    @u2.a
    @WorkerThread
    public IBinder w() {
        z();
        return this.f28848h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void x(IBinder iBinder) {
        this.f28849i = false;
        this.f28848h = iBinder;
        A("Connected.");
        this.f28845e.s(new Bundle());
    }

    public final void y(@Nullable String str) {
        this.f28851k = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zab() {
        this.f28849i = false;
        this.f28848h = null;
        A("Disconnected.");
        this.f28845e.x(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r6 != null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private p(android.content.Context r2, android.os.Looper r3, @androidx.annotation.Nullable java.lang.String r4, @androidx.annotation.Nullable java.lang.String r5, @androidx.annotation.Nullable android.content.ComponentName r6, com.google.android.gms.common.api.internal.f r7, com.google.android.gms.common.api.internal.q r8) {
        /*
            r1 = this;
            r1.<init>()
            r0 = 0
            r1.f28849i = r0
            r0 = 0
            r1.f28850j = r0
            r1.f28844d = r2
            com.google.android.gms.internal.base.q r2 = new com.google.android.gms.internal.base.q
            r2.<init>(r3)
            r1.f28846f = r2
            r1.f28845e = r7
            r1.f28847g = r8
            if (r4 == 0) goto L1e
            if (r5 == 0) goto L1e
            if (r6 != 0) goto L27
            r6 = r0
            goto L20
        L1e:
            if (r6 == 0) goto L27
        L20:
            r1.f28841a = r4
            r1.f28842b = r5
            r1.f28843c = r6
            return
        L27:
            java.lang.AssertionError r2 = new java.lang.AssertionError
            java.lang.String r3 = "Must specify either package or component, but not both"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.p.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.f, com.google.android.gms.common.api.internal.q):void");
    }

    @u2.a
    public p(@NonNull Context context, @NonNull Looper looper, @NonNull String str, @NonNull String str2, @NonNull f fVar, @NonNull q qVar) {
        this(context, looper, str, str2, null, fVar, qVar);
    }
}
