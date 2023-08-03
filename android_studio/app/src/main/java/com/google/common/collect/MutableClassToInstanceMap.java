package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@h3.c
/* loaded from: classes2.dex */
public final class MutableClassToInstanceMap<B> extends p1<Class<? extends B>, B> implements x<B>, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<? extends B>, B> f32926a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends q1<Class<? extends B>, B> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map.Entry f32927a;

        a(Map.Entry entry) {
            this.f32927a = entry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q1, com.google.common.collect.v1
        /* renamed from: M */
        public Map.Entry<Class<? extends B>, B> L() {
            return this.f32927a;
        }

        @Override // com.google.common.collect.q1, java.util.Map.Entry
        public B setValue(B b10) {
            return (B) super.setValue(MutableClassToInstanceMap.X(getKey(), b10));
        }
    }

    /* loaded from: classes2.dex */
    class b extends x1<Map.Entry<Class<? extends B>, B>> {

        /* loaded from: classes2.dex */
        class a extends g5<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>> {
            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            /* renamed from: b */
            public Map.Entry<Class<? extends B>, B> a(Map.Entry<Class<? extends B>, B> entry) {
                return MutableClassToInstanceMap.Y(entry);
            }
        }

        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<Map.Entry<Class<? extends B>, B>> M() {
            return MutableClassToInstanceMap.this.L().entrySet();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
            return new a(M().iterator());
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

    /* loaded from: classes2.dex */
    private static final class c<B> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32930b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<? extends B>, B> f32931a;

        c(Map<Class<? extends B>, B> map) {
            this.f32931a = map;
        }

        Object a() {
            return MutableClassToInstanceMap.create(this.f32931a);
        }
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        this.f32926a = (Map) com.google.common.base.a0.E(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public static <B, T extends B> T X(Class<T> cls, B b10) {
        return (T) com.google.common.primitives.i.f(cls).cast(b10);
    }

    static <B> Map.Entry<Class<? extends B>, B> Y(Map.Entry<Class<? extends B>, B> entry) {
        return new a(entry);
    }

    private Object Z() {
        return new c(L());
    }

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1, com.google.common.collect.v1
    /* renamed from: M */
    public Map<Class<? extends B>, B> L() {
        return this.f32926a;
    }

    @Override // com.google.common.collect.p1, java.util.Map
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new b();
    }

    @Override // com.google.common.collect.x
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) X(cls, get(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((Class<? extends Class<? extends B>>) obj, (Class<? extends B>) obj2);
    }

    @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            X((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.x
    @CanIgnoreReturnValue
    public <T extends B> T putInstance(Class<T> cls, T t9) {
        return (T) X(cls, put((Class<? extends Class<T>>) cls, (Class<T>) t9));
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    @CanIgnoreReturnValue
    public B put(Class<? extends B> cls, B b10) {
        return (B) super.put((MutableClassToInstanceMap<B>) cls, (Class<? extends B>) X(cls, b10));
    }
}
