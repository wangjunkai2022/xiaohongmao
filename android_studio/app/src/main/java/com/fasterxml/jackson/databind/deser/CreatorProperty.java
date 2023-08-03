package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.io.IOException;
import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public class CreatorProperty extends SettableBeanProperty {

    /* renamed from: u  reason: collision with root package name */
    private static final long f14617u = 1;

    /* renamed from: p  reason: collision with root package name */
    protected final AnnotatedParameter f14618p;

    /* renamed from: q  reason: collision with root package name */
    protected final JacksonInject.Value f14619q;

    /* renamed from: r  reason: collision with root package name */
    protected SettableBeanProperty f14620r;

    /* renamed from: s  reason: collision with root package name */
    protected final int f14621s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f14622t;

    protected CreatorProperty(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, AnnotatedParameter annotatedParameter, int i4, JacksonInject.Value value, PropertyMetadata propertyMetadata) {
        super(propertyName, javaType, propertyName2, bVar, aVar, propertyMetadata);
        this.f14618p = annotatedParameter;
        this.f14621s = i4;
        this.f14619q = value;
        this.f14620r = null;
    }

    public static CreatorProperty construct(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, AnnotatedParameter annotatedParameter, int i4, JacksonInject.Value value, PropertyMetadata propertyMetadata) {
        return new CreatorProperty(propertyName, javaType, propertyName2, bVar, aVar, annotatedParameter, i4, value, propertyMetadata);
    }

    private void h(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str = "No fallback setter/field defined for creator property " + com.fasterxml.jackson.databind.util.g.h0(getName());
        if (deserializationContext != null) {
            deserializationContext.reportBadDefinition(getType(), str);
            return;
        }
        throw InvalidDefinitionException.from(jsonParser, str, getType());
    }

    private final void i() throws IOException {
        if (this.f14620r == null) {
            h(null, null);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        i();
        this.f14620r.set(obj, deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        i();
        return this.f14620r.setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    @Deprecated
    public Object findInjectableValue(DeserializationContext deserializationContext, Object obj) throws JsonMappingException {
        if (this.f14619q == null) {
            deserializationContext.reportBadDefinition(com.fasterxml.jackson.databind.util.g.k(obj), String.format("Property %s (type %s) has no injectable value id configured", com.fasterxml.jackson.databind.util.g.h0(getName()), com.fasterxml.jackson.databind.util.g.j(this)));
        }
        return deserializationContext.findInjectableValue(this.f14619q.getId(), this, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        SettableBeanProperty settableBeanProperty = this.f14620r;
        if (settableBeanProperty != null) {
            settableBeanProperty.fixAccess(deserializationConfig);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        AnnotatedParameter annotatedParameter = this.f14618p;
        if (annotatedParameter == null) {
            return null;
        }
        return (A) annotatedParameter.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public int getCreatorIndex() {
        return this.f14621s;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object getInjectableValueId() {
        JacksonInject.Value value = this.f14619q;
        if (value == null) {
            return null;
        }
        return value.getId();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f14618p;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase, com.fasterxml.jackson.databind.BeanProperty
    public PropertyMetadata getMetadata() {
        PropertyMetadata metadata = super.getMetadata();
        SettableBeanProperty settableBeanProperty = this.f14620r;
        return settableBeanProperty != null ? metadata.withMergeInfo(settableBeanProperty.getMetadata().getMergeInfo()) : metadata;
    }

    @Deprecated
    public void inject(DeserializationContext deserializationContext, Object obj) throws IOException {
        set(obj, findInjectableValue(deserializationContext, obj));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public boolean isIgnorable() {
        return this.f14622t;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public boolean isInjectionOnly() {
        JacksonInject.Value value = this.f14619q;
        return (value == null || value.willUseInput(true)) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void markAsIgnorable() {
        this.f14622t = true;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        i();
        this.f14620r.set(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        i();
        return this.f14620r.setAndReturn(obj, obj2);
    }

    public void setFallbackSetter(SettableBeanProperty settableBeanProperty) {
        this.f14620r = settableBeanProperty;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public String toString() {
        return "[creator property, name " + com.fasterxml.jackson.databind.util.g.h0(getName()) + "; inject id '" + getInjectableValueId() + "']";
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withName(PropertyName propertyName) {
        return new CreatorProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withNullProvider(l lVar) {
        return new CreatorProperty(this, this.f14646h, lVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withValueDeserializer(com.fasterxml.jackson.databind.d<?> dVar) {
        com.fasterxml.jackson.databind.d<?> dVar2 = this.f14646h;
        if (dVar2 == dVar) {
            return this;
        }
        l lVar = this.f14648j;
        if (dVar2 == lVar) {
            lVar = dVar;
        }
        return new CreatorProperty(this, dVar, lVar);
    }

    @Deprecated
    public CreatorProperty(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, AnnotatedParameter annotatedParameter, int i4, Object obj, PropertyMetadata propertyMetadata) {
        this(propertyName, javaType, propertyName2, bVar, aVar, annotatedParameter, i4, obj != null ? JacksonInject.Value.construct(obj, null) : null, propertyMetadata);
    }

    protected CreatorProperty(CreatorProperty creatorProperty, PropertyName propertyName) {
        super(creatorProperty, propertyName);
        this.f14618p = creatorProperty.f14618p;
        this.f14619q = creatorProperty.f14619q;
        this.f14620r = creatorProperty.f14620r;
        this.f14621s = creatorProperty.f14621s;
        this.f14622t = creatorProperty.f14622t;
    }

    protected CreatorProperty(CreatorProperty creatorProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(creatorProperty, dVar, lVar);
        this.f14618p = creatorProperty.f14618p;
        this.f14619q = creatorProperty.f14619q;
        this.f14620r = creatorProperty.f14620r;
        this.f14621s = creatorProperty.f14621s;
        this.f14622t = creatorProperty.f14622t;
    }
}
