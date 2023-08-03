package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* compiled from: EventBus.java */
/* loaded from: classes2.dex */
class v implements n3.d, n3.c {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, ConcurrentHashMap<n3.b<Object>, Executor>> f35474a = new HashMap();
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private Queue<n3.a<?>> f35475b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f35476c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Executor executor) {
        this.f35476c = executor;
    }

    private synchronized Set<Map.Entry<n3.b<Object>, Executor>> f(n3.a<?> aVar) {
        ConcurrentHashMap<n3.b<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.f35474a.get(aVar.b());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    @Override // n3.d
    public <T> void a(Class<T> cls, n3.b<? super T> bVar) {
        b(cls, this.f35476c, bVar);
    }

    @Override // n3.d
    public synchronized <T> void b(Class<T> cls, Executor executor, n3.b<? super T> bVar) {
        c0.b(cls);
        c0.b(bVar);
        c0.b(executor);
        if (!this.f35474a.containsKey(cls)) {
            this.f35474a.put(cls, new ConcurrentHashMap<>());
        }
        this.f35474a.get(cls).put(bVar, executor);
    }

    @Override // n3.c
    public void c(n3.a<?> aVar) {
        c0.b(aVar);
        synchronized (this) {
            Queue<n3.a<?>> queue = this.f35475b;
            if (queue != null) {
                queue.add(aVar);
                return;
            }
            for (Map.Entry<n3.b<Object>, Executor> entry : f(aVar)) {
                entry.getValue().execute(u.a(entry, aVar));
            }
        }
    }

    @Override // n3.d
    public synchronized <T> void d(Class<T> cls, n3.b<? super T> bVar) {
        c0.b(cls);
        c0.b(bVar);
        if (this.f35474a.containsKey(cls)) {
            ConcurrentHashMap<n3.b<Object>, Executor> concurrentHashMap = this.f35474a.get(cls);
            concurrentHashMap.remove(bVar);
            if (concurrentHashMap.isEmpty()) {
                this.f35474a.remove(cls);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        Queue<n3.a<?>> queue;
        synchronized (this) {
            queue = this.f35475b;
            if (queue != null) {
                this.f35475b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (n3.a<?> aVar : queue) {
                c(aVar);
            }
        }
    }
}
