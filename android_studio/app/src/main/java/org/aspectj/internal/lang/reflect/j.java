package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

/* compiled from: InterTypeFieldDeclarationImpl.java */
/* loaded from: classes4.dex */
public class j extends i implements k8.p {

    /* renamed from: e  reason: collision with root package name */
    private String f90976e;

    /* renamed from: f  reason: collision with root package name */
    private k8.c<?> f90977f;

    /* renamed from: g  reason: collision with root package name */
    private Type f90978g;

    public j(k8.c<?> cVar, String str, int i4, String str2, k8.c<?> cVar2, Type type) {
        super(cVar, str, i4);
        this.f90976e = str2;
        this.f90977f = cVar2;
        this.f90978g = type;
    }

    @Override // k8.p
    public Type b() {
        return this.f90978g;
    }

    @Override // k8.p
    public String getName() {
        return this.f90976e;
    }

    @Override // k8.p
    public k8.c<?> getType() {
        return this.f90977f;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(getModifiers()));
        stringBuffer.append(" ");
        stringBuffer.append(getType().toString());
        stringBuffer.append(" ");
        stringBuffer.append(this.f90973b);
        stringBuffer.append(".");
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }

    public j(k8.c<?> cVar, k8.c<?> cVar2, Field field) {
        super(cVar, cVar2, field.getModifiers());
        this.f90976e = field.getName();
        this.f90977f = k8.d.a(field.getType());
        Type genericType = field.getGenericType();
        if (genericType instanceof Class) {
            this.f90978g = k8.d.a((Class) genericType);
        } else {
            this.f90978g = genericType;
        }
    }
}
