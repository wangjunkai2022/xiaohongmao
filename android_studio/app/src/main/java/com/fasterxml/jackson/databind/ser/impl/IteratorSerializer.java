package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase;
import java.io.IOException;
import java.util.Iterator;

@c2.a
/* loaded from: classes.dex */
public class IteratorSerializer extends AsArraySerializerBase<Iterator<?>> {
    public IteratorSerializer(JavaType javaType, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar) {
        super(Iterator.class, javaType, z9, fVar, (g<Object>) null);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar) {
        return new IteratorSerializer(this, this.f15731e, fVar, this.f15735i, this.f15733g);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Iterator<?> it) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ AsArraySerializerBase<Iterator<?>> withResolved2(BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g gVar, Boolean bool) {
        return withResolved(beanProperty, fVar, (g<?>) gVar, bool);
    }

    protected void y(Iterator<?> it, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> x9;
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15734h;
        c cVar = this.f15736j;
        do {
            Object next = it.next();
            if (next == null) {
                lVar.defaultSerializeNull(jsonGenerator);
            } else {
                Class<?> cls = next.getClass();
                g<Object> m9 = cVar.m(cls);
                if (m9 == null) {
                    if (this.f15730d.hasGenericTypes()) {
                        x9 = w(cVar, lVar.constructSpecializedType(this.f15730d, cls), lVar);
                    } else {
                        x9 = x(cVar, cls, lVar);
                    }
                    m9 = x9;
                    cVar = this.f15736j;
                }
                if (fVar == null) {
                    m9.serialize(next, jsonGenerator, lVar);
                } else {
                    m9.serializeWithType(next, jsonGenerator, lVar, fVar);
                }
            }
        } while (it.hasNext());
    }

    public IteratorSerializer(IteratorSerializer iteratorSerializer, BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar, Boolean bool) {
        super(iteratorSerializer, beanProperty, fVar, gVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Iterator<?> it) {
        return !it.hasNext();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Iterator<?> it, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.I1(it);
        serializeContents(it, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(Iterator<?> it, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (it.hasNext()) {
            g<Object> gVar = this.f15735i;
            if (gVar == null) {
                y(it, jsonGenerator, lVar);
                return;
            }
            com.fasterxml.jackson.databind.jsontype.f fVar = this.f15734h;
            do {
                Object next = it.next();
                if (next == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else if (fVar == null) {
                    gVar.serialize(next, jsonGenerator, lVar);
                } else {
                    gVar.serializeWithType(next, jsonGenerator, lVar, fVar);
                }
            } while (it.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public AsArraySerializerBase<Iterator<?>> withResolved(BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar, Boolean bool) {
        return new IteratorSerializer(this, beanProperty, fVar, gVar, bool);
    }
}
