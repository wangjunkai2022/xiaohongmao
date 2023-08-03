package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase;
import java.io.IOException;
import java.util.List;

@c2.a
/* loaded from: classes.dex */
public final class IndexedListSerializer extends AsArraySerializerBase<List<?>> {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15650k = 1;

    public IndexedListSerializer(JavaType javaType, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, g<Object> gVar) {
        super(List.class, javaType, z9, fVar, gVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar) {
        return new IndexedListSerializer(this, this.f15731e, fVar, this.f15735i, this.f15733g);
    }

    public void serializeContentsUsing(List<?> list, JsonGenerator jsonGenerator, l lVar, g<Object> gVar) throws IOException {
        int size = list.size();
        if (size == 0) {
            return;
        }
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15734h;
        for (int i4 = 0; i4 < size; i4++) {
            Object obj = list.get(i4);
            if (obj == null) {
                try {
                    lVar.defaultSerializeNull(jsonGenerator);
                } catch (Exception e4) {
                    wrapAndThrow(lVar, e4, list, i4);
                }
            } else if (fVar == null) {
                gVar.serialize(obj, jsonGenerator, lVar);
            } else {
                gVar.serializeWithType(obj, jsonGenerator, lVar, fVar);
            }
        }
    }

    public void serializeTypedContents(List<?> list, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> x9;
        int size = list.size();
        if (size == 0) {
            return;
        }
        int i4 = 0;
        try {
            com.fasterxml.jackson.databind.jsontype.f fVar = this.f15734h;
            c cVar = this.f15736j;
            while (i4 < size) {
                Object obj = list.get(i4);
                if (obj == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else {
                    Class<?> cls = obj.getClass();
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
                    m9.serializeWithType(obj, jsonGenerator, lVar, fVar);
                }
                i4++;
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, list, i4);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ AsArraySerializerBase<List<?>> withResolved2(BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g gVar, Boolean bool) {
        return withResolved(beanProperty, fVar, (g<?>) gVar, bool);
    }

    public IndexedListSerializer(IndexedListSerializer indexedListSerializer, BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar, Boolean bool) {
        super(indexedListSerializer, beanProperty, fVar, gVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(List<?> list) {
        return list.size() == 1;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, List<?> list) {
        return list.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(List<?> list, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int size = list.size();
        if (size == 1 && ((this.f15733g == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15733g == Boolean.TRUE)) {
            serializeContents(list, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.J1(list, size);
        serializeContents(list, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(List<?> list, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> x9;
        g<Object> gVar = this.f15735i;
        if (gVar != null) {
            serializeContentsUsing(list, jsonGenerator, lVar, gVar);
        } else if (this.f15734h != null) {
            serializeTypedContents(list, jsonGenerator, lVar);
        } else {
            int size = list.size();
            if (size == 0) {
                return;
            }
            int i4 = 0;
            try {
                c cVar = this.f15736j;
                while (i4 < size) {
                    Object obj = list.get(i4);
                    if (obj == null) {
                        lVar.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = obj.getClass();
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
                        m9.serialize(obj, jsonGenerator, lVar);
                    }
                    i4++;
                }
            } catch (Exception e4) {
                wrapAndThrow(lVar, e4, list, i4);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public AsArraySerializerBase<List<?>> withResolved(BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar, Boolean bool) {
        return new IndexedListSerializer(this, beanProperty, fVar, gVar, bool);
    }
}
