package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.f2;
import com.google.android.gms.common.internal.u;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import r7.h;
import y2.d0;
import y2.v;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f29283b = new Object();
    @h

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f29284c;
    @NonNull
    @d0

    /* renamed from: a  reason: collision with root package name */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f29285a = new ConcurrentHashMap<>();

    private a() {
    }

    @NonNull
    @u2.a
    public static a b() {
        if (f29284c == null) {
            synchronized (f29283b) {
                if (f29284c == null) {
                    f29284c = new a();
                }
            }
        }
        a aVar = f29284c;
        u.k(aVar);
        return aVar;
    }

    private static void f(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
        }
    }

    private final boolean g(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i4, boolean z9, @h Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((com.google.android.gms.common.wrappers.c.a(context).c(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (h(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f29285a.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                boolean i10 = i(context, intent, serviceConnection, i4, executor);
                if (i10) {
                    return i10;
                }
                return false;
            } finally {
                this.f29285a.remove(serviceConnection, serviceConnection);
            }
        }
        return i(context, intent, serviceConnection, i4, executor);
    }

    private static boolean h(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof f2);
    }

    private static final boolean i(Context context, Intent intent, ServiceConnection serviceConnection, int i4, @h Executor executor) {
        return (!v.p() || executor == null) ? context.bindService(intent, serviceConnection, i4) : context.bindService(intent, i4, executor, serviceConnection);
    }

    @u2.a
    public boolean a(@NonNull Context context, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i4) {
        return g(context, context.getClass().getName(), intent, serviceConnection, i4, true, null);
    }

    @u2.a
    public void c(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        if (h(serviceConnection) && this.f29285a.containsKey(serviceConnection)) {
            try {
                f(context, this.f29285a.get(serviceConnection));
                return;
            } finally {
                this.f29285a.remove(serviceConnection);
            }
        }
        f(context, serviceConnection);
    }

    @u2.a
    public void d(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        try {
            c(context, serviceConnection);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final boolean e(@NonNull Context context, @NonNull String str, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i4, @h Executor executor) {
        return g(context, str, intent, serviceConnection, i4, true, executor);
    }
}
