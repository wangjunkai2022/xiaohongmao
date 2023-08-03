package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.JavaType;
import java.io.IOException;

/* compiled from: TypeIdResolver.java */
/* loaded from: classes.dex */
public interface c {
    String a(Object obj);

    String b();

    void c(JavaType javaType);

    JavaType d(com.fasterxml.jackson.databind.c cVar, String str) throws IOException;

    String e(Object obj, Class<?> cls);

    String f();

    JsonTypeInfo.Id g();
}
