package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.exc.StreamWriteException;

/* loaded from: classes.dex */
public class JsonGenerationException extends StreamWriteException {

    /* renamed from: f  reason: collision with root package name */
    private static final long f13694f = 123;

    @Deprecated
    public JsonGenerationException(Throwable th) {
        super(th, (JsonGenerator) null);
    }

    @Deprecated
    public JsonGenerationException(String str) {
        super(str, (JsonGenerator) null);
    }

    @Override // com.fasterxml.jackson.core.exc.StreamWriteException, com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.core.JacksonException
    public JsonGenerator getProcessor() {
        return this.f13833d;
    }

    @Override // com.fasterxml.jackson.core.exc.StreamWriteException
    public JsonGenerationException withGenerator(JsonGenerator jsonGenerator) {
        this.f13833d = jsonGenerator;
        return this;
    }

    @Deprecated
    public JsonGenerationException(String str, Throwable th) {
        super(str, th, null);
    }

    public JsonGenerationException(Throwable th, JsonGenerator jsonGenerator) {
        super(th, jsonGenerator);
    }

    public JsonGenerationException(String str, JsonGenerator jsonGenerator) {
        super(str, jsonGenerator);
        this.f13833d = jsonGenerator;
    }

    public JsonGenerationException(String str, Throwable th, JsonGenerator jsonGenerator) {
        super(str, th, jsonGenerator);
        this.f13833d = jsonGenerator;
    }
}
