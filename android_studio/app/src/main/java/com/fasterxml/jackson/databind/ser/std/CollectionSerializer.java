package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.impl.c;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class CollectionSerializer extends AsArraySerializerBase<Collection<?>> {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15754k = 1;

    public CollectionSerializer(JavaType javaType, boolean z9, f fVar, g<Object> gVar) {
        super(Collection.class, javaType, z9, fVar, gVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
        return new CollectionSerializer(this, this.f15731e, fVar, this.f15735i, this.f15733g);
    }

    public void serializeContentsUsing(Collection<?> collection, JsonGenerator jsonGenerator, l lVar, g<Object> gVar) throws IOException {
        Iterator<?> it = collection.iterator();
        if (it.hasNext()) {
            f fVar = this.f15734h;
            int i4 = 0;
            do {
                Object next = it.next();
                if (next == null) {
                    try {
                        lVar.defaultSerializeNull(jsonGenerator);
                    } catch (Exception e4) {
                        wrapAndThrow(lVar, e4, collection, i4);
                    }
                } else if (fVar == null) {
                    gVar.serialize(next, jsonGenerator, lVar);
                } else {
                    gVar.serializeWithType(next, jsonGenerator, lVar, fVar);
                }
                i4++;
            } while (it.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public /* bridge */ /* synthetic */ AsArraySerializerBase<Collection<?>> withResolved(BeanProperty beanProperty, f fVar, g gVar, Boolean bool) {
        return withResolved2(beanProperty, fVar, (g<?>) gVar, bool);
    }

    @Deprecated
    public CollectionSerializer(JavaType javaType, boolean z9, f fVar, BeanProperty beanProperty, g<Object> gVar) {
        this(javaType, z9, fVar, gVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Collection<?> collection) {
        return collection.size() == 1;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Collection<?> collection) {
        return collection.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Collection<?> collection, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int size = collection.size();
        if (size == 1 && ((this.f15733g == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15733g == Boolean.TRUE)) {
            serializeContents(collection, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.J1(collection, size);
        serializeContents(collection, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(Collection<?> collection, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> x9;
        jsonGenerator.w0(collection);
        g<Object> gVar = this.f15735i;
        if (gVar != null) {
            serializeContentsUsing(collection, jsonGenerator, lVar, gVar);
            return;
        }
        Iterator<?> it = collection.iterator();
        if (it.hasNext()) {
            c cVar = this.f15736j;
            f fVar = this.f15734h;
            int i4 = 0;
            do {
                try {
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
                    i4++;
                } catch (Exception e4) {
                    wrapAndThrow(lVar, e4, collection, i4);
                    return;
                }
            } while (it.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public AsArraySerializerBase<Collection<?>> withResolved2(BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        return new CollectionSerializer(this, beanProperty, fVar, gVar, bool);
    }

    public CollectionSerializer(CollectionSerializer collectionSerializer, BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        super(collectionSerializer, beanProperty, fVar, gVar, bool);
    }
}
