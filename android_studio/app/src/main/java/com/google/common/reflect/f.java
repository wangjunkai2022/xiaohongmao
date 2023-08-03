package com.google.common.reflect;

import com.google.common.base.a0;
import com.google.common.base.q;
import com.google.common.collect.f3;
import com.google.common.collect.p1;
import com.google.common.collect.q1;
import com.google.common.collect.x1;
import com.google.common.collect.x2;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MutableTypeToInstanceMap.java */
@h3.a
/* loaded from: classes2.dex */
public final class f<B> extends p1<TypeToken<? extends B>, B> implements l<B> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<TypeToken<? extends B>, B> f34949a = f3.Y();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MutableTypeToInstanceMap.java */
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends q1<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final Map.Entry<K, V> f34950a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MutableTypeToInstanceMap.java */
        /* loaded from: classes2.dex */
        public static class a extends x1<Map.Entry<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Set f34951a;

            a(Set set) {
                this.f34951a = set;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.x1, com.google.common.collect.e1
            /* renamed from: Y */
            public Set<Map.Entry<K, V>> M() {
                return this.f34951a;
            }

            @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return b.R(super.iterator());
            }

            @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return V();
            }

            @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) W(tArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MutableTypeToInstanceMap.java */
        /* renamed from: com.google.common.reflect.f$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0263b implements q<Map.Entry<K, V>, Map.Entry<K, V>> {
            C0263b() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Map.Entry<K, V> apply(Map.Entry<K, V> entry) {
                return new b(entry);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <K, V> Iterator<Map.Entry<K, V>> R(Iterator<Map.Entry<K, V>> it) {
            return x2.c0(it, new C0263b());
        }

        static <K, V> Set<Map.Entry<K, V>> S(Set<Map.Entry<K, V>> set) {
            return new a(set);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q1, com.google.common.collect.v1
        /* renamed from: M */
        public Map.Entry<K, V> L() {
            return this.f34950a;
        }

        @Override // com.google.common.collect.q1, java.util.Map.Entry
        public V setValue(V v9) {
            throw new UnsupportedOperationException();
        }

        private b(Map.Entry<K, V> entry) {
            this.f34950a = (Map.Entry) a0.E(entry);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T extends B, java.lang.Object] */
    @NullableDecl
    private <T extends B> T X(TypeToken<T> typeToken) {
        return this.f34949a.get(typeToken);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T extends B, java.lang.Object] */
    @NullableDecl
    private <T extends B> T Y(TypeToken<T> typeToken, @NullableDecl T t9) {
        return this.f34949a.put(typeToken, t9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1, com.google.common.collect.v1
    /* renamed from: M */
    public Map<TypeToken<? extends B>, B> L() {
        return this.f34949a;
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @CanIgnoreReturnValue
    @Deprecated
    /* renamed from: W */
    public B put(TypeToken<? extends B> typeToken, B b10) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override // com.google.common.collect.p1, java.util.Map
    public Set<Map.Entry<TypeToken<? extends B>, B>> entrySet() {
        return b.S(super.entrySet());
    }

    @Override // com.google.common.reflect.l
    @NullableDecl
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) X(TypeToken.of((Class) cls));
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @Deprecated
    public void putAll(Map<? extends TypeToken<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override // com.google.common.reflect.l
    @CanIgnoreReturnValue
    @NullableDecl
    public <T extends B> T putInstance(Class<T> cls, @NullableDecl T t9) {
        return (T) Y(TypeToken.of((Class) cls), t9);
    }

    @Override // com.google.common.reflect.l
    @NullableDecl
    public <T extends B> T r(TypeToken<T> typeToken) {
        return (T) X(typeToken.G());
    }

    @Override // com.google.common.reflect.l
    @CanIgnoreReturnValue
    @NullableDecl
    public <T extends B> T z(TypeToken<T> typeToken, @NullableDecl T t9) {
        return (T) Y(typeToken.G(), t9);
    }
}
