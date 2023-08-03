package com.google.android.gms.common.wrappers;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import y2.v;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f29299a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f29300b;

    @u2.a
    public static synchronized boolean a(@NonNull Context context) {
        Boolean bool;
        synchronized (a.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f29299a;
            if (context2 != null && (bool = f29300b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f29300b = null;
            if (v.n()) {
                f29300b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f29300b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f29300b = Boolean.FALSE;
                }
            }
            f29299a = applicationContext;
            return f29300b.booleanValue();
        }
    }
}
