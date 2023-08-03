package com.facebook.common.executors;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: StatefulRunnable.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class h<T> implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    protected static final int f10967b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected static final int f10968c = 1;

    /* renamed from: d  reason: collision with root package name */
    protected static final int f10969d = 2;

    /* renamed from: e  reason: collision with root package name */
    protected static final int f10970e = 3;

    /* renamed from: f  reason: collision with root package name */
    protected static final int f10971f = 4;

    /* renamed from: a  reason: collision with root package name */
    protected final AtomicInteger f10972a = new AtomicInteger(0);

    public void a() {
        if (this.f10972a.compareAndSet(0, 2)) {
            d();
        }
    }

    protected void b(@r7.h T result) {
    }

    @r7.h
    protected abstract T c() throws Exception;

    protected void d() {
    }

    protected void e(Exception e4) {
    }

    protected void f(@r7.h T result) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10972a.compareAndSet(0, 1)) {
            try {
                T c10 = c();
                this.f10972a.set(3);
                try {
                    f(c10);
                } finally {
                    b(c10);
                }
            } catch (Exception e4) {
                this.f10972a.set(4);
                e(e4);
            }
        }
    }
}
