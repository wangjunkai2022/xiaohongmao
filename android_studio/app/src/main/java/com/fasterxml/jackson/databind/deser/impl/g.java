package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* compiled from: PropertyBasedCreator.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    protected final int f14813a;

    /* renamed from: b  reason: collision with root package name */
    protected final ValueInstantiator f14814b;

    /* renamed from: c  reason: collision with root package name */
    protected final HashMap<String, SettableBeanProperty> f14815c;

    /* renamed from: d  reason: collision with root package name */
    protected final SettableBeanProperty[] f14816d;

    /* compiled from: PropertyBasedCreator.java */
    /* loaded from: classes.dex */
    static class a extends HashMap<String, SettableBeanProperty> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f14817b = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final Locale f14818a;

        @Deprecated
        public a() {
            this(Locale.getDefault());
        }

        public static a a(Locale locale) {
            return new a(locale);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        /* renamed from: b */
        public SettableBeanProperty get(Object obj) {
            return (SettableBeanProperty) super.get(((String) obj).toLowerCase(this.f14818a));
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public SettableBeanProperty put(String str, SettableBeanProperty settableBeanProperty) {
            return (SettableBeanProperty) super.put(str.toLowerCase(this.f14818a), settableBeanProperty);
        }

        public a(Locale locale) {
            this.f14818a = locale;
        }
    }

    protected g(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, boolean z9, boolean z10) {
        this.f14814b = valueInstantiator;
        if (z9) {
            this.f14815c = a.a(deserializationContext.getConfig().getLocale());
        } else {
            this.f14815c = new HashMap<>();
        }
        int length = settableBeanPropertyArr.length;
        this.f14813a = length;
        this.f14816d = new SettableBeanProperty[length];
        if (z10) {
            DeserializationConfig config = deserializationContext.getConfig();
            for (SettableBeanProperty settableBeanProperty : settableBeanPropertyArr) {
                if (!settableBeanProperty.isIgnorable()) {
                    List<PropertyName> findAliases = settableBeanProperty.findAliases(config);
                    if (!findAliases.isEmpty()) {
                        for (PropertyName propertyName : findAliases) {
                            this.f14815c.put(propertyName.getSimpleName(), settableBeanProperty);
                        }
                    }
                }
            }
        }
        for (int i4 = 0; i4 < length; i4++) {
            SettableBeanProperty settableBeanProperty2 = settableBeanPropertyArr[i4];
            this.f14816d[i4] = settableBeanProperty2;
            if (!settableBeanProperty2.isIgnorable()) {
                this.f14815c.put(settableBeanProperty2.getName(), settableBeanProperty2);
            }
        }
    }

    @Deprecated
    public static g b(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        return d(deserializationContext, valueInstantiator, settableBeanPropertyArr, deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
    }

    public static g c(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, BeanPropertyMap beanPropertyMap) throws JsonMappingException {
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[length];
        for (int i4 = 0; i4 < length; i4++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i4];
            if (!settableBeanProperty.hasValueDeserializer() && !settableBeanProperty.isInjectionOnly()) {
                settableBeanProperty = settableBeanProperty.withValueDeserializer(deserializationContext.findContextualValueDeserializer(settableBeanProperty.getType(), settableBeanProperty));
            }
            settableBeanPropertyArr2[i4] = settableBeanProperty;
        }
        return new g(deserializationContext, valueInstantiator, settableBeanPropertyArr2, beanPropertyMap.isCaseInsensitive(), true);
    }

    public static g d(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, boolean z9) throws JsonMappingException {
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[length];
        for (int i4 = 0; i4 < length; i4++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i4];
            if (!settableBeanProperty.hasValueDeserializer()) {
                settableBeanProperty = settableBeanProperty.withValueDeserializer(deserializationContext.findContextualValueDeserializer(settableBeanProperty.getType(), settableBeanProperty));
            }
            settableBeanPropertyArr2[i4] = settableBeanProperty;
        }
        return new g(deserializationContext, valueInstantiator, settableBeanPropertyArr2, z9, false);
    }

    public Object a(DeserializationContext deserializationContext, i iVar) throws IOException {
        Object createFromObjectWith = this.f14814b.createFromObjectWith(deserializationContext, this.f14816d, iVar);
        if (createFromObjectWith != null) {
            createFromObjectWith = iVar.i(deserializationContext, createFromObjectWith);
            for (h f10 = iVar.f(); f10 != null; f10 = f10.f14819a) {
                f10.a(createFromObjectWith);
            }
        }
        return createFromObjectWith;
    }

    public SettableBeanProperty e(int i4) {
        for (SettableBeanProperty settableBeanProperty : this.f14815c.values()) {
            if (settableBeanProperty.getPropertyIndex() == i4) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public SettableBeanProperty f(String str) {
        return this.f14815c.get(str);
    }

    public Collection<SettableBeanProperty> g() {
        return this.f14815c.values();
    }

    public i h(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectIdReader objectIdReader) {
        return new i(jsonParser, deserializationContext, this.f14813a, objectIdReader);
    }
}
