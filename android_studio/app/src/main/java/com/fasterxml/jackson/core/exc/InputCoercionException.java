package com.fasterxml.jackson.core.exc;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.RequestPayload;

/* loaded from: classes.dex */
public class InputCoercionException extends StreamReadException {

    /* renamed from: i  reason: collision with root package name */
    private static final long f13826i = 1;

    /* renamed from: g  reason: collision with root package name */
    protected final JsonToken f13827g;

    /* renamed from: h  reason: collision with root package name */
    protected final Class<?> f13828h;

    public InputCoercionException(JsonParser jsonParser, String str, JsonToken jsonToken, Class<?> cls) {
        super(jsonParser, str);
        this.f13827g = jsonToken;
        this.f13828h = cls;
    }

    public JsonToken getInputType() {
        return this.f13827g;
    }

    public Class<?> getTargetType() {
        return this.f13828h;
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public InputCoercionException withParser(JsonParser jsonParser) {
        this.f13830d = jsonParser;
        return this;
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public InputCoercionException withRequestPayload(RequestPayload requestPayload) {
        this.f13831e = requestPayload;
        return this;
    }
}
