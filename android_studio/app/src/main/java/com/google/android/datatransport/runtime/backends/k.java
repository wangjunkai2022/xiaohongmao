package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MetadataBackendRegistry.java */
@u7.f
/* loaded from: classes2.dex */
class k implements e {

    /* renamed from: d  reason: collision with root package name */
    private static final String f20391d = "BackendRegistry";

    /* renamed from: e  reason: collision with root package name */
    private static final String f20392e = "backend:";

    /* renamed from: a  reason: collision with root package name */
    private final a f20393a;

    /* renamed from: b  reason: collision with root package name */
    private final i f20394b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, m> f20395c;

    /* compiled from: MetadataBackendRegistry.java */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f20396a;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f20397b = null;

        a(Context context) {
            this.f20396a = context;
        }

        private Map<String, String> a(Context context) {
            Bundle d4 = d(context);
            if (d4 == null) {
                Log.w(k.f20391d, "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : d4.keySet()) {
                Object obj = d4.get(str);
                if ((obj instanceof String) && str.startsWith(k.f20392e)) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }

        private Map<String, String> c() {
            if (this.f20397b == null) {
                this.f20397b = a(this.f20396a);
            }
            return this.f20397b;
        }

        private static Bundle d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(k.f20391d, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
                if (serviceInfo == null) {
                    Log.w(k.f20391d, "TransportBackendDiscovery has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(k.f20391d, "Application info not found.");
                return null;
            }
        }

        @Nullable
        d b(String str) {
            String str2 = c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (d) Class.forName(str2).asSubclass(d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e4) {
                Log.w(k.f20391d, String.format("Class %s is not found.", str2), e4);
                return null;
            } catch (IllegalAccessException e10) {
                Log.w(k.f20391d, String.format("Could not instantiate %s.", str2), e10);
                return null;
            } catch (InstantiationException e11) {
                Log.w(k.f20391d, String.format("Could not instantiate %s.", str2), e11);
                return null;
            } catch (NoSuchMethodException e12) {
                Log.w(k.f20391d, String.format("Could not instantiate %s", str2), e12);
                return null;
            } catch (InvocationTargetException e13) {
                Log.w(k.f20391d, String.format("Could not instantiate %s", str2), e13);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public k(Context context, i iVar) {
        this(new a(context), iVar);
    }

    @Override // com.google.android.datatransport.runtime.backends.e
    @Nullable
    public synchronized m get(String str) {
        if (this.f20395c.containsKey(str)) {
            return this.f20395c.get(str);
        }
        d b10 = this.f20393a.b(str);
        if (b10 == null) {
            return null;
        }
        m create = b10.create(this.f20394b.a(str));
        this.f20395c.put(str, create);
        return create;
    }

    k(a aVar, i iVar) {
        this.f20395c = new HashMap();
        this.f20393a = aVar;
        this.f20394b = iVar;
    }
}
