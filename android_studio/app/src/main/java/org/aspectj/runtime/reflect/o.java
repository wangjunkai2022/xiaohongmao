package org.aspectj.runtime.reflect;

import k8.c0;

/* compiled from: UnlockSignatureImpl.java */
/* loaded from: classes4.dex */
class o extends l implements c0 {

    /* renamed from: m  reason: collision with root package name */
    private Class f91119m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Class cls) {
        super(8, org.aspectj.lang.c.f91029l, cls);
        this.f91119m = cls;
    }

    public Class k() {
        if (this.f91119m == null) {
            this.f91119m = u(3);
        }
        return this.f91119m;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        if (this.f91119m == null) {
            this.f91119m = u(3);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("unlock(");
        stringBuffer.append(nVar.g(this.f91119m));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(String str) {
        super(str);
    }
}
