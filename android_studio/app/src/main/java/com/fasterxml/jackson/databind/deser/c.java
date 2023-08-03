package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: ContextualDeserializer.java */
/* loaded from: classes.dex */
public interface c {
    com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException;
}
