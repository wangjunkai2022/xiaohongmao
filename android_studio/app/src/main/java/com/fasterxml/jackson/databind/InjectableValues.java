package com.fasterxml.jackson.databind;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class InjectableValues {

    /* loaded from: classes.dex */
    public static class Std extends InjectableValues implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f14351b = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final Map<String, Object> f14352a;

        public Std() {
            this(new HashMap());
        }

        public Std addValue(String str, Object obj) {
            this.f14352a.put(str, obj);
            return this;
        }

        @Override // com.fasterxml.jackson.databind.InjectableValues
        public Object findInjectableValue(Object obj, DeserializationContext deserializationContext, BeanProperty beanProperty, Object obj2) throws JsonMappingException {
            if (!(obj instanceof String)) {
                deserializationContext.reportBadDefinition(com.fasterxml.jackson.databind.util.g.k(obj), String.format("Unrecognized inject value id type (%s), expecting String", com.fasterxml.jackson.databind.util.g.j(obj)));
            }
            String str = (String) obj;
            Object obj3 = this.f14352a.get(str);
            if (obj3 != null || this.f14352a.containsKey(str)) {
                return obj3;
            }
            throw new IllegalArgumentException("No injectable id with value '" + str + "' found (for property '" + beanProperty.getName() + "')");
        }

        public Std(Map<String, Object> map) {
            this.f14352a = map;
        }

        public Std addValue(Class<?> cls, Object obj) {
            this.f14352a.put(cls.getName(), obj);
            return this;
        }
    }

    public abstract Object findInjectableValue(Object obj, DeserializationContext deserializationContext, BeanProperty beanProperty, Object obj2) throws JsonMappingException;
}
