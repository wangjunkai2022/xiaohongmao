package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: ContextualKeyDeserializer.java */
/* loaded from: classes.dex */
public interface d {
    com.fasterxml.jackson.databind.h createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException;
}
