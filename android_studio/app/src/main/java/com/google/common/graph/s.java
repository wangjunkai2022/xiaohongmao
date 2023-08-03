package com.google.common.graph;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.o4;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EndpointPairIterator.java */
/* loaded from: classes2.dex */
public abstract class s<N> extends com.google.common.collect.c<r<N>> {

    /* renamed from: c  reason: collision with root package name */
    private final h<N> f34202c;

    /* renamed from: d  reason: collision with root package name */
    private final Iterator<N> f34203d;

    /* renamed from: e  reason: collision with root package name */
    protected N f34204e;

    /* renamed from: f  reason: collision with root package name */
    protected Iterator<N> f34205f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EndpointPairIterator.java */
    /* loaded from: classes2.dex */
    public static final class b<N> extends s<N> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: f */
        public r<N> a() {
            while (!this.f34205f.hasNext()) {
                if (!d()) {
                    return b();
                }
            }
            return r.h(this.f34204e, this.f34205f.next());
        }

        private b(h<N> hVar) {
            super(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EndpointPairIterator.java */
    /* loaded from: classes2.dex */
    public static final class c<N> extends s<N> {

        /* renamed from: g  reason: collision with root package name */
        private Set<N> f34206g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: f */
        public r<N> a() {
            while (true) {
                if (this.f34205f.hasNext()) {
                    N next = this.f34205f.next();
                    if (!this.f34206g.contains(next)) {
                        return r.l(this.f34204e, next);
                    }
                } else {
                    this.f34206g.add(this.f34204e);
                    if (!d()) {
                        this.f34206g = null;
                        return b();
                    }
                }
            }
        }

        private c(h<N> hVar) {
            super(hVar);
            this.f34206g = o4.y(hVar.m().size());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N> s<N> e(h<N> hVar) {
        return hVar.e() ? new b(hVar) : new c(hVar);
    }

    protected final boolean d() {
        com.google.common.base.a0.g0(!this.f34205f.hasNext());
        if (this.f34203d.hasNext()) {
            N next = this.f34203d.next();
            this.f34204e = next;
            this.f34205f = this.f34202c.b((h<N>) next).iterator();
            return true;
        }
        return false;
    }

    private s(h<N> hVar) {
        this.f34204e = null;
        this.f34205f = ImmutableSet.of().iterator();
        this.f34202c = hVar;
        this.f34203d = hVar.m().iterator();
    }
}
