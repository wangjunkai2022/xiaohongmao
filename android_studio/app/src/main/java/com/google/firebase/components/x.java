package com.google.firebase.components;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazySet.java */
/* loaded from: classes2.dex */
public class x<T> implements o3.b<Set<T>> {

    /* renamed from: b  reason: collision with root package name */
    private volatile Set<T> f35481b = null;

    /* renamed from: a  reason: collision with root package name */
    private volatile Set<o3.b<T>> f35480a = Collections.newSetFromMap(new ConcurrentHashMap());

    x(Collection<o3.b<T>> collection) {
        this.f35480a.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x<?> b(Collection<o3.b<?>> collection) {
        return new x<>((Set) collection);
    }

    private synchronized void d() {
        for (o3.b<T> bVar : this.f35480a) {
            this.f35481b.add(bVar.get());
        }
        this.f35480a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(o3.b<T> bVar) {
        if (this.f35481b == null) {
            this.f35480a.add(bVar);
        } else {
            this.f35481b.add(bVar.get());
        }
    }

    @Override // o3.b
    /* renamed from: c */
    public Set<T> get() {
        if (this.f35481b == null) {
            synchronized (this) {
                if (this.f35481b == null) {
                    this.f35481b = Collections.newSetFromMap(new ConcurrentHashMap());
                    d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f35481b);
    }
}
