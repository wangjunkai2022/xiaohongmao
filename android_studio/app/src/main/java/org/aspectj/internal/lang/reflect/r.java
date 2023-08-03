package org.aspectj.internal.lang.reflect;

import k8.a0;
import k8.b0;
import org.aspectj.lang.reflect.PerClauseKind;

/* compiled from: TypePatternBasedPerClauseImpl.java */
/* loaded from: classes4.dex */
public class r extends l implements b0 {

    /* renamed from: b  reason: collision with root package name */
    private a0 f90999b;

    public r(PerClauseKind perClauseKind, String str) {
        super(perClauseKind);
        this.f90999b = new s(str);
    }

    @Override // k8.b0
    public a0 c() {
        return this.f90999b;
    }

    @Override // org.aspectj.internal.lang.reflect.l
    public String toString() {
        return "pertypewithin(" + this.f90999b.a() + ")";
    }
}
