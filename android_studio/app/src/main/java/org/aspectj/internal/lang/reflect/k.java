package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* compiled from: InterTypeMethodDeclarationImpl.java */
/* loaded from: classes4.dex */
public class k extends i implements k8.q {

    /* renamed from: e  reason: collision with root package name */
    private String f90979e;

    /* renamed from: f  reason: collision with root package name */
    private Method f90980f;

    /* renamed from: g  reason: collision with root package name */
    private int f90981g;

    /* renamed from: h  reason: collision with root package name */
    private k8.c<?>[] f90982h;

    /* renamed from: i  reason: collision with root package name */
    private Type[] f90983i;

    /* renamed from: j  reason: collision with root package name */
    private k8.c<?> f90984j;

    /* renamed from: k  reason: collision with root package name */
    private Type f90985k;

    /* renamed from: l  reason: collision with root package name */
    private k8.c<?>[] f90986l;

    public k(k8.c<?> cVar, String str, int i4, String str2, Method method) {
        super(cVar, str, i4);
        this.f90981g = 1;
        this.f90979e = str2;
        this.f90980f = method;
    }

    @Override // k8.q
    public k8.c<?>[] c() {
        Class<?>[] exceptionTypes = this.f90980f.getExceptionTypes();
        k8.c<?>[] cVarArr = new k8.c[exceptionTypes.length];
        for (int i4 = 0; i4 < exceptionTypes.length; i4++) {
            cVarArr[i4] = k8.d.a(exceptionTypes[i4]);
        }
        return cVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k8.q
    public Type[] d() {
        Type[] genericParameterTypes = this.f90980f.getGenericParameterTypes();
        int length = genericParameterTypes.length;
        int i4 = this.f90981g;
        k8.c[] cVarArr = new k8.c[length - i4];
        while (i4 < genericParameterTypes.length) {
            if (genericParameterTypes[i4] instanceof Class) {
                cVarArr[i4 - this.f90981g] = k8.d.a((Class) genericParameterTypes[i4]);
            } else {
                cVarArr[i4 - this.f90981g] = genericParameterTypes[i4];
            }
            i4++;
        }
        return cVarArr;
    }

    @Override // k8.q
    public Type e() {
        Type genericReturnType = this.f90980f.getGenericReturnType();
        return genericReturnType instanceof Class ? k8.d.a((Class) genericReturnType) : genericReturnType;
    }

    @Override // k8.q
    public String getName() {
        return this.f90979e;
    }

    @Override // k8.q
    public k8.c<?>[] getParameterTypes() {
        Class<?>[] parameterTypes = this.f90980f.getParameterTypes();
        int length = parameterTypes.length;
        int i4 = this.f90981g;
        k8.c<?>[] cVarArr = new k8.c[length - i4];
        while (i4 < parameterTypes.length) {
            cVarArr[i4 - this.f90981g] = k8.d.a(parameterTypes[i4]);
            i4++;
        }
        return cVarArr;
    }

    @Override // k8.q
    public k8.c<?> getReturnType() {
        return k8.d.a(this.f90980f.getReturnType());
    }

    @Override // k8.q
    public TypeVariable<Method>[] getTypeParameters() {
        return this.f90980f.getTypeParameters();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(getModifiers()));
        stringBuffer.append(" ");
        stringBuffer.append(getReturnType().toString());
        stringBuffer.append(" ");
        stringBuffer.append(this.f90973b);
        stringBuffer.append(".");
        stringBuffer.append(getName());
        stringBuffer.append("(");
        k8.c<?>[] parameterTypes = getParameterTypes();
        for (int i4 = 0; i4 < parameterTypes.length - 1; i4++) {
            stringBuffer.append(parameterTypes[i4].toString());
            stringBuffer.append(", ");
        }
        if (parameterTypes.length > 0) {
            stringBuffer.append(parameterTypes[parameterTypes.length - 1].toString());
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public k(k8.c<?> cVar, k8.c<?> cVar2, Method method, int i4) {
        super(cVar, cVar2, i4);
        this.f90981g = 0;
        this.f90979e = method.getName();
        this.f90980f = method;
    }
}
