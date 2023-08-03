package com.google.common.reflect;

import com.google.common.base.a0;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: TypeParameter.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class j<T> extends i<T> {

    /* renamed from: a  reason: collision with root package name */
    final TypeVariable<?> f34956a;

    protected j() {
        Type a10 = a();
        a0.u(a10 instanceof TypeVariable, "%s should be a type variable.", a10);
        this.f34956a = (TypeVariable) a10;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof j) {
            return this.f34956a.equals(((j) obj).f34956a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f34956a.hashCode();
    }

    public String toString() {
        return this.f34956a.toString();
    }
}
