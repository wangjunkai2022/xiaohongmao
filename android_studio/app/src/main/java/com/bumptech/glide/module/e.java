package com.bumptech.glide.module;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ManifestParser.java */
@Deprecated
/* loaded from: classes.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f9489b = "ManifestParser";

    /* renamed from: c  reason: collision with root package name */
    private static final String f9490c = "GlideModule";

    /* renamed from: a  reason: collision with root package name */
    private final Context f9491a;

    public e(Context context) {
        this.f9491a = context;
    }

    private static c b(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Object obj = null;
            try {
                obj = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException e4) {
                c(cls, e4);
            } catch (InstantiationException e10) {
                c(cls, e10);
            } catch (NoSuchMethodException e11) {
                c(cls, e11);
            } catch (InvocationTargetException e12) {
                c(cls, e12);
            }
            if (obj instanceof c) {
                return (c) obj;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + obj);
        } catch (ClassNotFoundException e13) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e13);
        }
    }

    private static void c(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    public List<c> a() {
        if (Log.isLoggable(f9489b, 3)) {
            Log.d(f9489b, "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f9491a.getPackageManager().getApplicationInfo(this.f9491a.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                if (Log.isLoggable(f9489b, 3)) {
                    Log.d(f9489b, "Got null app info metadata");
                }
                return arrayList;
            }
            if (Log.isLoggable(f9489b, 2)) {
                Log.v(f9489b, "Got app info metadata: " + applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if (f9490c.equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(b(str));
                    if (Log.isLoggable(f9489b, 3)) {
                        Log.d(f9489b, "Loaded Glide module: " + str);
                    }
                }
            }
            if (Log.isLoggable(f9489b, 3)) {
                Log.d(f9489b, "Finished loading Glide modules");
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e4);
        }
    }
}
