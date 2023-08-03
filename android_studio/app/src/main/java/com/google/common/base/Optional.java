package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(serializable = true)
/* loaded from: classes2.dex */
public abstract class Optional<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f32078a = 0;

    /* loaded from: classes2.dex */
    static class a implements Iterable<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterable f32079a;

        /* renamed from: com.google.common.base.Optional$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0202a extends b<T> {

            /* renamed from: c  reason: collision with root package name */
            private final Iterator<? extends Optional<? extends T>> f32080c;

            C0202a() {
                this.f32080c = (Iterator) a0.E(a.this.f32079a.iterator());
            }

            @Override // com.google.common.base.b
            protected T a() {
                while (this.f32080c.hasNext()) {
                    Optional<? extends T> next = this.f32080c.next();
                    if (next.isPresent()) {
                        return next.get();
                    }
                }
                return b();
            }
        }

        a(Iterable iterable) {
            this.f32079a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C0202a();
        }
    }

    public static <T> Optional<T> absent() {
        return com.google.common.base.a.b();
    }

    public static <T> Optional<T> fromNullable(@NullableDecl T t9) {
        return t9 == null ? absent() : new d0(t9);
    }

    public static <T> Optional<T> of(T t9) {
        return new d0(a0.E(t9));
    }

    @h3.a
    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        a0.E(iterable);
        return new a(iterable);
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(@NullableDecl Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    @h3.a
    public abstract T or(i0<? extends T> i0Var);

    public abstract T or(T t9);

    @NullableDecl
    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(q<? super T, V> qVar);
}
