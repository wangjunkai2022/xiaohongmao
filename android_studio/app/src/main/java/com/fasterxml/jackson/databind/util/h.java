package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* compiled from: Converter.java */
/* loaded from: classes2.dex */
public interface h<IN, OUT> {

    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    public static abstract class a implements h<Object, Object> {
    }

    JavaType a(TypeFactory typeFactory);

    JavaType b(TypeFactory typeFactory);

    OUT convert(IN in);
}
