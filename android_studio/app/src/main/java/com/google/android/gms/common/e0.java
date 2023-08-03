package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.j1;
import com.google.android.gms.common.internal.k1;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: e  reason: collision with root package name */
    private static volatile k1 f29001e;

    /* renamed from: g  reason: collision with root package name */
    private static Context f29003g;

    /* renamed from: a  reason: collision with root package name */
    static final c0 f28997a = new w(a0.z("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b  reason: collision with root package name */
    static final c0 f28998b = new x(a0.z("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c  reason: collision with root package name */
    static final c0 f28999c = new y(a0.z("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* renamed from: d  reason: collision with root package name */
    static final c0 f29000d = new z(a0.z("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f  reason: collision with root package name */
    private static final Object f29002f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 a(String str, a0 a0Var, boolean z9, boolean z10) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return f(str, a0Var, z9, z10);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.dynamic.d, android.os.IBinder] */
    public static l0 b(String str, boolean z9, boolean z10, boolean z11) {
        l0 d4;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            com.google.android.gms.common.internal.u.k(f29003g);
            try {
                g();
                try {
                    zzq m12 = f29001e.m1(new zzn(str, z9, false, com.google.android.gms.dynamic.f.n1(f29003g), false));
                    if (m12.zzb()) {
                        d4 = l0.b();
                    } else {
                        String zza = m12.zza();
                        if (zza == null) {
                            zza = "error checking package certificate";
                        }
                        d4 = m12.zzc() == 4 ? l0.d(zza, new PackageManager.NameNotFoundException()) : l0.c(zza);
                    }
                } catch (RemoteException e4) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e4);
                    d4 = l0.d("module call", e4);
                }
            } catch (DynamiteModule.LoadingException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                String valueOf = String.valueOf(e10.getMessage());
                d4 = l0.d(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e10);
            }
            return d4;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String c(boolean z9, String str, a0 a0Var) throws Exception {
        String str2 = true != (!z9 && f(str, a0Var, true, false).f29224a) ? "not allowed" : "debug cert rejected";
        MessageDigest b10 = y2.a.b("SHA-1");
        com.google.android.gms.common.internal.u.k(b10);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, y2.n.a(b10.digest(a0Var.n1())), Boolean.valueOf(z9), "12451000.false");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void d(Context context) {
        synchronized (e0.class) {
            if (f29003g != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            } else if (context != null) {
                f29003g = context.getApplicationContext();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                g();
                return f29001e.o();
            } catch (RemoteException | DynamiteModule.LoadingException e4) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e4);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return false;
            }
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static l0 f(final String str, final a0 a0Var, final boolean z9, boolean z10) {
        try {
            g();
            com.google.android.gms.common.internal.u.k(f29003g);
            try {
                return f29001e.k1(new zzs(str, a0Var, z9, z10), com.google.android.gms.dynamic.f.n1(f29003g.getPackageManager())) ? l0.b() : new k0(new Callable() { // from class: com.google.android.gms.common.v
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return e0.c(z9, str, a0Var);
                    }
                }, null);
            } catch (RemoteException e4) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e4);
                return l0.d("module call", e4);
            }
        } catch (DynamiteModule.LoadingException e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            String valueOf = String.valueOf(e10.getMessage());
            return l0.d(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e10);
        }
    }

    private static void g() throws DynamiteModule.LoadingException {
        if (f29001e != null) {
            return;
        }
        com.google.android.gms.common.internal.u.k(f29003g);
        synchronized (f29002f) {
            if (f29001e == null) {
                f29001e = j1.x(DynamiteModule.e(f29003g, DynamiteModule.f29333f, "com.google.android.gms.googlecertificates").d("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
