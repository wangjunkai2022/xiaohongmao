package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonProcessingException;

/* loaded from: classes.dex */
public abstract class DatabindException extends JsonProcessingException {

    /* renamed from: d  reason: collision with root package name */
    private static final long f14321d = 3;

    /* JADX INFO: Access modifiers changed from: protected */
    public DatabindException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }

    public abstract void prependPath(Object obj, int i4);

    public abstract void prependPath(Object obj, String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public DatabindException(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DatabindException(String str, JsonLocation jsonLocation) {
        this(str, jsonLocation, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DatabindException(String str, Throwable th) {
        this(str, null, th);
    }
}
