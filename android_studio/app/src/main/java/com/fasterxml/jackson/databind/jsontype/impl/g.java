package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;

/* compiled from: MinimalClassNameIdResolver.java */
/* loaded from: classes.dex */
public class g extends f {

    /* renamed from: e  reason: collision with root package name */
    protected final String f15449e;

    /* renamed from: f  reason: collision with root package name */
    protected final String f15450f;

    protected g(JavaType javaType, TypeFactory typeFactory, PolymorphicTypeValidator polymorphicTypeValidator) {
        super(javaType, typeFactory, polymorphicTypeValidator);
        String name = javaType.getRawClass().getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            this.f15449e = "";
            this.f15450f = ".";
            return;
        }
        this.f15450f = name.substring(0, lastIndexOf + 1);
        this.f15449e = name.substring(0, lastIndexOf);
    }

    public static g l(JavaType javaType, MapperConfig<?> mapperConfig, PolymorphicTypeValidator polymorphicTypeValidator) {
        return new g(javaType, mapperConfig.getTypeFactory(), polymorphicTypeValidator);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.f, com.fasterxml.jackson.databind.jsontype.c
    public String a(Object obj) {
        String name = obj.getClass().getName();
        return name.startsWith(this.f15450f) ? name.substring(this.f15450f.length() - 1) : name;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.f, com.fasterxml.jackson.databind.jsontype.c
    public JsonTypeInfo.Id g() {
        return JsonTypeInfo.Id.MINIMAL_CLASS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.jsontype.impl.f
    public JavaType i(String str, com.fasterxml.jackson.databind.c cVar) throws IOException {
        if (str.startsWith(".")) {
            StringBuilder sb = new StringBuilder(str.length() + this.f15449e.length());
            if (this.f15449e.isEmpty()) {
                sb.append(str.substring(1));
            } else {
                sb.append(this.f15449e);
                sb.append(str);
            }
            str = sb.toString();
        }
        return super.i(str, cVar);
    }
}
