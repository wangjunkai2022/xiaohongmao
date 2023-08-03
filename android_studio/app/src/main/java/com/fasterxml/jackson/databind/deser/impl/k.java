package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UnwrappedPropertyHandler.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    protected final List<SettableBeanProperty> f14840a;

    public k() {
        this.f14840a = new ArrayList();
    }

    public void a(SettableBeanProperty settableBeanProperty) {
        this.f14840a.add(settableBeanProperty);
    }

    public Object b(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, t tVar) throws IOException {
        int size = this.f14840a.size();
        for (int i4 = 0; i4 < size; i4++) {
            JsonParser i22 = tVar.i2();
            i22.y1();
            this.f14840a.get(i4).deserializeAndSet(i22, deserializationContext, obj);
        }
        return obj;
    }

    public k c(NameTransformer nameTransformer) {
        com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer;
        ArrayList arrayList = new ArrayList(this.f14840a.size());
        for (SettableBeanProperty settableBeanProperty : this.f14840a) {
            SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
            com.fasterxml.jackson.databind.d<Object> valueDeserializer = withSimpleName.getValueDeserializer();
            if (valueDeserializer != null && (unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer)) != valueDeserializer) {
                withSimpleName = withSimpleName.withValueDeserializer(unwrappingDeserializer);
            }
            arrayList.add(withSimpleName);
        }
        return new k(arrayList);
    }

    protected k(List<SettableBeanProperty> list) {
        this.f14840a = list;
    }
}
