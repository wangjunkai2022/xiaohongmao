package com.koushikdutta.async.http;

import android.os.Build;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import java.lang.reflect.Field;
import java.util.Hashtable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

/* loaded from: classes3.dex */
public class SSLEngineSNIConfigurator implements AsyncSSLEngineConfigurator {

    /* renamed from: a  reason: collision with root package name */
    Hashtable<String, EngineHolder> f44680a = new Hashtable<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class EngineHolder implements AsyncSSLEngineConfigurator {

        /* renamed from: a  reason: collision with root package name */
        Field f44681a;

        /* renamed from: b  reason: collision with root package name */
        Field f44682b;

        /* renamed from: c  reason: collision with root package name */
        Field f44683c;

        /* renamed from: d  reason: collision with root package name */
        Field f44684d;

        /* renamed from: e  reason: collision with root package name */
        boolean f44685e;

        public EngineHolder(Class cls) {
            try {
                Field declaredField = cls.getSuperclass().getDeclaredField("peerHost");
                this.f44681a = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = cls.getSuperclass().getDeclaredField("peerPort");
                this.f44682b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("sslParameters");
                this.f44683c = declaredField3;
                declaredField3.setAccessible(true);
                Field declaredField4 = this.f44683c.getType().getDeclaredField("useSni");
                this.f44684d = declaredField4;
                declaredField4.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
        }

        @Override // com.koushikdutta.async.http.AsyncSSLEngineConfigurator
        public void a(SSLEngine sSLEngine, AsyncHttpClientMiddleware.GetSocketData getSocketData, String str, int i4) {
            if (this.f44684d != null && !this.f44685e) {
                try {
                    this.f44681a.set(sSLEngine, str);
                    this.f44682b.set(sSLEngine, Integer.valueOf(i4));
                    this.f44684d.set(this.f44683c.get(sSLEngine), Boolean.TRUE);
                } catch (IllegalAccessException unused) {
                }
            }
        }

        @Override // com.koushikdutta.async.http.AsyncSSLEngineConfigurator
        public SSLEngine b(SSLContext sSLContext, String str, int i4) {
            return null;
        }
    }

    @Override // com.koushikdutta.async.http.AsyncSSLEngineConfigurator
    public void a(SSLEngine sSLEngine, AsyncHttpClientMiddleware.GetSocketData getSocketData, String str, int i4) {
        c(sSLEngine).a(sSLEngine, getSocketData, str, i4);
    }

    @Override // com.koushikdutta.async.http.AsyncSSLEngineConfigurator
    public SSLEngine b(SSLContext sSLContext, String str, int i4) {
        if (com.google.android.gms.security.a.f31074a.equals(sSLContext.getProvider().getName()) || Build.VERSION.SDK_INT >= 23) {
            return sSLContext.createSSLEngine(str, i4);
        }
        return sSLContext.createSSLEngine();
    }

    EngineHolder c(SSLEngine sSLEngine) {
        String canonicalName = sSLEngine.getClass().getCanonicalName();
        EngineHolder engineHolder = this.f44680a.get(canonicalName);
        if (engineHolder == null) {
            EngineHolder engineHolder2 = new EngineHolder(sSLEngine.getClass());
            this.f44680a.put(canonicalName, engineHolder2);
            return engineHolder2;
        }
        return engineHolder;
    }
}
