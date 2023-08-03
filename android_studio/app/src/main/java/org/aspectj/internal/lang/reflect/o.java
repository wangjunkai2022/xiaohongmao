package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.util.StringTokenizer;
import k8.v;
import k8.x;

/* compiled from: PointcutImpl.java */
/* loaded from: classes4.dex */
public class o implements v {

    /* renamed from: a  reason: collision with root package name */
    private final String f90991a;

    /* renamed from: b  reason: collision with root package name */
    private final x f90992b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f90993c;

    /* renamed from: d  reason: collision with root package name */
    private final k8.c f90994d;

    /* renamed from: e  reason: collision with root package name */
    private String[] f90995e;

    /* JADX INFO: Access modifiers changed from: protected */
    public o(String str, String str2, Method method, k8.c cVar, String str3) {
        this.f90995e = new String[0];
        this.f90991a = str;
        this.f90992b = new n(str2);
        this.f90993c = method;
        this.f90994d = cVar;
        this.f90995e = c(str3);
    }

    private String[] c(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int countTokens = stringTokenizer.countTokens();
        String[] strArr = new String[countTokens];
        for (int i4 = 0; i4 < countTokens; i4++) {
            strArr[i4] = stringTokenizer.nextToken().trim();
        }
        return strArr;
    }

    @Override // k8.v
    public k8.c a() {
        return this.f90994d;
    }

    @Override // k8.v
    public x b() {
        return this.f90992b;
    }

    @Override // k8.v
    public String[] e() {
        return this.f90995e;
    }

    @Override // k8.v
    public int getModifiers() {
        return this.f90993c.getModifiers();
    }

    @Override // k8.v
    public String getName() {
        return this.f90991a;
    }

    @Override // k8.v
    public k8.c<?>[] getParameterTypes() {
        Class<?>[] parameterTypes = this.f90993c.getParameterTypes();
        int length = parameterTypes.length;
        k8.c<?>[] cVarArr = new k8.c[length];
        for (int i4 = 0; i4 < length; i4++) {
            cVarArr[i4] = k8.d.a(parameterTypes[i4]);
        }
        return cVarArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getName());
        stringBuffer.append("(");
        k8.c<?>[] parameterTypes = getParameterTypes();
        int i4 = 0;
        while (i4 < parameterTypes.length) {
            stringBuffer.append(parameterTypes[i4].getName());
            String[] strArr = this.f90995e;
            if (strArr != null && strArr[i4] != null) {
                stringBuffer.append(" ");
                stringBuffer.append(this.f90995e[i4]);
            }
            i4++;
            if (i4 < parameterTypes.length) {
                stringBuffer.append(",");
            }
        }
        stringBuffer.append(") : ");
        stringBuffer.append(b().a());
        return stringBuffer.toString();
    }
}
