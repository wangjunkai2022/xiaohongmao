package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;

/* compiled from: ThreadHandoffProducerQueueImpl.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e1 implements d1 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f12952a = false;

    /* renamed from: b  reason: collision with root package name */
    private final Deque<Runnable> f12953b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12954c;

    public e1(Executor executor) {
        this.f12954c = (Executor) com.facebook.common.internal.j.i(executor);
    }

    private void f() {
        while (!this.f12953b.isEmpty()) {
            this.f12954c.execute(this.f12953b.pop());
        }
        this.f12953b.clear();
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public synchronized void a() {
        this.f12952a = true;
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public synchronized void b(Runnable runnable) {
        this.f12953b.remove(runnable);
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public synchronized void c(Runnable runnable) {
        if (this.f12952a) {
            this.f12953b.add(runnable);
        } else {
            this.f12954c.execute(runnable);
        }
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public synchronized void d() {
        this.f12952a = false;
        f();
    }

    @Override // com.facebook.imagepipeline.producers.d1
    public synchronized boolean e() {
        return this.f12952a;
    }
}
