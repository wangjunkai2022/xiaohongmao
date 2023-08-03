package org.aspectj.runtime.reflect;

/* compiled from: CatchClauseSignatureImpl.java */
/* loaded from: classes4.dex */
class b extends l implements k8.e {

    /* renamed from: m  reason: collision with root package name */
    Class f91063m;

    /* renamed from: n  reason: collision with root package name */
    String f91064n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Class cls, Class cls2, String str) {
        super(0, "catch", cls);
        this.f91063m = cls2;
        this.f91064n = str;
    }

    @Override // k8.e
    public String g() {
        if (this.f91064n == null) {
            this.f91064n = s(4);
        }
        return this.f91064n;
    }

    @Override // k8.e
    public Class k() {
        if (this.f91063m == null) {
            this.f91063m = u(3);
        }
        return this.f91063m;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("catch(");
        stringBuffer.append(nVar.g(k()));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str) {
        super(str);
    }
}
