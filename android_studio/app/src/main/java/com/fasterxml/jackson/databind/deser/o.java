package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;

/* compiled from: ValueInstantiators.java */
/* loaded from: classes.dex */
public interface o {

    /* compiled from: ValueInstantiators.java */
    /* loaded from: classes.dex */
    public static class a implements o {
        @Override // com.fasterxml.jackson.databind.deser.o
        public ValueInstantiator findValueInstantiator(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, ValueInstantiator valueInstantiator) {
            return valueInstantiator;
        }
    }

    ValueInstantiator findValueInstantiator(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, ValueInstantiator valueInstantiator);
}
