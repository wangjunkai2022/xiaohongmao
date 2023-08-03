package org.aspectj.runtime.reflect;

import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import k8.t;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MethodSignatureImpl.java */
/* loaded from: classes4.dex */
public class k extends c implements t {

    /* renamed from: p  reason: collision with root package name */
    private Method f91089p;

    /* renamed from: q  reason: collision with root package name */
    Class f91090q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(int i4, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i4, str, cls, clsArr, strArr, clsArr2);
        this.f91090q = cls2;
    }

    private Method E(Class cls, String str, Class[] clsArr, Set set) {
        if (cls == null) {
            return null;
        }
        if (!set.contains(cls)) {
            set.add(cls);
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
        }
        Method E = E(cls.getSuperclass(), str, clsArr, set);
        if (E != null) {
            return E;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces != null) {
            for (Class<?> cls2 : interfaces) {
                Method E2 = E(cls2, str, clsArr, set);
                if (E2 != null) {
                    return E2;
                }
            }
        }
        return null;
    }

    @Override // k8.t
    public Method getMethod() {
        if (this.f91089p == null) {
            Class a10 = a();
            try {
                this.f91089p = a10.getDeclaredMethod(getName(), getParameterTypes());
            } catch (NoSuchMethodException unused) {
                HashSet hashSet = new HashSet();
                hashSet.add(a10);
                this.f91089p = E(a10, getName(), getParameterTypes(), hashSet);
            }
        }
        return this.f91089p;
    }

    @Override // k8.t
    public Class getReturnType() {
        if (this.f91090q == null) {
            this.f91090q = u(6);
        }
        return this.f91090q;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(getModifiers()));
        if (nVar.f91111b) {
            stringBuffer.append(nVar.g(getReturnType()));
        }
        if (nVar.f91111b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(nVar.f(a(), m()));
        stringBuffer.append(".");
        stringBuffer.append(getName());
        nVar.a(stringBuffer, getParameterTypes());
        nVar.b(stringBuffer, c());
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(String str) {
        super(str);
    }
}
