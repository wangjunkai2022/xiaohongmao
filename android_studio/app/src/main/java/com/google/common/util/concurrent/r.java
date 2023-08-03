package com.google.common.util.concurrent;

import com.google.common.base.Optional;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.b3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: CollectionFuture.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
abstract class r<V, C> extends k<V, C> {

    /* compiled from: CollectionFuture.java */
    /* loaded from: classes2.dex */
    abstract class a extends k<V, C>.a {

        /* renamed from: i  reason: collision with root package name */
        private List<Optional<V>> f35321i;

        a(ImmutableCollection<? extends q0<? extends V>> immutableCollection, boolean z9) {
            super(immutableCollection, z9, true);
            List<Optional<V>> u9;
            if (immutableCollection.isEmpty()) {
                u9 = ImmutableList.of();
            } else {
                u9 = b3.u(immutableCollection.size());
            }
            this.f35321i = u9;
            for (int i4 = 0; i4 < immutableCollection.size(); i4++) {
                this.f35321i.add(null);
            }
        }

        @Override // com.google.common.util.concurrent.k.a
        final void l(boolean z9, int i4, @NullableDecl V v9) {
            List<Optional<V>> list = this.f35321i;
            if (list != null) {
                list.set(i4, Optional.fromNullable(v9));
            } else {
                com.google.common.base.a0.h0(z9 || r.this.isCancelled(), "Future was done before all dependencies completed");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.k.a
        final void n() {
            List<Optional<V>> list = this.f35321i;
            if (list != null) {
                r.this.M(u(list));
            } else {
                com.google.common.base.a0.g0(r.this.isDone());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.k.a
        public void t() {
            super.t();
            this.f35321i = null;
        }

        abstract C u(List<Optional<V>> list);
    }

    /* compiled from: CollectionFuture.java */
    /* loaded from: classes2.dex */
    static final class b<V> extends r<V, List<V>> {

        /* compiled from: CollectionFuture.java */
        /* loaded from: classes2.dex */
        private final class a extends r<V, List<V>>.a {
            a(ImmutableCollection<? extends q0<? extends V>> immutableCollection, boolean z9) {
                super(immutableCollection, z9);
            }

            @Override // com.google.common.util.concurrent.r.a
            /* renamed from: v */
            public List<V> u(List<Optional<V>> list) {
                ArrayList u9 = b3.u(list.size());
                Iterator<Optional<V>> it = list.iterator();
                while (it.hasNext()) {
                    Optional<V> next = it.next();
                    u9.add(next != null ? next.orNull() : null);
                }
                return Collections.unmodifiableList(u9);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ImmutableCollection<? extends q0<? extends V>> immutableCollection, boolean z9) {
            V(new a(immutableCollection, z9));
        }
    }

    r() {
    }
}
