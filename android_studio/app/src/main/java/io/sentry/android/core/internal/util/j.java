package io.sentry.android.core.internal.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import io.sentry.SentryLevel;
import io.sentry.android.core.m0;
import io.sentry.o0;
import java.io.File;
import java.nio.charset.Charset;
import m8.a;

/* compiled from: RootChecker.java */
@a.c
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: g  reason: collision with root package name */
    private static final Charset f82474g = Charset.forName("UTF-8");
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f82475a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m0 f82476b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final o0 f82477c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final String[] f82478d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final String[] f82479e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Runtime f82480f;

    public j(@m8.g Context context, @m8.g m0 m0Var, @m8.g o0 o0Var) {
        this(context, m0Var, o0Var, new String[]{"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su", "/su/bin", "/system/xbin/daemonsu"}, new String[]{"com.devadvance.rootcloak", "com.devadvance.rootcloakplus", "com.koushikdutta.superuser", "com.thirdparty.superuser", "eu.chainfire.supersu", "com.noshufou.android.su"}, Runtime.getRuntime());
    }

    private boolean a() {
        String[] strArr;
        for (String str : this.f82478d) {
            try {
            } catch (RuntimeException e4) {
                this.f82477c.a(SentryLevel.ERROR, e4, "Error when trying to check if root file %s exists.", str);
            }
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    private boolean b(@m8.g o0 o0Var) {
        String[] strArr;
        m0 m0Var = new m0(o0Var);
        PackageManager packageManager = this.f82475a.getPackageManager();
        if (packageManager != null) {
            for (String str : this.f82479e) {
                try {
                    if (m0Var.d() >= 33) {
                        packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(0L));
                        return true;
                    }
                    packageManager.getPackageInfo(str, 0);
                    return true;
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
        if (0 == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean c() {
        /*
            r6 = this;
            java.lang.String r0 = "/system/xbin/which"
            java.lang.String r1 = "su"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            r1 = 0
            r2 = 0
            java.lang.Runtime r3 = r6.f82480f     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.lang.Process r2 = r3.exec(r0)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.io.InputStream r4 = r2.getInputStream()     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.nio.charset.Charset r5 = io.sentry.android.core.internal.util.j.f82474g     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.lang.String r3 = r0.readLine()     // Catch: java.lang.Throwable -> L30
            if (r3 == 0) goto L28
            r3 = 1
            goto L29
        L28:
            r3 = 0
        L29:
            r0.close()     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            r2.destroy()
            return r3
        L30:
            r3 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L35
            goto L39
        L35:
            r0 = move-exception
            r3.addSuppressed(r0)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
        L39:
            throw r3     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
        L3a:
            r0 = move-exception
            io.sentry.o0 r3 = r6.f82477c     // Catch: java.lang.Throwable -> L59
            io.sentry.SentryLevel r4 = io.sentry.SentryLevel.DEBUG     // Catch: java.lang.Throwable -> L59
            java.lang.String r5 = "Error when trying to check if SU exists."
            r3.b(r4, r5, r0)     // Catch: java.lang.Throwable -> L59
            if (r2 == 0) goto L58
        L46:
            r2.destroy()
            goto L58
        L4a:
            io.sentry.o0 r0 = r6.f82477c     // Catch: java.lang.Throwable -> L59
            io.sentry.SentryLevel r3 = io.sentry.SentryLevel.DEBUG     // Catch: java.lang.Throwable -> L59
            java.lang.String r4 = "SU isn't found on this Device."
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L59
            r0.c(r3, r4, r5)     // Catch: java.lang.Throwable -> L59
            if (r2 == 0) goto L58
            goto L46
        L58:
            return r1
        L59:
            r0 = move-exception
            if (r2 == 0) goto L5f
            r2.destroy()
        L5f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.internal.util.j.c():boolean");
    }

    private boolean d() {
        String a10 = this.f82476b.a();
        return a10 != null && a10.contains("test-keys");
    }

    public boolean e() {
        return d() || a() || c() || b(this.f82477c);
    }

    j(@m8.g Context context, @m8.g m0 m0Var, @m8.g o0 o0Var, @m8.g String[] strArr, @m8.g String[] strArr2, @m8.g Runtime runtime) {
        this.f82475a = (Context) io.sentry.util.l.c(context, "The application context is required.");
        this.f82476b = (m0) io.sentry.util.l.c(m0Var, "The BuildInfoProvider is required.");
        this.f82477c = (o0) io.sentry.util.l.c(o0Var, "The Logger is required.");
        this.f82478d = (String[]) io.sentry.util.l.c(strArr, "The root Files are required.");
        this.f82479e = (String[]) io.sentry.util.l.c(strArr2, "The root packages are required.");
        this.f82480f = (Runtime) io.sentry.util.l.c(runtime, "The Runtime is required.");
    }
}
