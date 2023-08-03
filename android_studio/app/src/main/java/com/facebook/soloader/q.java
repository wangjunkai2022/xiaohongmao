package com.facebook.soloader;

import android.util.Log;
import java.util.List;

/* compiled from: NativeLibrary.java */
/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: f  reason: collision with root package name */
    private static final String f13544f = "com.facebook.soloader.q";
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private List<String> f13546b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f13545a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private Boolean f13547c = Boolean.TRUE;

    /* renamed from: d  reason: collision with root package name */
    private boolean f13548d = false;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private volatile UnsatisfiedLinkError f13549e = null;

    protected q(List<String> list) {
        this.f13546b = list;
    }

    public void a() throws UnsatisfiedLinkError {
        if (!d()) {
            throw this.f13549e;
        }
    }

    @r7.h
    public UnsatisfiedLinkError b() {
        return this.f13549e;
    }

    protected void c() throws UnsatisfiedLinkError {
    }

    @r7.h
    public boolean d() {
        synchronized (this.f13545a) {
            if (!this.f13547c.booleanValue()) {
                return this.f13548d;
            }
            try {
                List<String> list = this.f13546b;
                if (list != null) {
                    for (String str : list) {
                        SoLoader.t(str);
                    }
                }
                c();
                this.f13548d = true;
                this.f13546b = null;
            } catch (UnsatisfiedLinkError e4) {
                Log.e(f13544f, "Failed to load native lib (initial check): ", e4);
                this.f13549e = e4;
                this.f13548d = false;
            } catch (Throwable th) {
                Log.e(f13544f, "Failed to load native lib (other error): ", th);
                this.f13549e = new UnsatisfiedLinkError("Failed loading libraries");
                this.f13549e.initCause(th);
                this.f13548d = false;
            }
            this.f13547c = Boolean.FALSE;
            return this.f13548d;
        }
    }
}
