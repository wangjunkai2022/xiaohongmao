package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable(containerOf = {"B"})
@h3.c
/* loaded from: classes2.dex */
public final class ImmutableClassToInstanceMap<B> extends p1<Class<? extends B>, B> implements x<B>, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final ImmutableClassToInstanceMap<Object> f32699b = new ImmutableClassToInstanceMap<>(ImmutableMap.of());

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<Class<? extends B>, B> f32700a;

    /* loaded from: classes2.dex */
    public static final class b<B> {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap.b<Class<? extends B>, B> f32701a = ImmutableMap.builder();

        private static <B, T extends B> T b(Class<T> cls, B b10) {
            return (T) com.google.common.primitives.i.f(cls).cast(b10);
        }

        public ImmutableClassToInstanceMap<B> a() {
            ImmutableMap<Class<? extends B>, B> a10 = this.f32701a.a();
            if (a10.isEmpty()) {
                return ImmutableClassToInstanceMap.of();
            }
            return new ImmutableClassToInstanceMap<>(a10);
        }

        @CanIgnoreReturnValue
        public <T extends B> b<B> c(Class<T> cls, T t9) {
            this.f32701a.d(cls, t9);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public <T extends B> b<B> d(Map<? extends Class<? extends T>, ? extends T> map) {
            for (Map.Entry<? extends Class<? extends T>, ? extends T> entry : map.entrySet()) {
                Class<? extends T> key = entry.getKey();
                this.f32701a.d(key, b(key, entry.getValue()));
            }
            return this;
        }
    }

    public static <B> b<B> builder() {
        return new b<>();
    }

    public static <B, S extends B> ImmutableClassToInstanceMap<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        if (map instanceof ImmutableClassToInstanceMap) {
            return (ImmutableClassToInstanceMap) map;
        }
        return new b().d(map).a();
    }

    public static <B> ImmutableClassToInstanceMap<B> of() {
        return (ImmutableClassToInstanceMap<B>) f32699b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1, com.google.common.collect.v1
    /* renamed from: M */
    public Map<Class<? extends B>, B> L() {
        return this.f32700a;
    }

    Object W() {
        return isEmpty() ? of() : this;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T extends B, java.lang.Object] */
    @Override // com.google.common.collect.x
    @NullableDecl
    public <T extends B> T getInstance(Class<T> cls) {
        return this.f32700a.get(com.google.common.base.a0.E(cls));
    }

    @Override // com.google.common.collect.x
    @CanIgnoreReturnValue
    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t9) {
        throw new UnsupportedOperationException();
    }

    private ImmutableClassToInstanceMap(ImmutableMap<Class<? extends B>, B> immutableMap) {
        this.f32700a = immutableMap;
    }

    public static <B, T extends B> ImmutableClassToInstanceMap<B> of(Class<T> cls, T t9) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.of(cls, t9));
    }
}
