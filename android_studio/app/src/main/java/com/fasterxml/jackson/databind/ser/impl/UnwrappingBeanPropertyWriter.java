package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.jsonFormatVisitors.k;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class UnwrappingBeanPropertyWriter extends BeanPropertyWriter implements Serializable {

    /* renamed from: x  reason: collision with root package name */
    private static final long f15681x = 1;

    /* renamed from: w  reason: collision with root package name */
    protected final NameTransformer f15682w;

    /* loaded from: classes.dex */
    class a extends f.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ k f15683b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l lVar, k kVar) {
            super(lVar);
            this.f15683b = kVar;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f.a, com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public k e(JavaType javaType) throws JsonMappingException {
            return this.f15683b;
        }
    }

    public UnwrappingBeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, NameTransformer nameTransformer) {
        super(beanPropertyWriter);
        this.f15682w = nameTransformer;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    protected void a(ObjectNode objectNode, com.fasterxml.jackson.databind.e eVar) {
        com.fasterxml.jackson.databind.e eVar2 = eVar.get("properties");
        if (eVar2 != null) {
            Iterator<Map.Entry<String, com.fasterxml.jackson.databind.e>> fields = eVar2.fields();
            while (fields.hasNext()) {
                Map.Entry<String, com.fasterxml.jackson.databind.e> next = fields.next();
                String key = next.getKey();
                NameTransformer nameTransformer = this.f15682w;
                if (nameTransformer != null) {
                    key = nameTransformer.transform(key);
                }
                objectNode.set(key, next.getValue());
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void assignSerializer(g<Object> gVar) {
        if (gVar != null) {
            NameTransformer nameTransformer = this.f15682w;
            if (gVar.isUnwrappingSerializer() && (gVar instanceof UnwrappingBeanSerializer)) {
                nameTransformer = NameTransformer.chainedTransformer(nameTransformer, ((UnwrappingBeanSerializer) gVar).f15686n);
            }
            gVar = gVar.unwrappingSerializer(nameTransformer);
        }
        super.assignSerializer(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public g<Object> b(c cVar, Class<?> cls, l lVar) throws JsonMappingException {
        g<Object> findValueSerializer;
        JavaType javaType = this.f15602i;
        if (javaType != null) {
            findValueSerializer = lVar.findValueSerializer(lVar.constructSpecializedType(javaType, cls), this);
        } else {
            findValueSerializer = lVar.findValueSerializer(cls, this);
        }
        NameTransformer nameTransformer = this.f15682w;
        if (findValueSerializer.isUnwrappingSerializer() && (findValueSerializer instanceof UnwrappingBeanSerializer)) {
            nameTransformer = NameTransformer.chainedTransformer(nameTransformer, ((UnwrappingBeanSerializer) findValueSerializer).f15686n);
        }
        g<Object> unwrappingSerializer = findValueSerializer.unwrappingSerializer(nameTransformer);
        this.f15610q = this.f15610q.l(cls, unwrappingSerializer);
        return unwrappingSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public void depositSchemaProperty(k kVar, l lVar) throws JsonMappingException {
        g<Object> unwrappingSerializer = lVar.findValueSerializer(getType(), this).unwrappingSerializer(this.f15682w);
        if (unwrappingSerializer.isUnwrappingSerializer()) {
            unwrappingSerializer.acceptJsonFormatVisitor(new a(lVar, kVar), getType());
        } else {
            super.depositSchemaProperty(kVar, lVar);
        }
    }

    protected UnwrappingBeanPropertyWriter h(NameTransformer nameTransformer, SerializedString serializedString) {
        return new UnwrappingBeanPropertyWriter(this, nameTransformer, serializedString);
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public boolean isUnwrapping() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
        Object obj2 = get(obj);
        if (obj2 == null) {
            return;
        }
        g<?> gVar = this.f15607n;
        if (gVar == null) {
            Class<?> cls = obj2.getClass();
            c cVar = this.f15610q;
            g<?> m9 = cVar.m(cls);
            gVar = m9 == null ? b(cVar, cls, lVar) : m9;
        }
        Object obj3 = this.f15612s;
        if (obj3 != null) {
            if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj3) {
                if (gVar.isEmpty(lVar, obj2)) {
                    return;
                }
            } else if (obj3.equals(obj2)) {
                return;
            }
        }
        if (obj2 == obj && c(obj, jsonGenerator, lVar, gVar)) {
            return;
        }
        if (!gVar.isUnwrappingSerializer()) {
            jsonGenerator.U0(this.f15598e);
        }
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15609p;
        if (fVar == null) {
            gVar.serialize(obj2, jsonGenerator, lVar);
        } else {
            gVar.serializeWithType(obj2, jsonGenerator, lVar, fVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public UnwrappingBeanPropertyWriter rename(NameTransformer nameTransformer) {
        return h(NameTransformer.chainedTransformer(nameTransformer, this.f15682w), new SerializedString(nameTransformer.transform(this.f15598e.getValue())));
    }

    protected UnwrappingBeanPropertyWriter(UnwrappingBeanPropertyWriter unwrappingBeanPropertyWriter, NameTransformer nameTransformer, SerializedString serializedString) {
        super(unwrappingBeanPropertyWriter, serializedString);
        this.f15682w = nameTransformer;
    }
}
