package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedList;

/* compiled from: OOMSoftReferenceBucket.java */
@s7.c
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
class b0<V> extends h<V> {

    /* renamed from: g  reason: collision with root package name */
    private LinkedList<com.facebook.common.references.f<V>> f12562g;

    public b0(int itemSize, int maxLength, int inUseLength) {
        super(itemSize, maxLength, inUseLength, false);
        this.f12562g = new LinkedList<>();
    }

    @Override // com.facebook.imagepipeline.memory.h
    void a(V value) {
        com.facebook.common.references.f<V> poll = this.f12562g.poll();
        if (poll == null) {
            poll = new com.facebook.common.references.f<>();
        }
        poll.c(value);
        this.f12632c.add(poll);
    }

    @Override // com.facebook.imagepipeline.memory.h
    @r7.h
    public V h() {
        com.facebook.common.references.f<V> fVar = (com.facebook.common.references.f) this.f12632c.poll();
        com.facebook.common.internal.j.i(fVar);
        V b10 = fVar.b();
        fVar.a();
        this.f12562g.add(fVar);
        return b10;
    }
}
