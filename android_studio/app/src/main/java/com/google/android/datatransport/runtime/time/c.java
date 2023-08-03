package com.google.android.datatransport.runtime.time;

import java.util.concurrent.atomic.AtomicLong;

/* compiled from: TestClock.java */
/* loaded from: classes2.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicLong f20659a;

    public c(long j4) {
        this.f20659a = new AtomicLong(j4);
    }

    @Override // com.google.android.datatransport.runtime.time.a
    public long a() {
        return this.f20659a.get();
    }

    public void b(long j4) {
        if (j4 >= 0) {
            this.f20659a.addAndGet(j4);
            return;
        }
        throw new IllegalArgumentException("cannot advance time backwards.");
    }

    public void c() {
        b(1L);
    }
}
