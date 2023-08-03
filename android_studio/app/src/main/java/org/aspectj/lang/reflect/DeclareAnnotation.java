package org.aspectj.lang.reflect;

import java.lang.annotation.Annotation;
import k8.a0;
import k8.c;
import k8.y;

/* loaded from: classes4.dex */
public interface DeclareAnnotation {

    /* loaded from: classes4.dex */
    public enum Kind {
        Field,
        Method,
        Constructor,
        Type
    }

    c<?> a();

    String b();

    a0 c();

    y d();

    Annotation getAnnotation();

    Kind getKind();
}
