package com.fasterxml.jackson.core.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.util.RequestPayload;

/* loaded from: classes.dex */
public abstract class StreamReadException extends JsonProcessingException {

    /* renamed from: f  reason: collision with root package name */
    static final long f13829f = 2;

    /* renamed from: d  reason: collision with root package name */
    protected transient JsonParser f13830d;

    /* renamed from: e  reason: collision with root package name */
    protected RequestPayload f13831e;

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamReadException(JsonParser jsonParser, String str) {
        super(str, jsonParser == null ? null : jsonParser.t0());
        this.f13830d = jsonParser;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (this.f13831e != null) {
            return message + "\nRequest payload : " + this.f13831e.toString();
        }
        return message;
    }

    public RequestPayload getRequestPayload() {
        return this.f13831e;
    }

    public String getRequestPayloadAsString() {
        RequestPayload requestPayload = this.f13831e;
        if (requestPayload != null) {
            return requestPayload.toString();
        }
        return null;
    }

    public abstract StreamReadException withParser(JsonParser jsonParser);

    public abstract StreamReadException withRequestPayload(RequestPayload requestPayload);

    @Override // com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.core.JacksonException
    public JsonParser getProcessor() {
        return this.f13830d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamReadException(JsonParser jsonParser, String str, Throwable th) {
        super(str, jsonParser == null ? null : jsonParser.t0(), th);
        this.f13830d = jsonParser;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamReadException(JsonParser jsonParser, String str, JsonLocation jsonLocation) {
        super(str, jsonLocation, null);
        this.f13830d = jsonParser;
    }

    protected StreamReadException(JsonParser jsonParser, String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
        this.f13830d = jsonParser;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamReadException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }
}
