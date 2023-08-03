package com.fasterxml.jackson.annotation;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class ObjectIdGenerator<T> implements Serializable {

    /* loaded from: classes.dex */
    public static final class IdKey implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f13648b = 1;

        /* renamed from: a  reason: collision with root package name */
        private final int f13649a;
        public final Object key;
        public final Class<?> scope;
        public final Class<?> type;

        public IdKey(Class<?> cls, Class<?> cls2, Object obj) {
            if (obj != null) {
                this.type = cls;
                this.scope = cls2;
                this.key = obj;
                int hashCode = obj.hashCode() + cls.getName().hashCode();
                this.f13649a = cls2 != null ? hashCode ^ cls2.getName().hashCode() : hashCode;
                return;
            }
            throw new IllegalArgumentException("Can not construct IdKey for null key");
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == IdKey.class) {
                IdKey idKey = (IdKey) obj;
                return idKey.key.equals(this.key) && idKey.type == this.type && idKey.scope == this.scope;
            }
            return false;
        }

        public int hashCode() {
            return this.f13649a;
        }

        public String toString() {
            Object[] objArr = new Object[3];
            objArr[0] = this.key;
            Class<?> cls = this.type;
            objArr[1] = cls == null ? "NONE" : cls.getName();
            Class<?> cls2 = this.scope;
            objArr[2] = cls2 != null ? cls2.getName() : "NONE";
            return String.format("[ObjectId: key=%s, type=%s, scope=%s]", objArr);
        }
    }

    public abstract boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator);

    public abstract ObjectIdGenerator<T> forScope(Class<?> cls);

    public abstract T generateId(Object obj);

    public abstract Class<?> getScope();

    public boolean isValidReferencePropertyName(String str, Object obj) {
        return false;
    }

    public abstract IdKey key(Object obj);

    public boolean maySerializeAsObject() {
        return false;
    }

    public abstract ObjectIdGenerator<T> newForSerialization(Object obj);
}
