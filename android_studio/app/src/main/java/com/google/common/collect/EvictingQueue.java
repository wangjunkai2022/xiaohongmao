package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class EvictingQueue<E> extends w1<E> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f32653c = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Queue<E> f32654a;
    @h3.d

    /* renamed from: b  reason: collision with root package name */
    final int f32655b;

    private EvictingQueue(int i4) {
        com.google.common.base.a0.k(i4 >= 0, "maxSize (%s) must >= 0", i4);
        this.f32654a = new ArrayDeque(i4);
        this.f32655b = i4;
    }

    public static <E> EvictingQueue<E> create(int i4) {
        return new EvictingQueue<>(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.w1, com.google.common.collect.e1
    /* renamed from: Y */
    public Queue<E> M() {
        return this.f32654a;
    }

    @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
    @CanIgnoreReturnValue
    public boolean add(E e4) {
        com.google.common.base.a0.E(e4);
        if (this.f32655b == 0) {
            return true;
        }
        if (size() == this.f32655b) {
            this.f32654a.remove();
        }
        this.f32654a.add(e4);
        return true;
    }

    @Override // com.google.common.collect.e1, java.util.Collection
    @CanIgnoreReturnValue
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size >= this.f32655b) {
            clear();
            return w2.a(this, w2.N(collection, size - this.f32655b));
        }
        return N(collection);
    }

    @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return M().contains(com.google.common.base.a0.E(obj));
    }

    @Override // com.google.common.collect.w1, java.util.Queue
    @CanIgnoreReturnValue
    public boolean offer(E e4) {
        return add(e4);
    }

    public int remainingCapacity() {
        return this.f32655b - size();
    }

    @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean remove(Object obj) {
        return M().remove(com.google.common.base.a0.E(obj));
    }
}
