package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: BundleUtil.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27518a = "BundleUtil";
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Method f27519b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Method f27520c;

    private c() {
    }

    @Nullable
    public static IBinder a(Bundle bundle, @Nullable String str) {
        if (z0.f27743a >= 18) {
            return bundle.getBinder(str);
        }
        return b(bundle, str);
    }

    @Nullable
    private static IBinder b(Bundle bundle, @Nullable String str) {
        Method method = f27519b;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f27519b = method2;
                method2.setAccessible(true);
                method = f27519b;
            } catch (NoSuchMethodException e4) {
                w.j(f27518a, "Failed to retrieve getIBinder method", e4);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e10) {
            w.j(f27518a, "Failed to invoke getIBinder via reflection", e10);
            return null;
        }
    }

    public static void c(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (z0.f27743a >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            d(bundle, str, iBinder);
        }
    }

    private static void d(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        Method method = f27520c;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                f27520c = method2;
                method2.setAccessible(true);
                method = f27520c;
            } catch (NoSuchMethodException e4) {
                w.j(f27518a, "Failed to retrieve putIBinder method", e4);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e10) {
            w.j(f27518a, "Failed to invoke putIBinder via reflection", e10);
        }
    }
}
