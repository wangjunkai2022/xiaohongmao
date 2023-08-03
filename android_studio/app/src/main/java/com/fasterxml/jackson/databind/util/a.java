package com.fasterxml.jackson.databind.util;

import java.lang.annotation.Annotation;

/* compiled from: Annotations.java */
/* loaded from: classes2.dex */
public interface a {
    <A extends Annotation> A get(Class<A> cls);

    boolean has(Class<?> cls);

    boolean hasOneOf(Class<? extends Annotation>[] clsArr);

    int size();
}
