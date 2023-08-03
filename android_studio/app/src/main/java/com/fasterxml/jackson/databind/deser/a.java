package com.fasterxml.jackson.databind.deser;

import c2.e;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BeanDeserializerBuilder.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected final DeserializationConfig f14661a;

    /* renamed from: b  reason: collision with root package name */
    protected final DeserializationContext f14662b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.b f14663c;

    /* renamed from: d  reason: collision with root package name */
    protected final Map<String, SettableBeanProperty> f14664d;

    /* renamed from: e  reason: collision with root package name */
    protected List<ValueInjector> f14665e;

    /* renamed from: f  reason: collision with root package name */
    protected HashMap<String, SettableBeanProperty> f14666f;

    /* renamed from: g  reason: collision with root package name */
    protected HashSet<String> f14667g;

    /* renamed from: h  reason: collision with root package name */
    protected HashSet<String> f14668h;

    /* renamed from: i  reason: collision with root package name */
    protected ValueInstantiator f14669i;

    /* renamed from: j  reason: collision with root package name */
    protected ObjectIdReader f14670j;

    /* renamed from: k  reason: collision with root package name */
    protected SettableAnyProperty f14671k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f14672l;

    /* renamed from: m  reason: collision with root package name */
    protected AnnotatedMethod f14673m;

    /* renamed from: n  reason: collision with root package name */
    protected e.a f14674n;

    public a(com.fasterxml.jackson.databind.b bVar, DeserializationContext deserializationContext) {
        this.f14664d = new LinkedHashMap();
        this.f14663c = bVar;
        this.f14662b = deserializationContext;
        this.f14661a = deserializationContext.getConfig();
    }

    private static HashMap<String, SettableBeanProperty> b(HashMap<String, SettableBeanProperty> hashMap) {
        if (hashMap == null) {
            return null;
        }
        return new HashMap<>(hashMap);
    }

    private static <T> List<T> c(List<T> list) {
        if (list == null) {
            return null;
        }
        return new ArrayList(list);
    }

    public boolean A(PropertyName propertyName) {
        return r(propertyName) != null;
    }

    public SettableBeanProperty B(PropertyName propertyName) {
        return this.f14664d.remove(propertyName.getSimpleName());
    }

    public void C(SettableAnyProperty settableAnyProperty) {
        if (this.f14671k != null && settableAnyProperty != null) {
            throw new IllegalStateException("_anySetter already set to non-null");
        }
        this.f14671k = settableAnyProperty;
    }

    public void D(boolean z9) {
        this.f14672l = z9;
    }

    public void E(ObjectIdReader objectIdReader) {
        this.f14670j = objectIdReader;
    }

    public void F(AnnotatedMethod annotatedMethod, e.a aVar) {
        this.f14673m = annotatedMethod;
        this.f14674n = aVar;
    }

    public void G(ValueInstantiator valueInstantiator) {
        this.f14669i = valueInstantiator;
    }

    protected Map<String, List<PropertyName>> a(Collection<SettableBeanProperty> collection) {
        AnnotationIntrospector annotationIntrospector = this.f14661a.getAnnotationIntrospector();
        HashMap hashMap = null;
        if (annotationIntrospector != null) {
            for (SettableBeanProperty settableBeanProperty : collection) {
                List<PropertyName> findPropertyAliases = annotationIntrospector.findPropertyAliases(settableBeanProperty.getMember());
                if (findPropertyAliases != null && !findPropertyAliases.isEmpty()) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    hashMap.put(settableBeanProperty.getName(), findPropertyAliases);
                }
            }
        }
        return hashMap == null ? Collections.emptyMap() : hashMap;
    }

    protected boolean d() {
        Boolean feature = this.f14663c.l(null).getFeature(JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        if (feature == null) {
            return this.f14661a.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        }
        return feature.booleanValue();
    }

    protected void e(Collection<SettableBeanProperty> collection) throws JsonMappingException {
        if (this.f14661a.canOverrideAccessModifiers()) {
            for (SettableBeanProperty settableBeanProperty : collection) {
                try {
                    settableBeanProperty.fixAccess(this.f14661a);
                } catch (IllegalArgumentException e4) {
                    f(e4);
                }
            }
        }
        SettableAnyProperty settableAnyProperty = this.f14671k;
        if (settableAnyProperty != null) {
            try {
                settableAnyProperty.fixAccess(this.f14661a);
            } catch (IllegalArgumentException e10) {
                f(e10);
            }
        }
        AnnotatedMethod annotatedMethod = this.f14673m;
        if (annotatedMethod != null) {
            try {
                annotatedMethod.fixAccess(this.f14661a.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            } catch (IllegalArgumentException e11) {
                f(e11);
            }
        }
    }

    protected void f(IllegalArgumentException illegalArgumentException) throws JsonMappingException {
        try {
            this.f14662b.reportBadTypeDefinition(this.f14663c, illegalArgumentException.getMessage(), new Object[0]);
        } catch (DatabindException e4) {
            if (e4.getCause() == null) {
                e4.initCause(illegalArgumentException);
            }
            throw e4;
        }
    }

    public void g(String str, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        if (this.f14666f == null) {
            this.f14666f = new HashMap<>(4);
        }
        if (this.f14661a.canOverrideAccessModifiers()) {
            try {
                settableBeanProperty.fixAccess(this.f14661a);
            } catch (IllegalArgumentException e4) {
                f(e4);
            }
        }
        this.f14666f.put(str, settableBeanProperty);
    }

    public void h(SettableBeanProperty settableBeanProperty) {
        m(settableBeanProperty);
    }

    public void i(String str) {
        if (this.f14667g == null) {
            this.f14667g = new HashSet<>();
        }
        this.f14667g.add(str);
    }

    public void j(String str) {
        if (this.f14668h == null) {
            this.f14668h = new HashSet<>();
        }
        this.f14668h.add(str);
    }

    public void k(PropertyName propertyName, JavaType javaType, com.fasterxml.jackson.databind.util.a aVar, AnnotatedMember annotatedMember, Object obj) throws JsonMappingException {
        if (this.f14665e == null) {
            this.f14665e = new ArrayList();
        }
        if (this.f14661a.canOverrideAccessModifiers()) {
            try {
                annotatedMember.fixAccess(this.f14661a.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            } catch (IllegalArgumentException e4) {
                f(e4);
            }
        }
        this.f14665e.add(new ValueInjector(propertyName, javaType, annotatedMember, obj));
    }

    public void l(SettableBeanProperty settableBeanProperty, boolean z9) {
        this.f14664d.put(settableBeanProperty.getName(), settableBeanProperty);
    }

    public void m(SettableBeanProperty settableBeanProperty) {
        SettableBeanProperty put = this.f14664d.put(settableBeanProperty.getName(), settableBeanProperty);
        if (put == null || put == settableBeanProperty) {
            return;
        }
        throw new IllegalArgumentException("Duplicate property '" + settableBeanProperty.getName() + "' for " + this.f14663c.H());
    }

    public com.fasterxml.jackson.databind.d<?> n() throws JsonMappingException {
        boolean z9;
        Collection<SettableBeanProperty> values = this.f14664d.values();
        e(values);
        BeanPropertyMap construct = BeanPropertyMap.construct(this.f14661a, values, a(values), d());
        construct.assignIndexes();
        boolean z10 = !this.f14661a.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        if (!z10) {
            for (SettableBeanProperty settableBeanProperty : values) {
                if (settableBeanProperty.hasViews()) {
                    z9 = true;
                    break;
                }
            }
        }
        z9 = z10;
        if (this.f14670j != null) {
            construct = construct.withProperty(new ObjectIdValueProperty(this.f14670j, PropertyMetadata.STD_REQUIRED));
        }
        return new BeanDeserializer(this, this.f14663c, construct, this.f14666f, this.f14667g, this.f14672l, this.f14668h, z9);
    }

    public AbstractDeserializer o() {
        return new AbstractDeserializer(this, this.f14663c, this.f14666f, this.f14664d);
    }

    public com.fasterxml.jackson.databind.d<?> p(JavaType javaType, String str) throws JsonMappingException {
        AnnotatedMethod annotatedMethod = this.f14673m;
        boolean z9 = true;
        if (annotatedMethod == null) {
            if (!str.isEmpty()) {
                this.f14662b.reportBadDefinition(this.f14663c.H(), String.format("Builder class %s does not have build method (name: '%s')", com.fasterxml.jackson.databind.util.g.P(this.f14663c.H()), str));
            }
        } else {
            Class<?> rawReturnType = annotatedMethod.getRawReturnType();
            Class<?> rawClass = javaType.getRawClass();
            if (rawReturnType != rawClass && !rawReturnType.isAssignableFrom(rawClass) && !rawClass.isAssignableFrom(rawReturnType)) {
                this.f14662b.reportBadDefinition(this.f14663c.H(), String.format("Build method `%s` has wrong return type (%s), not compatible with POJO type (%s)", this.f14673m.getFullName(), com.fasterxml.jackson.databind.util.g.D(rawReturnType), com.fasterxml.jackson.databind.util.g.P(javaType)));
            }
        }
        Collection<SettableBeanProperty> values = this.f14664d.values();
        e(values);
        BeanPropertyMap construct = BeanPropertyMap.construct(this.f14661a, values, a(values), d());
        construct.assignIndexes();
        boolean z10 = !this.f14661a.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        if (!z10) {
            for (SettableBeanProperty settableBeanProperty : values) {
                if (settableBeanProperty.hasViews()) {
                    break;
                }
            }
        }
        z9 = z10;
        if (this.f14670j != null) {
            construct = construct.withProperty(new ObjectIdValueProperty(this.f14670j, PropertyMetadata.STD_REQUIRED));
        }
        return q(javaType, construct, z9);
    }

    protected com.fasterxml.jackson.databind.d<?> q(JavaType javaType, BeanPropertyMap beanPropertyMap, boolean z9) {
        return new BuilderBasedDeserializer(this, this.f14663c, javaType, beanPropertyMap, this.f14666f, this.f14667g, this.f14672l, this.f14668h, z9);
    }

    public SettableBeanProperty r(PropertyName propertyName) {
        return this.f14664d.get(propertyName.getSimpleName());
    }

    public SettableAnyProperty s() {
        return this.f14671k;
    }

    public AnnotatedMethod t() {
        return this.f14673m;
    }

    public e.a u() {
        return this.f14674n;
    }

    public List<ValueInjector> v() {
        return this.f14665e;
    }

    public ObjectIdReader w() {
        return this.f14670j;
    }

    public Iterator<SettableBeanProperty> x() {
        return this.f14664d.values().iterator();
    }

    public ValueInstantiator y() {
        return this.f14669i;
    }

    public boolean z(String str) {
        return IgnorePropertiesUtil.c(str, this.f14667g, this.f14668h);
    }

    protected a(a aVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f14664d = linkedHashMap;
        this.f14663c = aVar.f14663c;
        this.f14662b = aVar.f14662b;
        this.f14661a = aVar.f14661a;
        linkedHashMap.putAll(aVar.f14664d);
        this.f14665e = c(aVar.f14665e);
        this.f14666f = b(aVar.f14666f);
        this.f14667g = aVar.f14667g;
        this.f14668h = aVar.f14668h;
        this.f14669i = aVar.f14669i;
        this.f14670j = aVar.f14670j;
        this.f14671k = aVar.f14671k;
        this.f14672l = aVar.f14672l;
        this.f14673m = aVar.f14673m;
        this.f14674n = aVar.f14674n;
    }
}
