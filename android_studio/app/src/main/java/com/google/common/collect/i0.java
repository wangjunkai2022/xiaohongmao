package com.google.common.collect;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Queue;

/* compiled from: ConsumingQueueIterator.java */
@h3.b
/* loaded from: classes2.dex */
class i0<T> extends c<T> {

    /* renamed from: c  reason: collision with root package name */
    private final Queue<T> f33554c;

    i0(T... tArr) {
        ArrayDeque arrayDeque = new ArrayDeque(tArr.length);
        this.f33554c = arrayDeque;
        Collections.addAll(arrayDeque, tArr);
    }

    @Override // com.google.common.collect.c
    public T a() {
        return this.f33554c.isEmpty() ? b() : this.f33554c.remove();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(Queue<T> queue) {
        this.f33554c = (Queue) com.google.common.base.a0.E(queue);
    }
}
