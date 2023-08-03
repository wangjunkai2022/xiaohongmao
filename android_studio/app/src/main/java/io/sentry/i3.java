package io.sentry;

import java.io.File;
import m8.a;

/* compiled from: SentryCrashLastRunState.java */
@a.c
/* loaded from: classes4.dex */
public final class i3 {

    /* renamed from: d  reason: collision with root package name */
    private static final i3 f83298d = new i3();

    /* renamed from: a  reason: collision with root package name */
    private boolean f83299a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Boolean f83300b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Object f83301c = new Object();

    private i3() {
    }

    public static i3 a() {
        return f83298d;
    }

    @m8.h
    public Boolean b(@m8.h String str, boolean z9) {
        synchronized (this.f83301c) {
            if (this.f83299a) {
                return this.f83300b;
            } else if (str == null) {
                return null;
            } else {
                boolean z10 = true;
                this.f83299a = true;
                File file = new File(str, io.sentry.cache.d.f83061j);
                File file2 = new File(str, io.sentry.cache.d.f83062k);
                if (file.exists()) {
                    file.delete();
                } else {
                    if (file2.exists()) {
                        if (z9) {
                            file2.delete();
                        }
                        Boolean valueOf = Boolean.valueOf(z10);
                        this.f83300b = valueOf;
                        return valueOf;
                    }
                    z10 = false;
                    Boolean valueOf2 = Boolean.valueOf(z10);
                    this.f83300b = valueOf2;
                    return valueOf2;
                }
                Boolean valueOf22 = Boolean.valueOf(z10);
                this.f83300b = valueOf22;
                return valueOf22;
            }
        }
    }

    @m8.k
    public void c() {
        synchronized (this.f83301c) {
            this.f83299a = false;
            this.f83300b = null;
        }
    }

    public void d(boolean z9) {
        synchronized (this.f83301c) {
            if (!this.f83299a) {
                this.f83300b = Boolean.valueOf(z9);
                this.f83299a = true;
            }
        }
    }
}
