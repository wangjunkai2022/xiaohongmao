package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.g;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class ContainerDeserializerBase<T> extends StdDeserializer<T> implements ValueInstantiator.a {

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f14860f;

    /* renamed from: g  reason: collision with root package name */
    protected final l f14861g;

    /* renamed from: h  reason: collision with root package name */
    protected final boolean f14862h;

    /* renamed from: i  reason: collision with root package name */
    protected final Boolean f14863i;

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerDeserializerBase(JavaType javaType, l lVar, Boolean bool) {
        super(javaType);
        this.f14860f = javaType;
        this.f14863i = bool;
        this.f14861g = lVar;
        this.f14862h = NullsConstantProvider.isSkipper(lVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <BOGUS> BOGUS C0(DeserializationContext deserializationContext, Throwable th, Object obj, String str) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        g.t0(th);
        if (deserializationContext != null && !deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) {
            g.v0(th);
        }
        if ((th instanceof IOException) && !(th instanceof JsonMappingException)) {
            throw ((IOException) th);
        }
        throw JsonMappingException.wrapWithPath(th, obj, (String) g.k0(str, "N/A"));
    }

    @Deprecated
    protected <BOGUS> BOGUS D0(Throwable th, Object obj, String str) throws IOException {
        return (BOGUS) C0(null, th, obj, str);
    }

    @Override // com.fasterxml.jackson.databind.d
    public SettableBeanProperty findBackReference(String str) {
        com.fasterxml.jackson.databind.d<Object> contentDeserializer = getContentDeserializer();
        if (contentDeserializer != null) {
            return contentDeserializer.findBackReference(str);
        }
        throw new IllegalArgumentException(String.format("Cannot handle managed/back reference '%s': type: container deserializer of type %s returned null for 'getContentDeserializer()'", str, getClass().getName()));
    }

    public abstract com.fasterxml.jackson.databind.d<Object> getContentDeserializer();

    public JavaType getContentType() {
        JavaType javaType = this.f14860f;
        if (javaType == null) {
            return TypeFactory.unknownType();
        }
        return javaType.getContentType();
    }

    @Override // com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        ValueInstantiator valueInstantiator = getValueInstantiator();
        if (valueInstantiator == null || !valueInstantiator.canCreateUsingDefault()) {
            JavaType valueType = getValueType();
            deserializationContext.reportBadDefinition(valueType, String.format("Cannot create empty instance of %s, no default Creator", valueType));
        }
        try {
            return valueInstantiator.createUsingDefault(deserializationContext);
        } catch (IOException e4) {
            return g.s0(deserializationContext, e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this.f14860f;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerDeserializerBase(JavaType javaType) {
        this(javaType, (l) null, (Boolean) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerDeserializerBase(ContainerDeserializerBase<?> containerDeserializerBase) {
        this(containerDeserializerBase, containerDeserializerBase.f14861g, containerDeserializerBase.f14863i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerDeserializerBase(ContainerDeserializerBase<?> containerDeserializerBase, l lVar, Boolean bool) {
        super(containerDeserializerBase.f14860f);
        this.f14860f = containerDeserializerBase.f14860f;
        this.f14861g = lVar;
        this.f14863i = bool;
        this.f14862h = NullsConstantProvider.isSkipper(lVar);
    }
}
