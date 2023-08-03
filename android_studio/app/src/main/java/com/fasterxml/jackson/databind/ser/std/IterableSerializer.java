package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import java.io.IOException;
import java.util.Iterator;

@a
/* loaded from: classes2.dex */
public class IterableSerializer extends AsArraySerializerBase<Iterable<?>> {
    public IterableSerializer(JavaType javaType, boolean z9, f fVar) {
        super(Iterable.class, javaType, z9, fVar, (g<Object>) null);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
        return new IterableSerializer(this, this.f15731e, fVar, this.f15735i, this.f15733g);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public /* bridge */ /* synthetic */ AsArraySerializerBase<Iterable<?>> withResolved(BeanProperty beanProperty, f fVar, g gVar, Boolean bool) {
        return withResolved2(beanProperty, fVar, (g<?>) gVar, bool);
    }

    public IterableSerializer(IterableSerializer iterableSerializer, BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        super(iterableSerializer, beanProperty, fVar, gVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Iterable<?> iterable) {
        if (iterable != null) {
            Iterator<?> it = iterable.iterator();
            if (it.hasNext()) {
                it.next();
                return !it.hasNext();
            }
            return false;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Iterable<?> iterable) {
        return !iterable.iterator().hasNext();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Iterable<?> iterable, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (((this.f15733g == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15733g == Boolean.TRUE) && hasSingleElement(iterable)) {
            serializeContents(iterable, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.I1(iterable);
        serializeContents(iterable, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(Iterable<?> iterable, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> gVar;
        Iterator<?> it = iterable.iterator();
        if (it.hasNext()) {
            f fVar = this.f15734h;
            Class<?> cls = null;
            g<Object> gVar2 = null;
            do {
                Object next = it.next();
                if (next == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else {
                    g<Object> gVar3 = this.f15735i;
                    if (gVar3 == null) {
                        Class<?> cls2 = next.getClass();
                        if (cls2 != cls) {
                            gVar2 = lVar.findValueSerializer(cls2, this.f15731e);
                            cls = cls2;
                        }
                        gVar = gVar2;
                    } else {
                        gVar = gVar2;
                        gVar2 = gVar3;
                    }
                    if (fVar == null) {
                        gVar2.serialize(next, jsonGenerator, lVar);
                    } else {
                        gVar2.serializeWithType(next, jsonGenerator, lVar, fVar);
                    }
                    gVar2 = gVar;
                }
            } while (it.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public AsArraySerializerBase<Iterable<?>> withResolved2(BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        return new IterableSerializer(this, beanProperty, fVar, gVar, bool);
    }
}
