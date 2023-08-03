package io.sentry.android.core;

import android.os.Build;
import io.sentry.SentryLevel;
import io.sentry.protocol.Device;
import m8.a;

/* compiled from: BuildInfoProvider.java */
@a.c
/* loaded from: classes4.dex */
public final class m0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    final io.sentry.o0 f82521a;

    public m0(@m8.g io.sentry.o0 o0Var) {
        this.f82521a = (io.sentry.o0) io.sentry.util.l.c(o0Var, "The ILogger object is required.");
    }

    @m8.h
    public String a() {
        return Build.TAGS;
    }

    @m8.h
    public String b() {
        return Build.MANUFACTURER;
    }

    @m8.h
    public String c() {
        return Build.MODEL;
    }

    public int d() {
        return Build.VERSION.SDK_INT;
    }

    @m8.h
    public String e() {
        return Build.VERSION.RELEASE;
    }

    @m8.h
    public Boolean f() {
        boolean z9;
        try {
            if (!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) {
                String str = Build.FINGERPRINT;
                if (!str.startsWith("generic") && !str.startsWith("unknown")) {
                    String str2 = Build.HARDWARE;
                    if (!str2.contains("goldfish") && !str2.contains("ranchu")) {
                        String str3 = Build.MODEL;
                        if (!str3.contains("google_sdk") && !str3.contains("Emulator") && !str3.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion")) {
                            String str4 = Build.PRODUCT;
                            if (!str4.contains("sdk_google") && !str4.contains("google_sdk") && !str4.contains("sdk") && !str4.contains("sdk_x86") && !str4.contains("vbox86p") && !str4.contains("emulator") && !str4.contains(Device.b.f83601l)) {
                                z9 = false;
                                return Boolean.valueOf(z9);
                            }
                        }
                    }
                }
            }
            z9 = true;
            return Boolean.valueOf(z9);
        } catch (Throwable th) {
            this.f82521a.b(SentryLevel.ERROR, "Error checking whether application is running in an emulator.", th);
            return null;
        }
    }
}
