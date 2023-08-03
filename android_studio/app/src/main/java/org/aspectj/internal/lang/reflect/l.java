package org.aspectj.internal.lang.reflect;

import k8.u;
import org.aspectj.lang.reflect.PerClauseKind;

/* compiled from: PerClauseImpl.java */
/* loaded from: classes4.dex */
public class l implements u {

    /* renamed from: a  reason: collision with root package name */
    private final PerClauseKind f90987a;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(PerClauseKind perClauseKind) {
        this.f90987a = perClauseKind;
    }

    @Override // k8.u
    public PerClauseKind getKind() {
        return this.f90987a;
    }

    public String toString() {
        return "issingleton()";
    }
}
