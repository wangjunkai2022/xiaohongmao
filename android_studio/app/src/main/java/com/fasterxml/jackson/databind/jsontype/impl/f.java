package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.util.EnumMap;
import java.util.EnumSet;

/* compiled from: ClassNameIdResolver.java */
/* loaded from: classes.dex */
public class f extends j {

    /* renamed from: d  reason: collision with root package name */
    private static final String f15447d = "java.util.";

    /* renamed from: c  reason: collision with root package name */
    protected final PolymorphicTypeValidator f15448c;

    @Deprecated
    protected f(JavaType javaType, TypeFactory typeFactory) {
        this(javaType, typeFactory, LaissezFaireSubTypeValidator.instance);
    }

    public static f j(JavaType javaType, MapperConfig<?> mapperConfig, PolymorphicTypeValidator polymorphicTypeValidator) {
        return new f(javaType, mapperConfig.getTypeFactory(), polymorphicTypeValidator);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public String a(Object obj) {
        return h(obj, obj.getClass(), this.f15464a);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.j, com.fasterxml.jackson.databind.jsontype.c
    public String b() {
        return "class name used as type id";
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.j, com.fasterxml.jackson.databind.jsontype.c
    public JavaType d(com.fasterxml.jackson.databind.c cVar, String str) throws IOException {
        return i(str, cVar);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public String e(Object obj, Class<?> cls) {
        return h(obj, cls, this.f15464a);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public JsonTypeInfo.Id g() {
        return JsonTypeInfo.Id.CLASS;
    }

    protected String h(Object obj, Class<?> cls, TypeFactory typeFactory) {
        if (com.fasterxml.jackson.databind.util.g.X(cls) && !cls.isEnum()) {
            cls = cls.getSuperclass();
        }
        String name = cls.getName();
        if (!name.startsWith(f15447d)) {
            return (name.indexOf(36) < 0 || com.fasterxml.jackson.databind.util.g.M(cls) == null || com.fasterxml.jackson.databind.util.g.M(this.f15465b.getRawClass()) != null) ? name : this.f15465b.getRawClass().getName();
        } else if (obj instanceof EnumSet) {
            return typeFactory.constructCollectionType(EnumSet.class, com.fasterxml.jackson.databind.util.g.w((EnumSet) obj)).toCanonical();
        } else {
            return obj instanceof EnumMap ? typeFactory.constructMapType(EnumMap.class, com.fasterxml.jackson.databind.util.g.v((EnumMap) obj), Object.class).toCanonical() : name;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType i(String str, com.fasterxml.jackson.databind.c cVar) throws IOException {
        JavaType resolveAndValidateSubType = cVar.resolveAndValidateSubType(this.f15465b, str, this.f15448c);
        return (resolveAndValidateSubType == null && (cVar instanceof DeserializationContext)) ? ((DeserializationContext) cVar).handleUnknownTypeId(this.f15465b, str, this, "no such class found") : resolveAndValidateSubType;
    }

    public void k(Class<?> cls, String str) {
    }

    public f(JavaType javaType, TypeFactory typeFactory, PolymorphicTypeValidator polymorphicTypeValidator) {
        super(javaType, typeFactory);
        this.f15448c = polymorphicTypeValidator;
    }
}
