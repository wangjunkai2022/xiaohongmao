package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: ComponentDiscovery.java */
/* loaded from: classes2.dex */
public final class i<T> {

    /* renamed from: c  reason: collision with root package name */
    static final String f35439c = "ComponentDiscovery";

    /* renamed from: d  reason: collision with root package name */
    private static final String f35440d = "com.google.firebase.components.ComponentRegistrar";

    /* renamed from: e  reason: collision with root package name */
    private static final String f35441e = "com.google.firebase.components:";

    /* renamed from: a  reason: collision with root package name */
    private final T f35442a;

    /* renamed from: b  reason: collision with root package name */
    private final c<T> f35443b;

    /* compiled from: ComponentDiscovery.java */
    /* loaded from: classes2.dex */
    private static class b implements c<Context> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<? extends Service> f35444a;

        private Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(i.f35439c, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f35444a), 128);
                if (serviceInfo == null) {
                    Log.w(i.f35439c, this.f35444a + " has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(i.f35439c, "Application info not found.");
                return null;
            }
        }

        @Override // com.google.firebase.components.i.c
        /* renamed from: c */
        public List<String> a(Context context) {
            Bundle b10 = b(context);
            if (b10 == null) {
                Log.w(i.f35439c, "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : b10.keySet()) {
                if (i.f35440d.equals(b10.get(str)) && str.startsWith(i.f35441e)) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        private b(Class<? extends Service> cls) {
            this.f35444a = cls;
        }
    }

    /* compiled from: ComponentDiscovery.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    interface c<T> {
        List<String> a(T t9);
    }

    @VisibleForTesting
    i(T t9, c<T> cVar) {
        this.f35442a = t9;
        this.f35443b = cVar;
    }

    public static i<Context> c(Context context, Class<? extends Service> cls) {
        return new i<>(context, new b(cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static k d(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (k.class.isAssignableFrom(cls)) {
                return (k) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, f35440d));
        } catch (ClassNotFoundException unused) {
            Log.w(f35439c, String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e4) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e4);
        } catch (InstantiationException e10) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e10);
        } catch (NoSuchMethodException e11) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e11);
        } catch (InvocationTargetException e12) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e12);
        }
    }

    @Deprecated
    public List<k> a() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f35443b.a(this.f35442a)) {
            try {
                k d4 = d(str);
                if (d4 != null) {
                    arrayList.add(d4);
                }
            } catch (InvalidRegistrarException e4) {
                Log.w(f35439c, "Invalid component registrar.", e4);
            }
        }
        return arrayList;
    }

    public List<o3.b<k>> b() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f35443b.a(this.f35442a)) {
            arrayList.add(h.a(str));
        }
        return arrayList;
    }
}
