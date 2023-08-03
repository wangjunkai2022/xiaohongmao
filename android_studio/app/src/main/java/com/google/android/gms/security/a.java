package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.f;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f31074a = "GmsCore_OpenSSL";

    /* renamed from: b  reason: collision with root package name */
    private static final f f31075b = f.i();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f31076c = new Object();
    @GuardedBy("ProviderInstaller.lock")

    /* renamed from: d  reason: collision with root package name */
    private static Method f31077d = null;
    @GuardedBy("ProviderInstaller.lock")

    /* renamed from: e  reason: collision with root package name */
    private static Method f31078e = null;

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* renamed from: com.google.android.gms.security.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0200a {
        void a();

        void b(int i4, @Nullable Intent intent);
    }

    public static void a(@NonNull Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Context context2;
        u.l(context, "Context must not be null");
        f31075b.p(context, 11925000);
        synchronized (f31076c) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                context2 = DynamiteModule.e(context, DynamiteModule.f29333f, "com.google.android.gms.providerinstaller.dynamite").b();
            } catch (DynamiteModule.LoadingException e4) {
                String valueOf = String.valueOf(e4.getMessage());
                Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load providerinstaller module: ".concat(valueOf) : new String("Failed to load providerinstaller module: "));
                context2 = null;
            }
            if (context2 == null) {
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                Context i4 = h.i(context);
                if (i4 != null) {
                    try {
                        if (f31078e == null) {
                            Class cls = Long.TYPE;
                            f31078e = d(i4, "com.google.android.gms.common.security.ProviderInstallerImpl", "reportRequestStats", new Class[]{Context.class, cls, cls});
                        }
                        f31078e.invoke(null, context, Long.valueOf(elapsedRealtime), Long.valueOf(elapsedRealtime2));
                    } catch (Exception e10) {
                        String valueOf2 = String.valueOf(e10.getMessage());
                        Log.w("ProviderInstaller", valueOf2.length() != 0 ? "Failed to report request stats: ".concat(valueOf2) : new String("Failed to report request stats: "));
                    }
                }
                if (i4 != null) {
                    e(i4, context, "com.google.android.gms.common.security.ProviderInstallerImpl");
                    return;
                } else {
                    Log.e("ProviderInstaller", "Failed to get remote context");
                    throw new GooglePlayServicesNotAvailableException(8);
                }
            }
            e(context2, context, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
        }
    }

    public static void b(@NonNull Context context, @NonNull InterfaceC0200a interfaceC0200a) {
        u.l(context, "Context must not be null");
        u.l(interfaceC0200a, "Listener must not be null");
        u.f("Must be called on the UI thread");
        new b(context, interfaceC0200a).execute(new Void[0]);
    }

    private static Method d(Context context, String str, String str2, Class[] clsArr) throws ClassNotFoundException, NoSuchMethodException {
        return context.getClassLoader().loadClass(str).getMethod(str2, clsArr);
    }

    @GuardedBy("ProviderInstaller.lock")
    private static void e(Context context, Context context2, String str) throws GooglePlayServicesNotAvailableException {
        try {
            if (f31077d == null) {
                f31077d = d(context, str, "insertProvider", new Class[]{Context.class});
            }
            f31077d.invoke(null, context);
        } catch (Exception e4) {
            Throwable cause = e4.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                String valueOf = String.valueOf(cause == null ? e4.getMessage() : cause.getMessage());
                Log.e("ProviderInstaller", valueOf.length() != 0 ? "Failed to install provider: ".concat(valueOf) : new String("Failed to install provider: "));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
