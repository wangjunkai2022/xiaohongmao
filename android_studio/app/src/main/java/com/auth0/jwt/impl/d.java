package com.auth0.jwt.impl;

import com.auth0.jwt.exceptions.JWTDecodeException;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.module.SimpleModule;
import java.io.IOException;

/* compiled from: JWTParser.java */
/* loaded from: classes.dex */
public class d implements com.auth0.jwt.interfaces.f {

    /* renamed from: a  reason: collision with root package name */
    private final ObjectReader f7084a;

    /* renamed from: b  reason: collision with root package name */
    private final ObjectReader f7085b;

    public d() {
        this(f());
    }

    private void c(ObjectMapper objectMapper) {
        SimpleModule simpleModule = new SimpleModule();
        ObjectReader reader = objectMapper.reader();
        simpleModule.addDeserializer(com.auth0.jwt.interfaces.i.class, new g(reader));
        simpleModule.addDeserializer(com.auth0.jwt.interfaces.e.class, new c(reader));
        objectMapper.registerModule(simpleModule);
    }

    private static JWTDecodeException d() {
        return e(null);
    }

    private static JWTDecodeException e(String str) {
        return new JWTDecodeException(String.format("The string '%s' doesn't have a valid JSON format.", str));
    }

    static ObjectMapper f() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.disable(SerializationFeature.FAIL_ON_EMPTY_BEANS);
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_EMPTY);
        return objectMapper;
    }

    @Override // com.auth0.jwt.interfaces.f
    public com.auth0.jwt.interfaces.i a(String str) throws JWTDecodeException {
        if (str != null) {
            try {
                return (com.auth0.jwt.interfaces.i) this.f7084a.readValue(str);
            } catch (IOException unused) {
                throw e(str);
            }
        }
        throw d();
    }

    @Override // com.auth0.jwt.interfaces.f
    public com.auth0.jwt.interfaces.e b(String str) throws JWTDecodeException {
        if (str != null) {
            try {
                return (com.auth0.jwt.interfaces.e) this.f7085b.readValue(str);
            } catch (IOException unused) {
                throw e(str);
            }
        }
        throw d();
    }

    d(ObjectMapper objectMapper) {
        c(objectMapper);
        this.f7084a = objectMapper.readerFor(com.auth0.jwt.interfaces.i.class);
        this.f7085b = objectMapper.readerFor(com.auth0.jwt.interfaces.e.class);
    }
}
