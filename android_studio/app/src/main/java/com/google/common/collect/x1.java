package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingSet.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class x1<E> extends e1<E> implements Set<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    public boolean T(Collection<?> collection) {
        return o4.I(this, (Collection) com.google.common.base.a0.E(collection));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    /* renamed from: Y */
    public abstract Set<E> M();

    protected boolean Z(@NullableDecl Object obj) {
        return o4.g(this, obj);
    }

    protected int a0() {
        return o4.k(this);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || M().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return M().hashCode();
    }
}
