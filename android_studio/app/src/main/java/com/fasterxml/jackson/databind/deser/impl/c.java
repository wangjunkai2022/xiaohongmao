package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import java.io.IOException;

/* compiled from: ErrorThrowingDeserializer.java */
/* loaded from: classes.dex */
public class c extends com.fasterxml.jackson.databind.d<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Error f14776a;

    public c(NoClassDefFoundError noClassDefFoundError) {
        this.f14776a = noClassDefFoundError;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        throw this.f14776a;
    }
}
