package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.Serializable;

/* loaded from: classes.dex */
public class NullsAsEmptyProvider implements l, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f14717b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<?> f14718a;

    public NullsAsEmptyProvider(com.fasterxml.jackson.databind.d<?> dVar) {
        this.f14718a = dVar;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public /* synthetic */ Object getAbsentValue(DeserializationContext deserializationContext) {
        return com.fasterxml.jackson.databind.deser.k.a(this, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14718a.getEmptyValue(deserializationContext);
    }
}
