package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ContextAttributes {
    public static ContextAttributes getEmpty() {
        return Impl.getEmpty();
    }

    public abstract Object getAttribute(Object obj);

    public abstract ContextAttributes withPerCallAttribute(Object obj, Object obj2);

    public abstract ContextAttributes withSharedAttribute(Object obj, Object obj2);

    public abstract ContextAttributes withSharedAttributes(Map<?, ?> map);

    public abstract ContextAttributes withoutSharedAttribute(Object obj);

    /* loaded from: classes.dex */
    public static class Impl extends ContextAttributes implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14506c = 1;

        /* renamed from: d  reason: collision with root package name */
        protected static final Impl f14507d = new Impl(Collections.emptyMap());

        /* renamed from: e  reason: collision with root package name */
        protected static final Object f14508e = new Object();

        /* renamed from: a  reason: collision with root package name */
        protected final Map<?, ?> f14509a;

        /* renamed from: b  reason: collision with root package name */
        protected transient Map<Object, Object> f14510b;

        protected Impl(Map<?, ?> map) {
            this.f14509a = map;
            this.f14510b = null;
        }

        private Map<Object, Object> a(Map<?, ?> map) {
            return new HashMap(map);
        }

        public static ContextAttributes getEmpty() {
            return f14507d;
        }

        protected ContextAttributes b(Object obj, Object obj2) {
            HashMap hashMap = new HashMap();
            if (obj2 == null) {
                obj2 = f14508e;
            }
            hashMap.put(obj, obj2);
            return new Impl(this.f14509a, hashMap);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public Object getAttribute(Object obj) {
            Object obj2;
            Map<Object, Object> map = this.f14510b;
            if (map != null && (obj2 = map.get(obj)) != null) {
                if (obj2 == f14508e) {
                    return null;
                }
                return obj2;
            }
            return this.f14509a.get(obj);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withPerCallAttribute(Object obj, Object obj2) {
            if (obj2 == null) {
                if (this.f14509a.containsKey(obj)) {
                    obj2 = f14508e;
                } else {
                    Map<Object, Object> map = this.f14510b;
                    if (map != null && map.containsKey(obj)) {
                        this.f14510b.remove(obj);
                    }
                    return this;
                }
            }
            Map<Object, Object> map2 = this.f14510b;
            if (map2 == null) {
                return b(obj, obj2);
            }
            map2.put(obj, obj2);
            return this;
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withSharedAttribute(Object obj, Object obj2) {
            Map<Object, Object> a10;
            if (this == f14507d) {
                a10 = new HashMap<>(8);
            } else {
                a10 = a(this.f14509a);
            }
            a10.put(obj, obj2);
            return new Impl(a10);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withSharedAttributes(Map<?, ?> map) {
            return new Impl(map);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withoutSharedAttribute(Object obj) {
            if (!this.f14509a.isEmpty() && this.f14509a.containsKey(obj)) {
                if (this.f14509a.size() == 1) {
                    return f14507d;
                }
                Map<Object, Object> a10 = a(this.f14509a);
                a10.remove(obj);
                return new Impl(a10);
            }
            return this;
        }

        protected Impl(Map<?, ?> map, Map<Object, Object> map2) {
            this.f14509a = map;
            this.f14510b = map2;
        }
    }
}
