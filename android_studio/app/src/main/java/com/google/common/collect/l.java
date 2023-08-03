package com.google.common.collect;

import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractSequentialIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class l<T> extends k5<T> {
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    private T f33674a;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(@NullableDecl T t9) {
        this.f33674a = t9;
    }

    @NullableDecl
    protected abstract T a(T t9);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f33674a != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            try {
                T t9 = this.f33674a;
                this.f33674a = a(t9);
                return t9;
            } catch (Throwable th) {
                this.f33674a = a(this.f33674a);
                throw th;
            }
        }
        throw new NoSuchElementException();
    }
}
