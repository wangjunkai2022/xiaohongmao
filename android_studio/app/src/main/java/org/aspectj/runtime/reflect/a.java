package org.aspectj.runtime.reflect;

import java.lang.reflect.Method;

/* compiled from: AdviceSignatureImpl.java */
/* loaded from: classes4.dex */
class a extends c implements k8.b {

    /* renamed from: p  reason: collision with root package name */
    Class f91061p;

    /* renamed from: q  reason: collision with root package name */
    private Method f91062q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i4, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i4, str, cls, clsArr, strArr, clsArr2);
        this.f91062q = null;
        this.f91061p = cls2;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String E(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 36
            int r0 = r4.indexOf(r0)
            r1 = -1
            if (r0 != r1) goto La
            return r4
        La:
            java.util.StringTokenizer r0 = new java.util.StringTokenizer
            java.lang.String r1 = "$"
            r0.<init>(r4, r1)
        L11:
            boolean r1 = r0.hasMoreTokens()
            if (r1 == 0) goto L34
            java.lang.String r1 = r0.nextToken()
            java.lang.String r2 = "before"
            boolean r2 = r1.startsWith(r2)
            if (r2 != 0) goto L33
            java.lang.String r2 = "after"
            boolean r2 = r1.startsWith(r2)
            if (r2 != 0) goto L33
            java.lang.String r2 = "around"
            boolean r2 = r1.startsWith(r2)
            if (r2 == 0) goto L11
        L33:
            return r1
        L34:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.aspectj.runtime.reflect.a.E(java.lang.String):java.lang.String");
    }

    @Override // k8.b
    public Class getReturnType() {
        if (this.f91061p == null) {
            this.f91061p = u(6);
        }
        return this.f91061p;
    }

    @Override // k8.b
    public Method i() {
        if (this.f91062q == null) {
            try {
                this.f91062q = a().getDeclaredMethod(getName(), getParameterTypes());
            } catch (Exception unused) {
            }
        }
        return this.f91062q;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        if (nVar.f91111b) {
            stringBuffer.append(nVar.g(getReturnType()));
        }
        if (nVar.f91111b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(nVar.f(a(), m()));
        stringBuffer.append(".");
        stringBuffer.append(E(getName()));
        nVar.a(stringBuffer, getParameterTypes());
        nVar.b(stringBuffer, c());
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str) {
        super(str);
        this.f91062q = null;
    }
}
