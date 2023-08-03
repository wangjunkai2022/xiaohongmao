package com.fasterxml.jackson.core.exc;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonProcessingException;

/* loaded from: classes.dex */
public abstract class StreamWriteException extends JsonProcessingException {

    /* renamed from: e  reason: collision with root package name */
    private static final long f13832e = 2;

    /* renamed from: d  reason: collision with root package name */
    protected transient JsonGenerator f13833d;

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamWriteException(Throwable th, JsonGenerator jsonGenerator) {
        super(th);
        this.f13833d = jsonGenerator;
    }

    public abstract StreamWriteException withGenerator(JsonGenerator jsonGenerator);

    @Override // com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.core.JacksonException
    public JsonGenerator getProcessor() {
        return this.f13833d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamWriteException(String str, JsonGenerator jsonGenerator) {
        super(str, (JsonLocation) null);
        this.f13833d = jsonGenerator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamWriteException(String str, Throwable th, JsonGenerator jsonGenerator) {
        super(str, null, th);
        this.f13833d = jsonGenerator;
    }
}
