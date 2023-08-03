package org.aspectj.runtime.reflect;

import java.lang.reflect.Constructor;

/* compiled from: ConstructorSignatureImpl.java */
/* loaded from: classes4.dex */
class d extends c implements k8.g {

    /* renamed from: p  reason: collision with root package name */
    private Constructor f91068p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i4, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        super(i4, "<init>", cls, clsArr, strArr, clsArr2);
    }

    @Override // k8.g
    public Constructor f() {
        if (this.f91068p == null) {
            try {
                this.f91068p = a().getDeclaredConstructor(getParameterTypes());
            } catch (Exception unused) {
            }
        }
        return this.f91068p;
    }

    @Override // org.aspectj.runtime.reflect.l, org.aspectj.lang.e
    public String getName() {
        return "<init>";
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(getModifiers()));
        stringBuffer.append(nVar.f(a(), m()));
        nVar.a(stringBuffer, getParameterTypes());
        nVar.b(stringBuffer, c());
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str) {
        super(str);
    }
}
