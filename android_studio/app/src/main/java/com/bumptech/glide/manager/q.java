package com.bumptech.glide.manager;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RequestTracker.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9455d = "RequestTracker";

    /* renamed from: a  reason: collision with root package name */
    private final Set<com.bumptech.glide.request.e> f9456a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final Set<com.bumptech.glide.request.e> f9457b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private boolean f9458c;

    @VisibleForTesting
    void a(com.bumptech.glide.request.e eVar) {
        this.f9456a.add(eVar);
    }

    public boolean b(@Nullable com.bumptech.glide.request.e eVar) {
        boolean z9 = true;
        if (eVar == null) {
            return true;
        }
        boolean remove = this.f9456a.remove(eVar);
        if (!this.f9457b.remove(eVar) && !remove) {
            z9 = false;
        }
        if (z9) {
            eVar.clear();
        }
        return z9;
    }

    public void c() {
        for (com.bumptech.glide.request.e eVar : com.bumptech.glide.util.o.k(this.f9456a)) {
            b(eVar);
        }
        this.f9457b.clear();
    }

    public boolean d() {
        return this.f9458c;
    }

    public void e() {
        this.f9458c = true;
        for (com.bumptech.glide.request.e eVar : com.bumptech.glide.util.o.k(this.f9456a)) {
            if (eVar.isRunning() || eVar.g()) {
                eVar.clear();
                this.f9457b.add(eVar);
            }
        }
    }

    public void f() {
        this.f9458c = true;
        for (com.bumptech.glide.request.e eVar : com.bumptech.glide.util.o.k(this.f9456a)) {
            if (eVar.isRunning()) {
                eVar.pause();
                this.f9457b.add(eVar);
            }
        }
    }

    public void g() {
        for (com.bumptech.glide.request.e eVar : com.bumptech.glide.util.o.k(this.f9456a)) {
            if (!eVar.g() && !eVar.e()) {
                eVar.clear();
                if (!this.f9458c) {
                    eVar.i();
                } else {
                    this.f9457b.add(eVar);
                }
            }
        }
    }

    public void h() {
        this.f9458c = false;
        for (com.bumptech.glide.request.e eVar : com.bumptech.glide.util.o.k(this.f9456a)) {
            if (!eVar.g() && !eVar.isRunning()) {
                eVar.i();
            }
        }
        this.f9457b.clear();
    }

    public void i(@NonNull com.bumptech.glide.request.e eVar) {
        this.f9456a.add(eVar);
        if (!this.f9458c) {
            eVar.i();
            return;
        }
        eVar.clear();
        if (Log.isLoggable(f9455d, 2)) {
            Log.v(f9455d, "Paused, delaying request");
        }
        this.f9457b.add(eVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f9456a.size() + ", isPaused=" + this.f9458c + com.alipay.sdk.util.i.f6967d;
    }
}
