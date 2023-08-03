package com.fasterxml.jackson.core.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ThreadLocalBufferManager.java */
/* loaded from: classes.dex */
class k {

    /* renamed from: a  reason: collision with root package name */
    private final Object f14305a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Map<SoftReference<com.fasterxml.jackson.core.util.a>, Boolean> f14306b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final ReferenceQueue<com.fasterxml.jackson.core.util.a> f14307c = new ReferenceQueue<>();

    /* compiled from: ThreadLocalBufferManager.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final k f14308a = new k();

        private a() {
        }
    }

    k() {
    }

    public static k a() {
        return a.f14308a;
    }

    private void c() {
        while (true) {
            SoftReference softReference = (SoftReference) this.f14307c.poll();
            if (softReference == null) {
                return;
            }
            this.f14306b.remove(softReference);
        }
    }

    public int b() {
        int i4;
        synchronized (this.f14305a) {
            i4 = 0;
            c();
            for (SoftReference<com.fasterxml.jackson.core.util.a> softReference : this.f14306b.keySet()) {
                softReference.clear();
                i4++;
            }
            this.f14306b.clear();
        }
        return i4;
    }

    public SoftReference<com.fasterxml.jackson.core.util.a> d(com.fasterxml.jackson.core.util.a aVar) {
        SoftReference<com.fasterxml.jackson.core.util.a> softReference = new SoftReference<>(aVar, this.f14307c);
        this.f14306b.put(softReference, Boolean.TRUE);
        c();
        return softReference;
    }
}
