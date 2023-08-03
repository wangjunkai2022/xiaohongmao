package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* loaded from: classes.dex */
public class JsonEOFException extends JsonParseException {

    /* renamed from: i  reason: collision with root package name */
    private static final long f13901i = 1;

    /* renamed from: h  reason: collision with root package name */
    protected final JsonToken f13902h;

    public JsonEOFException(JsonParser jsonParser, JsonToken jsonToken, String str) {
        super(jsonParser, str);
        this.f13902h = jsonToken;
    }

    public JsonToken getTokenBeingDecoded() {
        return this.f13902h;
    }
}
