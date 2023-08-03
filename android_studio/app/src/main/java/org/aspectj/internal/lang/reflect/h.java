package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

/* compiled from: InterTypeConstructorDeclarationImpl.java */
/* loaded from: classes4.dex */
public class h extends i implements k8.n {

    /* renamed from: e  reason: collision with root package name */
    private Method f90971e;

    public h(k8.c<?> cVar, String str, int i4, Method method) {
        super(cVar, str, i4);
        this.f90971e = method;
    }

    @Override // k8.n
    public k8.c<?>[] c() {
        Class<?>[] exceptionTypes = this.f90971e.getExceptionTypes();
        k8.c<?>[] cVarArr = new k8.c[exceptionTypes.length];
        for (int i4 = 0; i4 < exceptionTypes.length; i4++) {
            cVarArr[i4] = k8.d.a(exceptionTypes[i4]);
        }
        return cVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k8.n
    public Type[] d() {
        Type[] genericParameterTypes = this.f90971e.getGenericParameterTypes();
        k8.c[] cVarArr = new k8.c[genericParameterTypes.length - 1];
        for (int i4 = 1; i4 < genericParameterTypes.length; i4++) {
            if (genericParameterTypes[i4] instanceof Class) {
                cVarArr[i4 - 1] = k8.d.a((Class) genericParameterTypes[i4]);
            } else {
                cVarArr[i4 - 1] = genericParameterTypes[i4];
            }
        }
        return cVarArr;
    }

    @Override // k8.n
    public k8.c<?>[] getParameterTypes() {
        Class<?>[] parameterTypes = this.f90971e.getParameterTypes();
        k8.c<?>[] cVarArr = new k8.c[parameterTypes.length - 1];
        for (int i4 = 1; i4 < parameterTypes.length; i4++) {
            cVarArr[i4 - 1] = k8.d.a(parameterTypes[i4]);
        }
        return cVarArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(getModifiers()));
        stringBuffer.append(" ");
        stringBuffer.append(this.f90973b);
        stringBuffer.append(".new");
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
}
