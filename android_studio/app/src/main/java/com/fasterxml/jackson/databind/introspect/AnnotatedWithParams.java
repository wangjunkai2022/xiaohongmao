package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public abstract class AnnotatedWithParams extends AnnotatedMember {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15172e = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final i[] f15173d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedWithParams(t tVar, i iVar, i[] iVarArr) {
        super(tVar, iVar);
        this.f15173d = iVarArr;
    }

    public final void addOrOverrideParam(int i4, Annotation annotation) {
        i iVar = this.f15173d[i4];
        if (iVar == null) {
            iVar = new i();
            this.f15173d[i4] = iVar;
        }
        iVar.b(annotation);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedParameter b(int i4, i iVar) {
        this.f15173d[i4] = iVar;
        return getParameter(i4);
    }

    public abstract Object call() throws Exception;

    public abstract Object call(Object[] objArr) throws Exception;

    public abstract Object call1(Object obj) throws Exception;

    public final int getAnnotationCount() {
        return this.f15159b.size();
    }

    @Deprecated
    public abstract Type getGenericParameterType(int i4);

    public final AnnotatedParameter getParameter(int i4) {
        return new AnnotatedParameter(this, getParameterType(i4), this.f15158a, getParameterAnnotations(i4), i4);
    }

    public final i getParameterAnnotations(int i4) {
        i[] iVarArr = this.f15173d;
        if (iVarArr == null || i4 < 0 || i4 >= iVarArr.length) {
            return null;
        }
        return iVarArr[i4];
    }

    public abstract int getParameterCount();

    public abstract JavaType getParameterType(int i4);

    public abstract Class<?> getRawParameterType(int i4);

    protected AnnotatedWithParams(AnnotatedWithParams annotatedWithParams, i[] iVarArr) {
        super(annotatedWithParams);
        this.f15173d = iVarArr;
    }
}
