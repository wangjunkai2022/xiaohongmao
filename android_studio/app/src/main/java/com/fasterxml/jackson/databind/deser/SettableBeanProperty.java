package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.impl.FailingDeserializer;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.util.ViewMatcher;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public abstract class SettableBeanProperty extends ConcreteBeanPropertyBase implements Serializable {

    /* renamed from: o  reason: collision with root package name */
    protected static final com.fasterxml.jackson.databind.d<Object> f14641o = new FailingDeserializer("No _valueDeserializer assigned");

    /* renamed from: d  reason: collision with root package name */
    protected final PropertyName f14642d;

    /* renamed from: e  reason: collision with root package name */
    protected final JavaType f14643e;

    /* renamed from: f  reason: collision with root package name */
    protected final PropertyName f14644f;

    /* renamed from: g  reason: collision with root package name */
    protected final transient com.fasterxml.jackson.databind.util.a f14645g;

    /* renamed from: h  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14646h;

    /* renamed from: i  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14647i;

    /* renamed from: j  reason: collision with root package name */
    protected final l f14648j;

    /* renamed from: k  reason: collision with root package name */
    protected String f14649k;

    /* renamed from: l  reason: collision with root package name */
    protected p f14650l;

    /* renamed from: m  reason: collision with root package name */
    protected ViewMatcher f14651m;

    /* renamed from: n  reason: collision with root package name */
    protected int f14652n;

    /* loaded from: classes.dex */
    public static abstract class Delegating extends SettableBeanProperty {

        /* renamed from: p  reason: collision with root package name */
        protected final SettableBeanProperty f14653p;

        /* JADX INFO: Access modifiers changed from: protected */
        public Delegating(SettableBeanProperty settableBeanProperty) {
            super(settableBeanProperty);
            this.f14653p = settableBeanProperty;
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public void assignIndex(int i4) {
            this.f14653p.assignIndex(i4);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
            this.f14653p.deserializeAndSet(jsonParser, deserializationContext, obj);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
            return this.f14653p.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        protected Class<?> e() {
            return this.f14653p.e();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public void fixAccess(DeserializationConfig deserializationConfig) {
            this.f14653p.fixAccess(deserializationConfig);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getAnnotation(Class<A> cls) {
            return (A) this.f14653p.getAnnotation(cls);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public int getCreatorIndex() {
            return this.f14653p.getCreatorIndex();
        }

        public SettableBeanProperty getDelegate() {
            return this.f14653p;
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public Object getInjectableValueId() {
            return this.f14653p.getInjectableValueId();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public String getManagedReferenceName() {
            return this.f14653p.getManagedReferenceName();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
        public AnnotatedMember getMember() {
            return this.f14653p.getMember();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public p getObjectIdInfo() {
            return this.f14653p.getObjectIdInfo();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public int getPropertyIndex() {
            return this.f14653p.getPropertyIndex();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public com.fasterxml.jackson.databind.d<Object> getValueDeserializer() {
            return this.f14653p.getValueDeserializer();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public com.fasterxml.jackson.databind.jsontype.b getValueTypeDeserializer() {
            return this.f14653p.getValueTypeDeserializer();
        }

        protected SettableBeanProperty h(SettableBeanProperty settableBeanProperty) {
            return settableBeanProperty == this.f14653p ? this : i(settableBeanProperty);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public boolean hasValueDeserializer() {
            return this.f14653p.hasValueDeserializer();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public boolean hasValueTypeDeserializer() {
            return this.f14653p.hasValueTypeDeserializer();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public boolean hasViews() {
            return this.f14653p.hasViews();
        }

        protected abstract SettableBeanProperty i(SettableBeanProperty settableBeanProperty);

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public boolean isInjectionOnly() {
            return this.f14653p.isInjectionOnly();
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public void set(Object obj, Object obj2) throws IOException {
            this.f14653p.set(obj, obj2);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public Object setAndReturn(Object obj, Object obj2) throws IOException {
            return this.f14653p.setAndReturn(obj, obj2);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public boolean visibleInView(Class<?> cls) {
            return this.f14653p.visibleInView(cls);
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public SettableBeanProperty withName(PropertyName propertyName) {
            return h(this.f14653p.withName(propertyName));
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public SettableBeanProperty withNullProvider(l lVar) {
            return h(this.f14653p.withNullProvider(lVar));
        }

        @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
        public SettableBeanProperty withValueDeserializer(com.fasterxml.jackson.databind.d<?> dVar) {
            return h(this.f14653p.withValueDeserializer(dVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar) {
        this(kVar.getFullName(), javaType, kVar.getWrapperName(), bVar, aVar, kVar.getMetadata());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IOException a(JsonParser jsonParser, Exception exc) throws IOException {
        com.fasterxml.jackson.databind.util.g.u0(exc);
        com.fasterxml.jackson.databind.util.g.v0(exc);
        Throwable O = com.fasterxml.jackson.databind.util.g.O(exc);
        throw JsonMappingException.from(jsonParser, com.fasterxml.jackson.databind.util.g.q(O), O);
    }

    public void assignIndex(int i4) {
        if (this.f14652n == -1) {
            this.f14652n = i4;
            return;
        }
        throw new IllegalStateException("Property '" + getName() + "' already had index (" + this.f14652n + "), trying to assign " + i4);
    }

    @Deprecated
    protected IOException b(Exception exc) throws IOException {
        return a(null, exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(JsonParser jsonParser, Exception exc, Object obj) throws IOException {
        if (exc instanceof IllegalArgumentException) {
            String j4 = com.fasterxml.jackson.databind.util.g.j(obj);
            StringBuilder sb = new StringBuilder("Problem deserializing property '");
            sb.append(getName());
            sb.append("' (expected type: ");
            sb.append(getType());
            sb.append("; actual type: ");
            sb.append(j4);
            sb.append(")");
            String q9 = com.fasterxml.jackson.databind.util.g.q(exc);
            if (q9 != null) {
                sb.append(", problem: ");
                sb.append(q9);
            } else {
                sb.append(" (no error message provided)");
            }
            throw JsonMappingException.from(jsonParser, sb.toString(), exc);
        }
        a(jsonParser, exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(Exception exc, Object obj) throws IOException {
        c(null, exc, obj);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public void depositSchemaProperty(com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        if (isRequired()) {
            kVar.r(this);
        } else {
            kVar.m(this);
        }
    }

    public final Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return this.f14648j.getNullValue(deserializationContext);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14647i;
        if (bVar != null) {
            return this.f14646h.deserializeWithType(jsonParser, deserializationContext, bVar);
        }
        Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext);
        return deserialize == null ? this.f14648j.getNullValue(deserializationContext) : deserialize;
    }

    public abstract void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException;

    public abstract Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException;

    public final Object deserializeWith(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return NullsConstantProvider.isSkipper(this.f14648j) ? obj : this.f14648j.getNullValue(deserializationContext);
        }
        if (this.f14647i != null) {
            deserializationContext.reportBadDefinition(getType(), String.format("Cannot merge polymorphic property '%s'", getName()));
        }
        Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext, obj);
        return deserialize == null ? NullsConstantProvider.isSkipper(this.f14648j) ? obj : this.f14648j.getNullValue(deserializationContext) : deserialize;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Class<?> e() {
        return getMember().getDeclaringClass();
    }

    public void fixAccess(DeserializationConfig deserializationConfig) {
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract <A extends Annotation> A getAnnotation(Class<A> cls);

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
        return (A) this.f14645g.get(cls);
    }

    public int getCreatorIndex() {
        throw new IllegalStateException(String.format("Internal error: no creator index for property '%s' (of type %s)", getName(), getClass().getName()));
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getFullName() {
        return this.f14642d;
    }

    public Object getInjectableValueId() {
        return null;
    }

    public String getManagedReferenceName() {
        return this.f14649k;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract AnnotatedMember getMember();

    @Override // com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.n
    public final String getName() {
        return this.f14642d.getSimpleName();
    }

    public l getNullValueProvider() {
        return this.f14648j;
    }

    public p getObjectIdInfo() {
        return this.f14650l;
    }

    public int getPropertyIndex() {
        return this.f14652n;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JavaType getType() {
        return this.f14643e;
    }

    public com.fasterxml.jackson.databind.d<Object> getValueDeserializer() {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14646h;
        if (dVar == f14641o) {
            return null;
        }
        return dVar;
    }

    public com.fasterxml.jackson.databind.jsontype.b getValueTypeDeserializer() {
        return this.f14647i;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getWrapperName() {
        return this.f14644f;
    }

    public boolean hasValueDeserializer() {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14646h;
        return (dVar == null || dVar == f14641o) ? false : true;
    }

    public boolean hasValueTypeDeserializer() {
        return this.f14647i != null;
    }

    public boolean hasViews() {
        return this.f14651m != null;
    }

    public boolean isIgnorable() {
        return false;
    }

    public boolean isInjectionOnly() {
        return false;
    }

    public void markAsIgnorable() {
    }

    public abstract void set(Object obj, Object obj2) throws IOException;

    public abstract Object setAndReturn(Object obj, Object obj2) throws IOException;

    public void setManagedReferenceName(String str) {
        this.f14649k = str;
    }

    public void setObjectIdInfo(p pVar) {
        this.f14650l = pVar;
    }

    public void setViews(Class<?>[] clsArr) {
        if (clsArr == null) {
            this.f14651m = null;
        } else {
            this.f14651m = ViewMatcher.construct(clsArr);
        }
    }

    public String toString() {
        return "[property '" + getName() + "']";
    }

    public boolean visibleInView(Class<?> cls) {
        ViewMatcher viewMatcher = this.f14651m;
        return viewMatcher == null || viewMatcher.isVisibleForView(cls);
    }

    public abstract SettableBeanProperty withName(PropertyName propertyName);

    public abstract SettableBeanProperty withNullProvider(l lVar);

    public SettableBeanProperty withSimpleName(String str) {
        PropertyName propertyName = this.f14642d;
        PropertyName propertyName2 = propertyName == null ? new PropertyName(str) : propertyName.withSimpleName(str);
        return propertyName2 == this.f14642d ? this : withName(propertyName2);
    }

    public abstract SettableBeanProperty withValueDeserializer(com.fasterxml.jackson.databind.d<?> dVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, PropertyMetadata propertyMetadata) {
        super(propertyMetadata);
        this.f14652n = -1;
        if (propertyName == null) {
            this.f14642d = PropertyName.NO_NAME;
        } else {
            this.f14642d = propertyName.internSimpleName();
        }
        this.f14643e = javaType;
        this.f14644f = propertyName2;
        this.f14645g = aVar;
        this.f14651m = null;
        this.f14647i = bVar != null ? bVar.forProperty(this) : bVar;
        com.fasterxml.jackson.databind.d<Object> dVar = f14641o;
        this.f14646h = dVar;
        this.f14648j = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(PropertyName propertyName, JavaType javaType, PropertyMetadata propertyMetadata, com.fasterxml.jackson.databind.d<Object> dVar) {
        super(propertyMetadata);
        this.f14652n = -1;
        if (propertyName == null) {
            this.f14642d = PropertyName.NO_NAME;
        } else {
            this.f14642d = propertyName.internSimpleName();
        }
        this.f14643e = javaType;
        this.f14644f = null;
        this.f14645g = null;
        this.f14651m = null;
        this.f14647i = null;
        this.f14646h = dVar;
        this.f14648j = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(SettableBeanProperty settableBeanProperty) {
        super(settableBeanProperty);
        this.f14652n = -1;
        this.f14642d = settableBeanProperty.f14642d;
        this.f14643e = settableBeanProperty.f14643e;
        this.f14644f = settableBeanProperty.f14644f;
        this.f14645g = settableBeanProperty.f14645g;
        this.f14646h = settableBeanProperty.f14646h;
        this.f14647i = settableBeanProperty.f14647i;
        this.f14649k = settableBeanProperty.f14649k;
        this.f14652n = settableBeanProperty.f14652n;
        this.f14651m = settableBeanProperty.f14651m;
        this.f14648j = settableBeanProperty.f14648j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(SettableBeanProperty settableBeanProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(settableBeanProperty);
        this.f14652n = -1;
        this.f14642d = settableBeanProperty.f14642d;
        this.f14643e = settableBeanProperty.f14643e;
        this.f14644f = settableBeanProperty.f14644f;
        this.f14645g = settableBeanProperty.f14645g;
        this.f14647i = settableBeanProperty.f14647i;
        this.f14649k = settableBeanProperty.f14649k;
        this.f14652n = settableBeanProperty.f14652n;
        if (dVar == null) {
            this.f14646h = f14641o;
        } else {
            this.f14646h = dVar;
        }
        this.f14651m = settableBeanProperty.f14651m;
        this.f14648j = lVar == f14641o ? this.f14646h : lVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(SettableBeanProperty settableBeanProperty, PropertyName propertyName) {
        super(settableBeanProperty);
        this.f14652n = -1;
        this.f14642d = propertyName;
        this.f14643e = settableBeanProperty.f14643e;
        this.f14644f = settableBeanProperty.f14644f;
        this.f14645g = settableBeanProperty.f14645g;
        this.f14646h = settableBeanProperty.f14646h;
        this.f14647i = settableBeanProperty.f14647i;
        this.f14649k = settableBeanProperty.f14649k;
        this.f14652n = settableBeanProperty.f14652n;
        this.f14651m = settableBeanProperty.f14651m;
        this.f14648j = settableBeanProperty.f14648j;
    }
}
