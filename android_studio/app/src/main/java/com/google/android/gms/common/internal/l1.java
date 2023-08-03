package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class l1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f29156a = new Object();
    @s7.a("sLock")

    /* renamed from: b  reason: collision with root package name */
    private static boolean f29157b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static String f29158c;

    /* renamed from: d  reason: collision with root package name */
    private static int f29159d;

    public static int a(Context context) {
        c(context);
        return f29159d;
    }

    @Nullable
    public static String b(Context context) {
        c(context);
        return f29158c;
    }

    private static void c(Context context) {
        Bundle bundle;
        synchronized (f29156a) {
            if (f29157b) {
                return;
            }
            f29157b = true;
            try {
                bundle = com.google.android.gms.common.wrappers.c.a(context).c(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e4) {
                Log.wtf("MetadataValueReader", "This should never happen.", e4);
            }
            if (bundle == null) {
                return;
            }
            f29158c = bundle.getString("com.google.app.id");
            f29159d = bundle.getInt("com.google.android.gms.version");
        }
    }
}
