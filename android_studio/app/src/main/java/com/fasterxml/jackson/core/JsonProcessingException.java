package com.fasterxml.jackson.core;

/* loaded from: classes.dex */
public class JsonProcessingException extends JacksonException {

    /* renamed from: c  reason: collision with root package name */
    private static final long f13722c = 123;

    /* renamed from: b  reason: collision with root package name */
    protected JsonLocation f13723b;

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonProcessingException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, th);
        this.f13723b = jsonLocation;
    }

    public void clearLocation() {
        this.f13723b = null;
    }

    @Override // com.fasterxml.jackson.core.JacksonException
    public JsonLocation getLocation() {
        return this.f13723b;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        JsonLocation location = getLocation();
        String messageSuffix = getMessageSuffix();
        if (location == null && messageSuffix == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append(message);
        if (messageSuffix != null) {
            sb.append(messageSuffix);
        }
        if (location != null) {
            sb.append('\n');
            sb.append(" at ");
            sb.append(location.toString());
        }
        return sb.toString();
    }

    protected String getMessageSuffix() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.JacksonException
    public String getOriginalMessage() {
        return super.getMessage();
    }

    @Override // com.fasterxml.jackson.core.JacksonException
    public Object getProcessor() {
        return null;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonProcessingException(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonProcessingException(String str, JsonLocation jsonLocation) {
        this(str, jsonLocation, null);
    }

    protected JsonProcessingException(String str, Throwable th) {
        this(str, null, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonProcessingException(Throwable th) {
        this(null, null, th);
    }
}
