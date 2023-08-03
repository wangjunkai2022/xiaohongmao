package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.deser.j;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class StdKeyDeserializers implements j, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f15010a = 1;

    private static h b(DeserializationConfig deserializationConfig, AnnotatedMember annotatedMember) {
        if (annotatedMember instanceof AnnotatedConstructor) {
            Constructor<?> annotated = ((AnnotatedConstructor) annotatedMember).getAnnotated();
            if (deserializationConfig.canOverrideAccessModifiers()) {
                g.i(annotated, deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return new StdKeyDeserializer.c(annotated);
        }
        Method annotated2 = ((AnnotatedMethod) annotatedMember).getAnnotated();
        if (deserializationConfig.canOverrideAccessModifiers()) {
            g.i(annotated2, deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new StdKeyDeserializer.d(annotated2);
    }

    private static AnnotatedMethod c(List<com.fasterxml.jackson.databind.introspect.b<AnnotatedMethod, JsonCreator.Mode>> list) throws JsonMappingException {
        AnnotatedMethod annotatedMethod = null;
        for (com.fasterxml.jackson.databind.introspect.b<AnnotatedMethod, JsonCreator.Mode> bVar : list) {
            if (bVar.f15246b != null) {
                if (annotatedMethod == null) {
                    annotatedMethod = bVar.f15245a;
                } else {
                    Class<?> declaringClass = bVar.f15245a.getDeclaringClass();
                    throw new IllegalArgumentException("Multiple suitable annotated Creator factory methods to be used as the Key deserializer for type " + g.j0(declaringClass));
                }
            }
        }
        return annotatedMethod;
    }

    public static h constructDelegatingKeyDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, com.fasterxml.jackson.databind.d<?> dVar) {
        return new StdKeyDeserializer.a(javaType.getRawClass(), dVar);
    }

    public static h constructEnumKeyDeserializer(EnumResolver enumResolver) {
        return new StdKeyDeserializer.b(enumResolver, null);
    }

    private static com.fasterxml.jackson.databind.introspect.b<AnnotatedConstructor, JsonCreator.Mode> d(com.fasterxml.jackson.databind.b bVar) {
        for (com.fasterxml.jackson.databind.introspect.b<AnnotatedConstructor, JsonCreator.Mode> bVar2 : bVar.C()) {
            AnnotatedConstructor annotatedConstructor = bVar2.f15245a;
            if (annotatedConstructor.getParameterCount() == 1 && String.class == annotatedConstructor.getRawParameterType(0)) {
                return bVar2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean e(com.fasterxml.jackson.databind.introspect.b bVar) {
        return (((AnnotatedMethod) bVar.f15245a).getParameterCount() == 1 && ((AnnotatedMethod) bVar.f15245a).getRawParameterType(0) == String.class && bVar.f15246b != JsonCreator.Mode.PROPERTIES) ? false : true;
    }

    public static h findStringBasedKeyDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.b introspectForCreation = deserializationConfig.introspectForCreation(javaType);
        com.fasterxml.jackson.databind.introspect.b<AnnotatedConstructor, JsonCreator.Mode> d4 = d(introspectForCreation);
        if (d4 != null && d4.f15246b != null) {
            return b(deserializationConfig, d4.f15245a);
        }
        List<com.fasterxml.jackson.databind.introspect.b<AnnotatedMethod, JsonCreator.Mode>> E = introspectForCreation.E();
        E.removeIf(d.f15072a);
        AnnotatedMethod c10 = c(E);
        if (c10 != null) {
            return b(deserializationConfig, c10);
        }
        if (d4 != null) {
            return b(deserializationConfig, d4.f15245a);
        }
        if (E.isEmpty()) {
            return null;
        }
        return b(deserializationConfig, E.get(0).f15245a);
    }

    @Override // com.fasterxml.jackson.databind.deser.j
    public h findKeyDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass.isPrimitive()) {
            rawClass = g.A0(rawClass);
        }
        return StdKeyDeserializer.forType(rawClass);
    }

    public static h constructEnumKeyDeserializer(EnumResolver enumResolver, AnnotatedMethod annotatedMethod) {
        return new StdKeyDeserializer.b(enumResolver, annotatedMethod);
    }
}
