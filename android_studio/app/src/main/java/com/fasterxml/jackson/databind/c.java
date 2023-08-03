package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.h;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: DatabindContext.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f14466a = 500;

    private JavaType e(JavaType javaType, String str, PolymorphicTypeValidator polymorphicTypeValidator, int i4) throws JsonMappingException {
        MapperConfig<?> config = getConfig();
        PolymorphicTypeValidator.Validity validateSubClassName = polymorphicTypeValidator.validateSubClassName(config, javaType, str.substring(0, i4));
        if (validateSubClassName == PolymorphicTypeValidator.Validity.DENIED) {
            return (JavaType) j(javaType, str, polymorphicTypeValidator);
        }
        JavaType constructFromCanonical = getTypeFactory().constructFromCanonical(str);
        if (!constructFromCanonical.isTypeOrSubTypeOf(javaType.getRawClass())) {
            return (JavaType) h(javaType, str);
        }
        PolymorphicTypeValidator.Validity validity = PolymorphicTypeValidator.Validity.ALLOWED;
        return (validateSubClassName == validity || polymorphicTypeValidator.validateSubType(config, javaType, constructFromCanonical) == validity) ? constructFromCanonical : (JavaType) i(javaType, str, polymorphicTypeValidator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str, String str2) {
        if (str2 == null) {
            return str;
        }
        return str + ": " + str2;
    }

    protected String b(String str) {
        return str == null ? "[N/A]" : k(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c(String str, Object... objArr) {
        return objArr.length > 0 ? String.format(str, objArr) : str;
    }

    public abstract boolean canOverrideAccessModifiers();

    public abstract JavaType constructSpecializedType(JavaType javaType, Class<?> cls);

    public JavaType constructType(Type type) {
        if (type == null) {
            return null;
        }
        return getTypeFactory().constructType(type);
    }

    public com.fasterxml.jackson.databind.util.h<Object, Object> converterInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.fasterxml.jackson.databind.util.h) {
            return (com.fasterxml.jackson.databind.util.h) obj;
        }
        if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == h.a.class || com.fasterxml.jackson.databind.util.g.T(cls)) {
                return null;
            }
            if (com.fasterxml.jackson.databind.util.h.class.isAssignableFrom(cls)) {
                MapperConfig<?> config = getConfig();
                com.fasterxml.jackson.databind.cfg.c handlerInstantiator = config.getHandlerInstantiator();
                com.fasterxml.jackson.databind.util.h<?, ?> a10 = handlerInstantiator != null ? handlerInstantiator.a(config, aVar, cls) : null;
                return a10 == null ? (com.fasterxml.jackson.databind.util.h) com.fasterxml.jackson.databind.util.g.n(cls, config.canOverrideAccessModifiers()) : a10;
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String d(String str) {
        return str == null ? "[N/A]" : String.format("\"%s\"", k(str));
    }

    public abstract Class<?> getActiveView();

    public abstract AnnotationIntrospector getAnnotationIntrospector();

    public abstract Object getAttribute(Object obj);

    public abstract MapperConfig<?> getConfig();

    public abstract JsonFormat.Value getDefaultPropertyFormat(Class<?> cls);

    public abstract Locale getLocale();

    public abstract TimeZone getTimeZone();

    public abstract TypeFactory getTypeFactory();

    protected <T> T h(JavaType javaType, String str) throws JsonMappingException {
        throw invalidTypeIdException(javaType, str, "Not a subtype");
    }

    protected <T> T i(JavaType javaType, String str, PolymorphicTypeValidator polymorphicTypeValidator) throws JsonMappingException {
        throw invalidTypeIdException(javaType, str, "Configured `PolymorphicTypeValidator` (of type " + com.fasterxml.jackson.databind.util.g.j(polymorphicTypeValidator) + ") denied resolution");
    }

    protected abstract JsonMappingException invalidTypeIdException(JavaType javaType, String str, String str2);

    public abstract boolean isEnabled(MapperFeature mapperFeature);

    protected <T> T j(JavaType javaType, String str, PolymorphicTypeValidator polymorphicTypeValidator) throws JsonMappingException {
        throw invalidTypeIdException(javaType, str, "Configured `PolymorphicTypeValidator` (of type " + com.fasterxml.jackson.databind.util.g.j(polymorphicTypeValidator) + ") denied resolution");
    }

    protected final String k(String str) {
        if (str == null) {
            return "";
        }
        if (str.length() <= 500) {
            return str;
        }
        return str.substring(0, 500) + "]...[" + str.substring(str.length() - 500);
    }

    public ObjectIdGenerator<?> objectIdGeneratorInstance(com.fasterxml.jackson.databind.introspect.a aVar, p pVar) throws JsonMappingException {
        Class<? extends ObjectIdGenerator<?>> c10 = pVar.c();
        MapperConfig<?> config = getConfig();
        com.fasterxml.jackson.databind.cfg.c handlerInstantiator = config.getHandlerInstantiator();
        ObjectIdGenerator<?> f10 = handlerInstantiator == null ? null : handlerInstantiator.f(config, aVar, c10);
        if (f10 == null) {
            f10 = (ObjectIdGenerator) com.fasterxml.jackson.databind.util.g.n(c10, config.canOverrideAccessModifiers());
        }
        return f10.forScope(pVar.f());
    }

    public c0 objectIdResolverInstance(com.fasterxml.jackson.databind.introspect.a aVar, p pVar) {
        Class<? extends c0> e4 = pVar.e();
        MapperConfig<?> config = getConfig();
        com.fasterxml.jackson.databind.cfg.c handlerInstantiator = config.getHandlerInstantiator();
        c0 g4 = handlerInstantiator == null ? null : handlerInstantiator.g(config, aVar, e4);
        return g4 == null ? (c0) com.fasterxml.jackson.databind.util.g.n(e4, config.canOverrideAccessModifiers()) : g4;
    }

    public abstract <T> T reportBadDefinition(JavaType javaType, String str) throws JsonMappingException;

    public <T> T reportBadDefinition(Class<?> cls, String str) throws JsonMappingException {
        return (T) reportBadDefinition(constructType(cls), str);
    }

    public JavaType resolveAndValidateSubType(JavaType javaType, String str, PolymorphicTypeValidator polymorphicTypeValidator) throws JsonMappingException {
        int indexOf = str.indexOf(60);
        if (indexOf > 0) {
            return e(javaType, str, polymorphicTypeValidator, indexOf);
        }
        MapperConfig<?> config = getConfig();
        PolymorphicTypeValidator.Validity validateSubClassName = polymorphicTypeValidator.validateSubClassName(config, javaType, str);
        if (validateSubClassName == PolymorphicTypeValidator.Validity.DENIED) {
            return (JavaType) j(javaType, str, polymorphicTypeValidator);
        }
        try {
            Class<?> findClass = getTypeFactory().findClass(str);
            if (!javaType.isTypeOrSuperTypeOf(findClass)) {
                return (JavaType) h(javaType, str);
            }
            JavaType constructSpecializedType = config.getTypeFactory().constructSpecializedType(javaType, findClass);
            return (validateSubClassName != PolymorphicTypeValidator.Validity.INDETERMINATE || polymorphicTypeValidator.validateSubType(config, javaType, constructSpecializedType) == PolymorphicTypeValidator.Validity.ALLOWED) ? constructSpecializedType : (JavaType) i(javaType, str, polymorphicTypeValidator);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Exception e4) {
            throw invalidTypeIdException(javaType, str, String.format("problem: (%s) %s", e4.getClass().getName(), com.fasterxml.jackson.databind.util.g.q(e4)));
        }
    }

    public JavaType resolveSubType(JavaType javaType, String str) throws JsonMappingException {
        if (str.indexOf(60) > 0) {
            JavaType constructFromCanonical = getTypeFactory().constructFromCanonical(str);
            if (constructFromCanonical.isTypeOrSubTypeOf(javaType.getRawClass())) {
                return constructFromCanonical;
            }
        } else {
            try {
                Class<?> findClass = getTypeFactory().findClass(str);
                if (javaType.isTypeOrSuperTypeOf(findClass)) {
                    return getTypeFactory().constructSpecializedType(javaType, findClass);
                }
            } catch (ClassNotFoundException unused) {
                return null;
            } catch (Exception e4) {
                throw invalidTypeIdException(javaType, str, String.format("problem: (%s) %s", e4.getClass().getName(), com.fasterxml.jackson.databind.util.g.q(e4)));
            }
        }
        throw invalidTypeIdException(javaType, str, "Not a subtype");
    }

    public abstract c setAttribute(Object obj, Object obj2);
}
