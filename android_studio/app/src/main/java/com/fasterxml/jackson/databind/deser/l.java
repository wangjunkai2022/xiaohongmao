package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.util.AccessPattern;

/* compiled from: NullValueProvider.java */
/* loaded from: classes.dex */
public interface l {
    Object getAbsentValue(DeserializationContext deserializationContext) throws JsonMappingException;

    AccessPattern getNullAccessPattern();

    Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException;
}
