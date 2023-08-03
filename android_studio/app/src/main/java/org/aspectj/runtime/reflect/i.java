package org.aspectj.runtime.reflect;

import k8.r;

/* compiled from: LockSignatureImpl.java */
/* loaded from: classes4.dex */
class i extends l implements r {

    /* renamed from: m  reason: collision with root package name */
    private Class f91088m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Class cls) {
        super(8, org.aspectj.lang.c.f91028k, cls);
        this.f91088m = cls;
    }

    public Class k() {
        if (this.f91088m == null) {
            this.f91088m = u(3);
        }
        return this.f91088m;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        if (this.f91088m == null) {
            this.f91088m = u(3);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("lock(");
        stringBuffer.append(nVar.g(this.f91088m));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str) {
        super(str);
    }
}
