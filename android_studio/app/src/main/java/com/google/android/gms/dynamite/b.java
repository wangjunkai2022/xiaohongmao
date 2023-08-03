package com.google.android.gms.dynamite;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class b {
    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")

    /* renamed from: a  reason: collision with root package name */
    private static volatile ClassLoader f29349a;
    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")

    /* renamed from: b  reason: collision with root package name */
    private static volatile Thread f29350b;

    @Nullable
    public static synchronized ClassLoader a() {
        ClassLoader classLoader;
        synchronized (b.class) {
            if (f29349a == null) {
                f29349a = b();
            }
            classLoader = f29349a;
        }
        return classLoader;
    }

    @Nullable
    private static synchronized ClassLoader b() {
        synchronized (b.class) {
            ClassLoader classLoader = null;
            if (f29350b == null) {
                f29350b = c();
                if (f29350b == null) {
                    return null;
                }
            }
            synchronized (f29350b) {
                try {
                    classLoader = f29350b.getContextClassLoader();
                } catch (SecurityException e4) {
                    String valueOf = String.valueOf(e4.getMessage());
                    Log.w("DynamiteLoaderV2CL", valueOf.length() != 0 ? "Failed to get thread context classloader ".concat(valueOf) : new String("Failed to get thread context classloader "));
                }
            }
            return classLoader;
        }
    }

    @Nullable
    private static synchronized Thread c() {
        SecurityException e4;
        a aVar;
        a aVar2;
        ThreadGroup threadGroup;
        synchronized (b.class) {
            ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
            if (threadGroup2 == null) {
                return null;
            }
            synchronized (Void.class) {
                try {
                    int activeGroupCount = threadGroup2.activeGroupCount();
                    ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                    threadGroup2.enumerate(threadGroupArr);
                    int i4 = 0;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= activeGroupCount) {
                            threadGroup = null;
                            break;
                        }
                        threadGroup = threadGroupArr[i10];
                        if ("dynamiteLoader".equals(threadGroup.getName())) {
                            break;
                        }
                        i10++;
                    }
                    if (threadGroup == null) {
                        threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                    }
                    int activeCount = threadGroup.activeCount();
                    Thread[] threadArr = new Thread[activeCount];
                    threadGroup.enumerate(threadArr);
                    while (true) {
                        if (i4 >= activeCount) {
                            aVar2 = null;
                            break;
                        }
                        aVar2 = threadArr[i4];
                        if ("GmsDynamite".equals(aVar2.getName())) {
                            break;
                        }
                        i4++;
                    }
                } catch (SecurityException e10) {
                    e4 = e10;
                    aVar = null;
                }
                if (aVar2 == null) {
                    try {
                        aVar = new a(threadGroup, "GmsDynamite");
                    } catch (SecurityException e11) {
                        e4 = e11;
                        aVar = aVar2;
                    }
                    try {
                        aVar.setContextClassLoader(null);
                        aVar.start();
                    } catch (SecurityException e12) {
                        e4 = e12;
                        String valueOf = String.valueOf(e4.getMessage());
                        Log.w("DynamiteLoaderV2CL", valueOf.length() != 0 ? "Failed to enumerate thread/threadgroup ".concat(valueOf) : new String("Failed to enumerate thread/threadgroup "));
                        aVar2 = aVar;
                        return aVar2;
                    }
                    aVar2 = aVar;
                }
            }
            return aVar2;
        }
    }
}
