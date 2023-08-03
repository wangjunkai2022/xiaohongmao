package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.JsonLocationInstantiator;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: JDKValueInstantiators.java */
/* loaded from: classes.dex */
public abstract class e {

    /* compiled from: JDKValueInstantiators.java */
    /* loaded from: classes.dex */
    private static class a extends ValueInstantiator.Base implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14789c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final a f14790d = new a();

        public a() {
            super(ArrayList.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDefault() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canInstantiate() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            return new ArrayList();
        }
    }

    /* compiled from: JDKValueInstantiators.java */
    /* loaded from: classes.dex */
    private static class b extends ValueInstantiator.Base implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f14791d = 2;

        /* renamed from: c  reason: collision with root package name */
        protected final Object f14792c;

        public b(Object obj) {
            super(obj.getClass());
            this.f14792c = obj;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDefault() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canInstantiate() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            return this.f14792c;
        }
    }

    /* compiled from: JDKValueInstantiators.java */
    /* loaded from: classes.dex */
    private static class c extends ValueInstantiator.Base implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14793c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final c f14794d = new c();

        public c() {
            super(HashMap.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDefault() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canInstantiate() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            return new HashMap();
        }
    }

    /* compiled from: JDKValueInstantiators.java */
    /* loaded from: classes.dex */
    private static class d extends ValueInstantiator.Base implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14795c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final d f14796d = new d();

        public d() {
            super(LinkedHashMap.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDefault() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canInstantiate() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            return new LinkedHashMap();
        }
    }

    public static ValueInstantiator a(DeserializationConfig deserializationConfig, Class<?> cls) {
        if (cls == JsonLocation.class) {
            return new JsonLocationInstantiator();
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (cls == ArrayList.class) {
                return a.f14790d;
            }
            Set set = Collections.EMPTY_SET;
            if (set.getClass() == cls) {
                return new b(set);
            }
            List list = Collections.EMPTY_LIST;
            if (list.getClass() == cls) {
                return new b(list);
            }
            return null;
        } else if (Map.class.isAssignableFrom(cls)) {
            if (cls == LinkedHashMap.class) {
                return d.f14796d;
            }
            if (cls == HashMap.class) {
                return c.f14794d;
            }
            if (Collections.EMPTY_MAP.getClass() == cls) {
                return new b(Collections.EMPTY_MAP);
            }
            return null;
        } else {
            return null;
        }
    }
}
