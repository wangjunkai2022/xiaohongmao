package org.aspectj.internal.lang.reflect;

import java.lang.annotation.Annotation;
import k8.a0;
import k8.y;
import org.aspectj.lang.reflect.DeclareAnnotation;

/* compiled from: DeclareAnnotationImpl.java */
/* loaded from: classes4.dex */
public class c implements DeclareAnnotation {

    /* renamed from: a  reason: collision with root package name */
    private Annotation f90946a;

    /* renamed from: b  reason: collision with root package name */
    private String f90947b;

    /* renamed from: c  reason: collision with root package name */
    private k8.c<?> f90948c;

    /* renamed from: d  reason: collision with root package name */
    private DeclareAnnotation.Kind f90949d;

    /* renamed from: e  reason: collision with root package name */
    private a0 f90950e;

    /* renamed from: f  reason: collision with root package name */
    private y f90951f;

    /* compiled from: DeclareAnnotationImpl.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f90952a;

        static {
            int[] iArr = new int[DeclareAnnotation.Kind.values().length];
            f90952a = iArr;
            try {
                iArr[DeclareAnnotation.Kind.Type.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90952a[DeclareAnnotation.Kind.Method.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f90952a[DeclareAnnotation.Kind.Field.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f90952a[DeclareAnnotation.Kind.Constructor.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public c(k8.c<?> cVar, String str, String str2, Annotation annotation, String str3) {
        this.f90948c = cVar;
        if (str.equals("at_type")) {
            this.f90949d = DeclareAnnotation.Kind.Type;
        } else if (str.equals("at_field")) {
            this.f90949d = DeclareAnnotation.Kind.Field;
        } else if (str.equals("at_method")) {
            this.f90949d = DeclareAnnotation.Kind.Method;
        } else if (!str.equals("at_constructor")) {
            throw new IllegalStateException("Unknown declare annotation kind: " + str);
        } else {
            this.f90949d = DeclareAnnotation.Kind.Constructor;
        }
        if (this.f90949d == DeclareAnnotation.Kind.Type) {
            this.f90950e = new s(str2);
        } else {
            this.f90951f = new p(str2);
        }
        this.f90946a = annotation;
        this.f90947b = str3;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public k8.c<?> a() {
        return this.f90948c;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public String b() {
        return this.f90947b;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public a0 c() {
        return this.f90950e;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public y d() {
        return this.f90951f;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public Annotation getAnnotation() {
        return this.f90946a;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public DeclareAnnotation.Kind getKind() {
        return this.f90949d;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare @");
        int i4 = a.f90952a[getKind().ordinal()];
        if (i4 == 1) {
            stringBuffer.append("type : ");
            stringBuffer.append(c().a());
        } else if (i4 == 2) {
            stringBuffer.append("method : ");
            stringBuffer.append(d().a());
        } else if (i4 == 3) {
            stringBuffer.append("field : ");
            stringBuffer.append(d().a());
        } else if (i4 == 4) {
            stringBuffer.append("constructor : ");
            stringBuffer.append(d().a());
        }
        stringBuffer.append(" : ");
        stringBuffer.append(b());
        return stringBuffer.toString();
    }
}
