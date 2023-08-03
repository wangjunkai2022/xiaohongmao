package com.google.common.reflect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.p1;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Map;

/* compiled from: ImmutableTypeToInstanceMap.java */
@h3.a
/* loaded from: classes2.dex */
public final class d<B> extends p1<TypeToken<? extends B>, B> implements l<B> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<TypeToken<? extends B>, B> f34945a;

    /* compiled from: ImmutableTypeToInstanceMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static final class b<B> {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap.b<TypeToken<? extends B>, B> f34946a;

        public d<B> a() {
            return new d<>(this.f34946a.a());
        }

        @CanIgnoreReturnValue
        public <T extends B> b<B> b(TypeToken<T> typeToken, T t9) {
            this.f34946a.d(typeToken.G(), t9);
            return this;
        }

        @CanIgnoreReturnValue
        public <T extends B> b<B> c(Class<T> cls, T t9) {
            this.f34946a.d(TypeToken.of((Class) cls), t9);
            return this;
        }

        private b() {
            this.f34946a = ImmutableMap.builder();
        }
    }

    public static <B> b<B> W() {
        return new b<>();
    }

    public static <B> d<B> X() {
        return new d<>(ImmutableMap.of());
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T extends B, java.lang.Object] */
    private <T extends B> T Z(TypeToken<T> typeToken) {
        return this.f34945a.get(typeToken);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1, com.google.common.collect.v1
    /* renamed from: M */
    public Map<TypeToken<? extends B>, B> L() {
        return this.f34945a;
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @CanIgnoreReturnValue
    @Deprecated
    /* renamed from: Y */
    public B put(TypeToken<? extends B> typeToken, B b10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.reflect.l
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) Z(TypeToken.of((Class) cls));
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @Deprecated
    public void putAll(Map<? extends TypeToken<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.reflect.l
    @CanIgnoreReturnValue
    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.reflect.l
    public <T extends B> T r(TypeToken<T> typeToken) {
        return (T) Z(typeToken.G());
    }

    @Override // com.google.common.reflect.l
    @CanIgnoreReturnValue
    @Deprecated
    public <T extends B> T z(TypeToken<T> typeToken, T t9) {
        throw new UnsupportedOperationException();
    }

    private d(ImmutableMap<TypeToken<? extends B>, B> immutableMap) {
        this.f34945a = immutableMap;
    }
}
