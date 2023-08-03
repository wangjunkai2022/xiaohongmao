package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LruBucketsPoolBackend.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class u<T> implements c0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<T> f12673a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final i<T> f12674b = new i<>();

    @r7.h
    private T b(@r7.h T t9) {
        if (t9 != null) {
            synchronized (this) {
                this.f12673a.remove(t9);
            }
        }
        return t9;
    }

    @VisibleForTesting
    int c() {
        return this.f12674b.g();
    }

    @Override // com.facebook.imagepipeline.memory.c0
    @r7.h
    public T get(int size) {
        return b(this.f12674b.a(size));
    }

    @Override // com.facebook.imagepipeline.memory.c0
    @r7.h
    public T pop() {
        return b(this.f12674b.f());
    }

    @Override // com.facebook.imagepipeline.memory.c0
    public void put(T item) {
        boolean add;
        synchronized (this) {
            add = this.f12673a.add(item);
        }
        if (add) {
            this.f12674b.e(a(item), item);
        }
    }
}
