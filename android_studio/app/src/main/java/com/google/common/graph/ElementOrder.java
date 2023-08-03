package com.google.common.graph;

import com.google.common.base.v;
import com.google.common.collect.f3;
import com.google.common.collect.s3;
import com.google.errorprone.annotations.Immutable;
import java.util.Comparator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@h3.a
/* loaded from: classes2.dex */
public final class ElementOrder<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Type f34073a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private final Comparator<T> f34074b;

    /* loaded from: classes2.dex */
    public enum Type {
        UNORDERED,
        INSERTION,
        SORTED
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34076a;

        static {
            int[] iArr = new int[Type.values().length];
            f34076a = iArr;
            try {
                iArr[Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34076a[Type.INSERTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34076a[Type.SORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private ElementOrder(Type type, @NullableDecl Comparator<T> comparator) {
        this.f34073a = (Type) com.google.common.base.a0.E(type);
        this.f34074b = comparator;
        com.google.common.base.a0.g0((type == Type.SORTED) == (comparator != null));
    }

    public static <S> ElementOrder<S> d() {
        return new ElementOrder<>(Type.INSERTION, null);
    }

    public static <S extends Comparable<? super S>> ElementOrder<S> e() {
        return new ElementOrder<>(Type.SORTED, s3.B());
    }

    public static <S> ElementOrder<S> f(Comparator<S> comparator) {
        return new ElementOrder<>(Type.SORTED, comparator);
    }

    public static <S> ElementOrder<S> h() {
        return new ElementOrder<>(Type.UNORDERED, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public <T1 extends T> ElementOrder<T1> a() {
        return this;
    }

    public Comparator<T> b() {
        Comparator<T> comparator = this.f34074b;
        if (comparator != null) {
            return comparator;
        }
        throw new UnsupportedOperationException("This ordering does not define a comparator.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K extends T, V> Map<K, V> c(int i4) {
        int i10 = a.f34076a[this.f34073a.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return f3.g0(b());
                }
                throw new AssertionError();
            }
            return f3.e0(i4);
        }
        return f3.a0(i4);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ElementOrder) {
            ElementOrder elementOrder = (ElementOrder) obj;
            return this.f34073a == elementOrder.f34073a && com.google.common.base.w.a(this.f34074b, elementOrder.f34074b);
        }
        return false;
    }

    public Type g() {
        return this.f34073a;
    }

    public int hashCode() {
        return com.google.common.base.w.b(this.f34073a, this.f34074b);
    }

    public String toString() {
        v.b f10 = com.google.common.base.v.c(this).f("type", this.f34073a);
        Comparator<T> comparator = this.f34074b;
        if (comparator != null) {
            f10.f("comparator", comparator);
        }
        return f10.toString();
    }
}
