package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: JsonFormatVisitable.java */
/* loaded from: classes.dex */
public interface d {
    void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException;
}
