package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.b;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;

/* loaded from: classes2.dex */
public abstract class StaticListSerializerBase<T extends Collection<?>> extends StdSerializer<T> implements e {

    /* renamed from: d  reason: collision with root package name */
    protected final Boolean f15823d;

    /* JADX INFO: Access modifiers changed from: protected */
    public StaticListSerializerBase(Class<?> cls) {
        super(cls, false);
        this.f15823d = null;
    }

    public abstract g<?> _withResolved(BeanProperty beanProperty, Boolean bool);

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        b o9 = fVar.o(javaType);
        if (o9 != null) {
            v(o9);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    @Override // com.fasterxml.jackson.databind.ser.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.g<?> createContextual(com.fasterxml.jackson.databind.l r6, com.fasterxml.jackson.databind.BeanProperty r7) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r5 = this;
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            r1 = 0
            if (r7 == 0) goto L1a
            com.fasterxml.jackson.databind.AnnotationIntrospector r2 = r6.getAnnotationIntrospector()
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r3 = r7.getMember()
            if (r3 == 0) goto L1a
            java.lang.Object r2 = r2.findContentSerializer(r3)
            if (r2 == 0) goto L1a
            com.fasterxml.jackson.databind.g r2 = r6.serializerInstance(r3, r2)
            goto L1b
        L1a:
            r2 = r1
        L1b:
            java.lang.Class r3 = r5.handledType()
            com.fasterxml.jackson.annotation.JsonFormat$Value r3 = r5.k(r6, r7, r3)
            if (r3 == 0) goto L2c
            com.fasterxml.jackson.annotation.JsonFormat$Feature r4 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r3 = r3.getFeature(r4)
            goto L2d
        L2c:
            r3 = r1
        L2d:
            com.fasterxml.jackson.databind.g r2 = r5.h(r6, r7, r2)
            if (r2 != 0) goto L37
            com.fasterxml.jackson.databind.g r2 = r6.findContentValueSerializer(r0, r7)
        L37:
            boolean r4 = r5.n(r2)
            if (r4 == 0) goto L4b
            java.lang.Boolean r6 = r5.f15823d
            boolean r6 = java.util.Objects.equals(r3, r6)
            if (r6 == 0) goto L46
            return r5
        L46:
            com.fasterxml.jackson.databind.g r6 = r5._withResolved(r7, r3)
            return r6
        L4b:
            com.fasterxml.jackson.databind.ser.std.CollectionSerializer r7 = new com.fasterxml.jackson.databind.ser.std.CollectionSerializer
            com.fasterxml.jackson.databind.JavaType r6 = r6.constructType(r0)
            r0 = 1
            r7.<init>(r6, r0, r1, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        return d("array", true).set("items", w());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.g
    public /* bridge */ /* synthetic */ boolean isEmpty(l lVar, Object obj) {
        return isEmpty(lVar, (l) ((Collection) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.g
    public /* bridge */ /* synthetic */ void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        serializeWithType((StaticListSerializerBase<T>) ((Collection) obj), jsonGenerator, lVar, fVar);
    }

    public abstract void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException;

    protected abstract void v(b bVar) throws JsonMappingException;

    protected abstract com.fasterxml.jackson.databind.e w();

    public boolean isEmpty(l lVar, T t9) {
        return t9 == null || t9.size() == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StaticListSerializerBase(StaticListSerializerBase<?> staticListSerializerBase, Boolean bool) {
        super(staticListSerializerBase);
        this.f15823d = bool;
    }
}
