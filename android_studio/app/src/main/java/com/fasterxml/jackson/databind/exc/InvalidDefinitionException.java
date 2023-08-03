package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.introspect.k;

/* loaded from: classes.dex */
public class InvalidDefinitionException extends JsonMappingException {

    /* renamed from: i  reason: collision with root package name */
    protected final JavaType f15075i;

    /* renamed from: j  reason: collision with root package name */
    protected transient b f15076j;

    /* renamed from: k  reason: collision with root package name */
    protected transient k f15077k;

    protected InvalidDefinitionException(JsonParser jsonParser, String str, JavaType javaType) {
        super(jsonParser, str);
        this.f15075i = javaType;
        this.f15076j = null;
        this.f15077k = null;
    }

    public static InvalidDefinitionException from(JsonParser jsonParser, String str, b bVar, k kVar) {
        return new InvalidDefinitionException(jsonParser, str, bVar, kVar);
    }

    public b getBeanDescription() {
        return this.f15076j;
    }

    public k getProperty() {
        return this.f15077k;
    }

    public JavaType getType() {
        return this.f15075i;
    }

    public static InvalidDefinitionException from(JsonParser jsonParser, String str, JavaType javaType) {
        return new InvalidDefinitionException(jsonParser, str, javaType);
    }

    public static InvalidDefinitionException from(JsonGenerator jsonGenerator, String str, b bVar, k kVar) {
        return new InvalidDefinitionException(jsonGenerator, str, bVar, kVar);
    }

    public static InvalidDefinitionException from(JsonGenerator jsonGenerator, String str, JavaType javaType) {
        return new InvalidDefinitionException(jsonGenerator, str, javaType);
    }

    protected InvalidDefinitionException(JsonGenerator jsonGenerator, String str, JavaType javaType) {
        super(jsonGenerator, str);
        this.f15075i = javaType;
        this.f15076j = null;
        this.f15077k = null;
    }

    protected InvalidDefinitionException(JsonParser jsonParser, String str, b bVar, k kVar) {
        super(jsonParser, str);
        this.f15075i = bVar == null ? null : bVar.H();
        this.f15076j = bVar;
        this.f15077k = kVar;
    }

    protected InvalidDefinitionException(JsonGenerator jsonGenerator, String str, b bVar, k kVar) {
        super(jsonGenerator, str);
        this.f15075i = bVar == null ? null : bVar.H();
        this.f15076j = bVar;
        this.f15077k = kVar;
    }
}
