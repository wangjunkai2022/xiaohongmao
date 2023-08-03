package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: NullValueProvider.java */
/* loaded from: classes.dex */
public final /* synthetic */ class k {
    public static Object a(l lVar, DeserializationContext deserializationContext) throws JsonMappingException {
        return lVar.getNullValue(deserializationContext);
    }
}
