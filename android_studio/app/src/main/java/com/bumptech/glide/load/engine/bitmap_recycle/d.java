package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.m;
import java.util.Queue;

/* compiled from: BaseKeyPool.java */
/* loaded from: classes.dex */
abstract class d<T extends m> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f8629b = 20;

    /* renamed from: a  reason: collision with root package name */
    private final Queue<T> f8630a = com.bumptech.glide.util.o.f(20);

    abstract T a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public T b() {
        T poll = this.f8630a.poll();
        return poll == null ? a() : poll;
    }

    public void c(T t9) {
        if (this.f8630a.size() < 20) {
            this.f8630a.offer(t9);
        }
    }
}
