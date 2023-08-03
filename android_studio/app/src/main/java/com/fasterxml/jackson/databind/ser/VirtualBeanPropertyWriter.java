package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class VirtualBeanPropertyWriter extends BeanPropertyWriter implements Serializable {

    /* renamed from: w  reason: collision with root package name */
    private static final long f15623w = 1;

    protected VirtualBeanPropertyWriter(com.fasterxml.jackson.databind.introspect.k kVar, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType) {
        this(kVar, aVar, javaType, null, null, null, kVar.c());
    }

    protected static boolean h(JsonInclude.Value value) {
        JsonInclude.Include valueInclusion;
        return (value == null || (valueInclusion = value.getValueInclusion()) == JsonInclude.Include.ALWAYS || valueInclusion == JsonInclude.Include.USE_DEFAULTS) ? false : true;
    }

    protected static Object i(JsonInclude.Value value) {
        if (value == null) {
            return Boolean.FALSE;
        }
        JsonInclude.Include valueInclusion = value.getValueInclusion();
        if (valueInclusion == JsonInclude.Include.ALWAYS || valueInclusion == JsonInclude.Include.NON_NULL || valueInclusion == JsonInclude.Include.USE_DEFAULTS) {
            return null;
        }
        return BeanPropertyWriter.MARKER_FOR_EMPTY;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase, com.fasterxml.jackson.databind.BeanProperty
    public boolean isVirtual() {
        return true;
    }

    protected abstract Object j(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception;

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        Object j4 = j(obj, jsonGenerator, lVar);
        if (j4 == null) {
            com.fasterxml.jackson.databind.g<Object> gVar = this.f15608o;
            if (gVar != null) {
                gVar.serialize(null, jsonGenerator, lVar);
                return;
            } else {
                jsonGenerator.W0();
                return;
            }
        }
        com.fasterxml.jackson.databind.g<?> gVar2 = this.f15607n;
        if (gVar2 == null) {
            Class<?> cls = j4.getClass();
            com.fasterxml.jackson.databind.ser.impl.c cVar = this.f15610q;
            com.fasterxml.jackson.databind.g<?> m9 = cVar.m(cls);
            gVar2 = m9 == null ? b(cVar, cls, lVar) : m9;
        }
        Object obj2 = this.f15612s;
        if (obj2 != null) {
            if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                if (gVar2.isEmpty(lVar, j4)) {
                    serializeAsPlaceholder(obj, jsonGenerator, lVar);
                    return;
                }
            } else if (obj2.equals(j4)) {
                serializeAsPlaceholder(obj, jsonGenerator, lVar);
                return;
            }
        }
        if (j4 == obj && c(obj, jsonGenerator, lVar, gVar2)) {
            return;
        }
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15609p;
        if (fVar == null) {
            gVar2.serialize(j4, jsonGenerator, lVar);
        } else {
            gVar2.serializeWithType(j4, jsonGenerator, lVar, fVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        Object j4 = j(obj, jsonGenerator, lVar);
        if (j4 == null) {
            if (this.f15608o != null) {
                jsonGenerator.U0(this.f15598e);
                this.f15608o.serialize(null, jsonGenerator, lVar);
                return;
            }
            return;
        }
        com.fasterxml.jackson.databind.g<?> gVar = this.f15607n;
        if (gVar == null) {
            Class<?> cls = j4.getClass();
            com.fasterxml.jackson.databind.ser.impl.c cVar = this.f15610q;
            com.fasterxml.jackson.databind.g<?> m9 = cVar.m(cls);
            gVar = m9 == null ? b(cVar, cls, lVar) : m9;
        }
        Object obj2 = this.f15612s;
        if (obj2 != null) {
            if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                if (gVar.isEmpty(lVar, j4)) {
                    return;
                }
            } else if (obj2.equals(j4)) {
                return;
            }
        }
        if (j4 == obj && c(obj, jsonGenerator, lVar, gVar)) {
            return;
        }
        jsonGenerator.U0(this.f15598e);
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15609p;
        if (fVar == null) {
            gVar.serialize(j4, jsonGenerator, lVar);
        } else {
            gVar.serializeWithType(j4, jsonGenerator, lVar, fVar);
        }
    }

    public abstract VirtualBeanPropertyWriter withConfig(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar, com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType);

    protected VirtualBeanPropertyWriter() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VirtualBeanPropertyWriter(com.fasterxml.jackson.databind.introspect.k kVar, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType, com.fasterxml.jackson.databind.g<?> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, JavaType javaType2, JsonInclude.Value value, Class<?>[] clsArr) {
        super(kVar, kVar.q(), aVar, javaType, gVar, fVar, javaType2, h(value), i(value), clsArr);
    }

    @Deprecated
    protected VirtualBeanPropertyWriter(com.fasterxml.jackson.databind.introspect.k kVar, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType, com.fasterxml.jackson.databind.g<?> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, JavaType javaType2, JsonInclude.Value value) {
        this(kVar, aVar, javaType, gVar, fVar, javaType2, value, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VirtualBeanPropertyWriter(VirtualBeanPropertyWriter virtualBeanPropertyWriter) {
        super(virtualBeanPropertyWriter);
    }

    protected VirtualBeanPropertyWriter(VirtualBeanPropertyWriter virtualBeanPropertyWriter, PropertyName propertyName) {
        super(virtualBeanPropertyWriter, propertyName);
    }
}
