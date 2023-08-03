package com.google.firebase.components;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RestrictedComponentContainer.java */
/* loaded from: classes2.dex */
public final class e0 extends com.google.firebase.components.a {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Class<?>> f35417a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Class<?>> f35418b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<Class<?>> f35419c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<Class<?>> f35420d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<Class<?>> f35421e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<Class<?>> f35422f;

    /* renamed from: g  reason: collision with root package name */
    private final g f35423g;

    /* compiled from: RestrictedComponentContainer.java */
    /* loaded from: classes2.dex */
    private static class a implements n3.c {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Class<?>> f35424a;

        /* renamed from: b  reason: collision with root package name */
        private final n3.c f35425b;

        public a(Set<Class<?>> set, n3.c cVar) {
            this.f35424a = set;
            this.f35425b = cVar;
        }

        @Override // n3.c
        public void c(n3.a<?> aVar) {
            if (this.f35424a.contains(aVar.b())) {
                this.f35425b.c(aVar);
                return;
            }
            throw new DependencyException(String.format("Attempting to publish an undeclared event %s.", aVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(f<?> fVar, g gVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (t tVar : fVar.c()) {
            if (tVar.e()) {
                if (tVar.g()) {
                    hashSet4.add(tVar.c());
                } else {
                    hashSet.add(tVar.c());
                }
            } else if (tVar.d()) {
                hashSet3.add(tVar.c());
            } else if (tVar.g()) {
                hashSet5.add(tVar.c());
            } else {
                hashSet2.add(tVar.c());
            }
        }
        if (!fVar.f().isEmpty()) {
            hashSet.add(n3.c.class);
        }
        this.f35417a = Collections.unmodifiableSet(hashSet);
        this.f35418b = Collections.unmodifiableSet(hashSet2);
        this.f35419c = Collections.unmodifiableSet(hashSet3);
        this.f35420d = Collections.unmodifiableSet(hashSet4);
        this.f35421e = Collections.unmodifiableSet(hashSet5);
        this.f35422f = fVar.f();
        this.f35423g = gVar;
    }

    @Override // com.google.firebase.components.g
    public <T> o3.b<Set<T>> b(Class<T> cls) {
        if (this.f35421e.contains(cls)) {
            return this.f35423g.b(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.g
    public <T> Set<T> c(Class<T> cls) {
        if (this.f35420d.contains(cls)) {
            return this.f35423g.c(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // com.google.firebase.components.g
    public <T> o3.b<T> d(Class<T> cls) {
        if (this.f35418b.contains(cls)) {
            return this.f35423g.d(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.g
    public <T> o3.a<T> e(Class<T> cls) {
        if (this.f35419c.contains(cls)) {
            return this.f35423g.e(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", cls));
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.g
    public <T> T get(Class<T> cls) {
        if (this.f35417a.contains(cls)) {
            T t9 = (T) this.f35423g.get(cls);
            return !cls.equals(n3.c.class) ? t9 : (T) new a(this.f35422f, (n3.c) t9);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }
}
