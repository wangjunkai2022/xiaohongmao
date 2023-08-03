package com.fasterxml.jackson.annotation;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;

/* compiled from: ObjectIdResolver.java */
/* loaded from: classes.dex */
public interface c0 {
    void a(ObjectIdGenerator.IdKey idKey, Object obj);

    boolean b(c0 c0Var);

    Object c(ObjectIdGenerator.IdKey idKey);

    c0 d(Object obj);
}
