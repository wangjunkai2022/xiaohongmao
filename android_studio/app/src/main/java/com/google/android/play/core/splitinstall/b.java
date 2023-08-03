package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31856a = new com.google.android.play.core.internal.h("SplitInstallHelper");

    private b() {
    }

    public static void a(@NonNull Context context, @NonNull String str) throws UnsatisfiedLinkError {
        synchronized (b1.class) {
            try {
                System.loadLibrary(str);
            } catch (UnsatisfiedLinkError e4) {
                String str2 = context.getApplicationInfo().nativeLibraryDir;
                String mapLibraryName = System.mapLibraryName(str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(mapLibraryName).length());
                sb.append(str2);
                sb.append("/");
                sb.append(mapLibraryName);
                String sb2 = sb.toString();
                if (new File(sb2).exists()) {
                    System.load(sb2);
                } else {
                    throw e4;
                }
            }
        }
    }

    public static void b(@NonNull Context context) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 <= 25 || i4 >= 28) {
            return;
        }
        com.google.android.play.core.internal.h hVar = f31856a;
        hVar.d("Calling dispatchPackageBroadcast", new Object[0]);
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method method = cls.getMethod("currentActivityThread", new Class[0]);
            method.setAccessible(true);
            Object invoke = method.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mAppThread");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(invoke);
            obj.getClass().getMethod("dispatchPackageBroadcast", Integer.TYPE, String[].class).invoke(obj, 3, new String[]{context.getPackageName()});
            hVar.d("Called dispatchPackageBroadcast", new Object[0]);
        } catch (Exception e4) {
            f31856a.c(e4, "Update app info with dispatchPackageBroadcast failed!", new Object[0]);
        }
    }
}
