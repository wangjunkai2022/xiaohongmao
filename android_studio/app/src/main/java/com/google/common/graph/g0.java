package com.google.common.graph;

import com.google.common.collect.k5;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MultiEdgesConnecting.java */
/* loaded from: classes2.dex */
abstract class g0<E> extends AbstractSet<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<E, ?> f34123a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f34124b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiEdgesConnecting.java */
    /* loaded from: classes2.dex */
    public class a extends com.google.common.collect.c<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f34125c;

        a(Iterator it) {
            this.f34125c = it;
        }

        @Override // com.google.common.collect.c
        protected E a() {
            while (this.f34125c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f34125c.next();
                if (g0.this.f34124b.equals(entry.getValue())) {
                    return (E) entry.getKey();
                }
            }
            return b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(Map<E, ?> map, Object obj) {
        this.f34123a = (Map) com.google.common.base.a0.E(map);
        this.f34124b = com.google.common.base.a0.E(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: b */
    public k5<E> iterator() {
        return new a(this.f34123a.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return this.f34124b.equals(this.f34123a.get(obj));
    }
}
