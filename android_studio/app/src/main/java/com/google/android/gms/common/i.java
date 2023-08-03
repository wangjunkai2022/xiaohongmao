package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
/* loaded from: classes2.dex */
public class i {
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private static i f29024c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f29025a;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f29026b;

    public i(@NonNull Context context) {
        this.f29025a = context.getApplicationContext();
    }

    @NonNull
    @u2.a
    public static i a(@NonNull Context context) {
        com.google.android.gms.common.internal.u.k(context);
        synchronized (i.class) {
            if (f29024c == null) {
                e0.d(context);
                f29024c = new i(context);
            }
        }
        return f29024c;
    }

    @r7.h
    static final a0 e(PackageInfo packageInfo, a0... a0VarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        b0 b0Var = new b0(packageInfo.signatures[0].toByteArray());
        for (int i4 = 0; i4 < a0VarArr.length; i4++) {
            if (a0VarArr[i4].equals(b0Var)) {
                return a0VarArr[i4];
            }
        }
        return null;
    }

    public static final boolean f(@NonNull PackageInfo packageInfo, boolean z9) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z9 ? e(packageInfo, d0.f28974a) : e(packageInfo, d0.f28974a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private final l0 g(String str, boolean z9, boolean z10) {
        l0 c10;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return l0.c("null pkg");
        }
        if (!str.equals(this.f29026b)) {
            if (e0.e()) {
                c10 = e0.b(str, h.k(this.f29025a), false, false);
            } else {
                try {
                    PackageInfo packageInfo = this.f29025a.getPackageManager().getPackageInfo(str, 64);
                    boolean k10 = h.k(this.f29025a);
                    if (packageInfo == null) {
                        c10 = l0.c("null pkg");
                    } else {
                        Signature[] signatureArr = packageInfo.signatures;
                        if (signatureArr != null && signatureArr.length == 1) {
                            b0 b0Var = new b0(packageInfo.signatures[0].toByteArray());
                            String str2 = packageInfo.packageName;
                            l0 a10 = e0.a(str2, b0Var, k10, false);
                            c10 = (!a10.f29224a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !e0.a(str2, b0Var, false, true).f29224a) ? a10 : l0.c("debuggable release cert app rejected");
                        } else {
                            c10 = l0.c("single cert required");
                        }
                    }
                } catch (PackageManager.NameNotFoundException e4) {
                    return l0.d(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e4);
                }
            }
            if (c10.f29224a) {
                this.f29026b = str;
            }
            return c10;
        }
        return l0.b();
    }

    @u2.a
    public boolean b(@NonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (f(packageInfo, false)) {
            return true;
        }
        if (f(packageInfo, true)) {
            if (h.k(this.f29025a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public boolean c(@NonNull String str) {
        l0 g4 = g(str, false, false);
        g4.e();
        return g4.f29224a;
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public boolean d(int i4) {
        l0 c10;
        int length;
        String[] packagesForUid = this.f29025a.getPackageManager().getPackagesForUid(i4);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c10 = null;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    c10 = g(packagesForUid[i10], false, false);
                    if (c10.f29224a) {
                        break;
                    }
                    i10++;
                } else {
                    com.google.android.gms.common.internal.u.k(c10);
                    break;
                }
            }
        } else {
            c10 = l0.c("no pkgs");
        }
        c10.e();
        return c10.f29224a;
    }
}
