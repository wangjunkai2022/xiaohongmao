package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public abstract class ValueInstantiator {

    /* loaded from: classes.dex */
    public static class Delegating extends ValueInstantiator implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f14659b = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final ValueInstantiator f14660a;

        protected Delegating(ValueInstantiator valueInstantiator) {
            this.f14660a = valueInstantiator;
        }

        protected ValueInstantiator b() {
            return this.f14660a;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateFromBoolean() {
            return b().canCreateFromBoolean();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateFromDouble() {
            return b().canCreateFromDouble();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateFromInt() {
            return b().canCreateFromInt();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateFromLong() {
            return b().canCreateFromLong();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateFromObjectWith() {
            return b().canCreateFromObjectWith();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateFromString() {
            return b().canCreateFromString();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingArrayDelegate() {
            return b().canCreateUsingArrayDelegate();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDefault() {
            return b().canCreateUsingDefault();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDelegate() {
            return b().canCreateUsingDelegate();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canInstantiate() {
            return b().canInstantiate();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public ValueInstantiator createContextual(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
            ValueInstantiator createContextual = this.f14660a.createContextual(deserializationContext, bVar);
            return createContextual == this.f14660a ? this : new Delegating(createContextual);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromBigDecimal(DeserializationContext deserializationContext, BigDecimal bigDecimal) throws IOException {
            return b().createFromBigDecimal(deserializationContext, bigDecimal);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromBigInteger(DeserializationContext deserializationContext, BigInteger bigInteger) throws IOException {
            return b().createFromBigInteger(deserializationContext, bigInteger);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromBoolean(DeserializationContext deserializationContext, boolean z9) throws IOException {
            return b().createFromBoolean(deserializationContext, z9);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromDouble(DeserializationContext deserializationContext, double d4) throws IOException {
            return b().createFromDouble(deserializationContext, d4);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromInt(DeserializationContext deserializationContext, int i4) throws IOException {
            return b().createFromInt(deserializationContext, i4);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromLong(DeserializationContext deserializationContext, long j4) throws IOException {
            return b().createFromLong(deserializationContext, j4);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
            return b().createFromObjectWith(deserializationContext, objArr);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
            return b().createFromString(deserializationContext, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingArrayDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
            return b().createUsingArrayDelegate(deserializationContext, obj);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            return b().createUsingDefault(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
            return b().createUsingDelegate(deserializationContext, obj);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public AnnotatedWithParams getArrayDelegateCreator() {
            return b().getArrayDelegateCreator();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public JavaType getArrayDelegateType(DeserializationConfig deserializationConfig) {
            return b().getArrayDelegateType(deserializationConfig);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public AnnotatedWithParams getDefaultCreator() {
            return b().getDefaultCreator();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public AnnotatedWithParams getDelegateCreator() {
            return b().getDelegateCreator();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
            return b().getDelegateType(deserializationConfig);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
            return b().getFromObjectArguments(deserializationConfig);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Class<?> getValueClass() {
            return b().getValueClass();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public String getValueTypeDesc() {
            return b().getValueTypeDesc();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public AnnotatedWithParams getWithArgsCreator() {
            return b().getWithArgsCreator();
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createFromObjectWith(DeserializationContext deserializationContext, SettableBeanProperty[] settableBeanPropertyArr, com.fasterxml.jackson.databind.deser.impl.i iVar) throws IOException {
            return b().createFromObjectWith(deserializationContext, settableBeanPropertyArr, iVar);
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        ValueInstantiator getValueInstantiator();
    }

    @Deprecated
    protected Object a(DeserializationContext deserializationContext, String str) throws IOException {
        if (str.isEmpty() && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
            return null;
        }
        if (canCreateFromBoolean() && deserializationContext.findCoercionAction(LogicalType.Boolean, Boolean.class, CoercionInputShape.String) == CoercionAction.TryConvert) {
            String trim = str.trim();
            if ("true".equals(trim)) {
                return createFromBoolean(deserializationContext, true);
            }
            if ("false".equals(trim)) {
                return createFromBoolean(deserializationContext, false);
            }
        }
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, deserializationContext.getParser(), "no String-argument constructor/factory method to deserialize from String value ('%s')", str);
    }

    public boolean canCreateFromBigDecimal() {
        return false;
    }

    public boolean canCreateFromBigInteger() {
        return false;
    }

    public boolean canCreateFromBoolean() {
        return false;
    }

    public boolean canCreateFromDouble() {
        return false;
    }

    public boolean canCreateFromInt() {
        return false;
    }

    public boolean canCreateFromLong() {
        return false;
    }

    public boolean canCreateFromObjectWith() {
        return false;
    }

    public boolean canCreateFromString() {
        return false;
    }

    public boolean canCreateUsingArrayDelegate() {
        return false;
    }

    public boolean canCreateUsingDefault() {
        return getDefaultCreator() != null;
    }

    public boolean canCreateUsingDelegate() {
        return false;
    }

    public boolean canInstantiate() {
        return canCreateUsingDefault() || canCreateUsingDelegate() || canCreateUsingArrayDelegate() || canCreateFromObjectWith() || canCreateFromString() || canCreateFromInt() || canCreateFromLong() || canCreateFromDouble() || canCreateFromBoolean();
    }

    public ValueInstantiator createContextual(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        return this;
    }

    public Object createFromBigDecimal(DeserializationContext deserializationContext, BigDecimal bigDecimal) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no BigDecimal/double/Double-argument constructor/factory method to deserialize from Number value (%s)", bigDecimal);
    }

    public Object createFromBigInteger(DeserializationContext deserializationContext, BigInteger bigInteger) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no BigInteger-argument constructor/factory method to deserialize from Number value (%s)", bigInteger);
    }

    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z9) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no boolean/Boolean-argument constructor/factory method to deserialize from boolean value (%s)", Boolean.valueOf(z9));
    }

    public Object createFromDouble(DeserializationContext deserializationContext, double d4) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no double/Double-argument constructor/factory method to deserialize from Number value (%s)", Double.valueOf(d4));
    }

    public Object createFromInt(DeserializationContext deserializationContext, int i4) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no int/Int-argument constructor/factory method to deserialize from Number value (%s)", Integer.valueOf(i4));
    }

    public Object createFromLong(DeserializationContext deserializationContext, long j4) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no long/Long-argument constructor/factory method to deserialize from Number value (%s)", Long.valueOf(j4));
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no creator with arguments specified", new Object[0]);
    }

    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, deserializationContext.getParser(), "no String-argument constructor/factory method to deserialize from String value ('%s')", str);
    }

    public Object createUsingArrayDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no array delegate creator specified", new Object[0]);
    }

    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no default no-arguments constructor found", new Object[0]);
    }

    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        return deserializationContext.handleMissingInstantiator(getValueClass(), this, null, "no delegate creator specified", new Object[0]);
    }

    public AnnotatedWithParams getArrayDelegateCreator() {
        return null;
    }

    public JavaType getArrayDelegateType(DeserializationConfig deserializationConfig) {
        return null;
    }

    public AnnotatedWithParams getDefaultCreator() {
        return null;
    }

    public AnnotatedWithParams getDelegateCreator() {
        return null;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return null;
    }

    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return null;
    }

    public Class<?> getValueClass() {
        return Object.class;
    }

    public String getValueTypeDesc() {
        Class<?> valueClass = getValueClass();
        return valueClass == null ? "UNKNOWN" : valueClass.getName();
    }

    public AnnotatedWithParams getWithArgsCreator() {
        return null;
    }

    /* loaded from: classes.dex */
    public static class Base extends ValueInstantiator implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f14657b = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final Class<?> f14658a;

        public Base(Class<?> cls) {
            this.f14658a = cls;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Class<?> getValueClass() {
            return this.f14658a;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public String getValueTypeDesc() {
            return this.f14658a.getName();
        }

        public Base(JavaType javaType) {
            this.f14658a = javaType.getRawClass();
        }
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, SettableBeanProperty[] settableBeanPropertyArr, com.fasterxml.jackson.databind.deser.impl.i iVar) throws IOException {
        return createFromObjectWith(deserializationContext, iVar.h(settableBeanPropertyArr));
    }
}
