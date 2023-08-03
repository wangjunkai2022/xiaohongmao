package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import java.io.Closeable;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class DefaultBaseTypeLimitingValidator extends PolymorphicTypeValidator implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15411b = 1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f15412b = new a();

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f15413a;

        private a() {
            HashSet hashSet = new HashSet();
            this.f15413a = hashSet;
            hashSet.add(Object.class.getName());
            hashSet.add(Closeable.class.getName());
            hashSet.add(Serializable.class.getName());
            hashSet.add(AutoCloseable.class.getName());
            hashSet.add(Cloneable.class.getName());
            hashSet.add("java.util.logging.Handler");
            hashSet.add("javax.naming.Referenceable");
            hashSet.add("javax.sql.DataSource");
        }

        public boolean a(Class<?> cls) {
            return this.f15413a.contains(cls.getName());
        }
    }

    protected boolean a(MapperConfig<?> mapperConfig, JavaType javaType, JavaType javaType2) {
        return true;
    }

    protected boolean b(MapperConfig<?> mapperConfig, JavaType javaType) {
        return a.f15412b.a(javaType.getRawClass());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator
    public PolymorphicTypeValidator.Validity validateBaseType(MapperConfig<?> mapperConfig, JavaType javaType) {
        if (b(mapperConfig, javaType)) {
            return PolymorphicTypeValidator.Validity.DENIED;
        }
        return PolymorphicTypeValidator.Validity.INDETERMINATE;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator
    public PolymorphicTypeValidator.Validity validateSubClassName(MapperConfig<?> mapperConfig, JavaType javaType, String str) {
        return PolymorphicTypeValidator.Validity.INDETERMINATE;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator
    public PolymorphicTypeValidator.Validity validateSubType(MapperConfig<?> mapperConfig, JavaType javaType, JavaType javaType2) {
        return a(mapperConfig, javaType, javaType2) ? PolymorphicTypeValidator.Validity.ALLOWED : PolymorphicTypeValidator.Validity.DENIED;
    }
}
