package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

/* compiled from: CollectorBase.java */
/* loaded from: classes.dex */
class m {

    /* renamed from: b  reason: collision with root package name */
    protected static final i[] f15304b = new i[0];

    /* renamed from: c  reason: collision with root package name */
    protected static final Annotation[] f15305c = new Annotation[0];

    /* renamed from: a  reason: collision with root package name */
    protected final AnnotationIntrospector f15306a;

    /* JADX INFO: Access modifiers changed from: protected */
    public m(AnnotationIntrospector annotationIntrospector) {
        this.f15306a = annotationIntrospector;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a() {
        return new i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i[] b(int i4) {
        if (i4 == 0) {
            return f15304b;
        }
        i[] iVarArr = new i[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            iVarArr[i10] = a();
        }
        return iVarArr;
    }

    protected static final boolean c(Annotation annotation) {
        return (annotation instanceof Target) || (annotation instanceof Retention);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AnnotationCollector d(AnnotationCollector annotationCollector, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            annotationCollector = annotationCollector.a(annotation);
            if (this.f15306a.isAnnotationBundle(annotation)) {
                annotationCollector = h(annotationCollector, annotation);
            }
        }
        return annotationCollector;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AnnotationCollector e(Annotation[] annotationArr) {
        AnnotationCollector e4 = AnnotationCollector.e();
        for (Annotation annotation : annotationArr) {
            e4 = e4.a(annotation);
            if (this.f15306a.isAnnotationBundle(annotation)) {
                e4 = h(e4, annotation);
            }
        }
        return e4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AnnotationCollector f(AnnotationCollector annotationCollector, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            if (!annotationCollector.h(annotation)) {
                annotationCollector = annotationCollector.a(annotation);
                if (this.f15306a.isAnnotationBundle(annotation)) {
                    annotationCollector = g(annotationCollector, annotation);
                }
            }
        }
        return annotationCollector;
    }

    protected final AnnotationCollector g(AnnotationCollector annotationCollector, Annotation annotation) {
        Annotation[] r9;
        for (Annotation annotation2 : com.fasterxml.jackson.databind.util.g.r(annotation.annotationType())) {
            if (!c(annotation2) && !annotationCollector.h(annotation2)) {
                annotationCollector = annotationCollector.a(annotation2);
                if (this.f15306a.isAnnotationBundle(annotation2)) {
                    annotationCollector = h(annotationCollector, annotation2);
                }
            }
        }
        return annotationCollector;
    }

    protected final AnnotationCollector h(AnnotationCollector annotationCollector, Annotation annotation) {
        Annotation[] r9;
        for (Annotation annotation2 : com.fasterxml.jackson.databind.util.g.r(annotation.annotationType())) {
            if (!c(annotation2)) {
                if (this.f15306a.isAnnotationBundle(annotation2)) {
                    if (!annotationCollector.h(annotation2)) {
                        annotationCollector = h(annotationCollector.a(annotation2), annotation2);
                    }
                } else {
                    annotationCollector = annotationCollector.a(annotation2);
                }
            }
        }
        return annotationCollector;
    }
}
