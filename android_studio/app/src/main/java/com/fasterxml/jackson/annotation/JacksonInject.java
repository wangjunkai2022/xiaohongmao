package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JacksonInject {

    /* loaded from: classes.dex */
    public static class Value implements b<JacksonInject>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f13587c = 1;

        /* renamed from: d  reason: collision with root package name */
        protected static final Value f13588d = new Value(null, null);

        /* renamed from: a  reason: collision with root package name */
        protected final Object f13589a;

        /* renamed from: b  reason: collision with root package name */
        protected final Boolean f13590b;

        protected Value(Object obj, Boolean bool) {
            this.f13589a = obj;
            this.f13590b = bool;
        }

        private static boolean a(Object obj, Boolean bool) {
            return obj == null && bool == null;
        }

        public static Value construct(Object obj, Boolean bool) {
            if ("".equals(obj)) {
                obj = null;
            }
            if (a(obj, bool)) {
                return f13588d;
            }
            return new Value(obj, bool);
        }

        public static Value empty() {
            return f13588d;
        }

        public static Value forId(Object obj) {
            return construct(obj, null);
        }

        public static Value from(JacksonInject jacksonInject) {
            if (jacksonInject == null) {
                return f13588d;
            }
            return construct(jacksonInject.value(), jacksonInject.useInput().asBoolean());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == getClass()) {
                Value value = (Value) obj;
                if (OptBoolean.equals(this.f13590b, value.f13590b)) {
                    Object obj2 = this.f13589a;
                    if (obj2 == null) {
                        return value.f13589a == null;
                    }
                    return obj2.equals(value.f13589a);
                }
            }
            return false;
        }

        public Object getId() {
            return this.f13589a;
        }

        public Boolean getUseInput() {
            return this.f13590b;
        }

        public boolean hasId() {
            return this.f13589a != null;
        }

        public int hashCode() {
            Object obj = this.f13589a;
            int hashCode = obj != null ? 1 + obj.hashCode() : 1;
            Boolean bool = this.f13590b;
            return bool != null ? hashCode + bool.hashCode() : hashCode;
        }

        public String toString() {
            return String.format("JacksonInject.Value(id=%s,useInput=%s)", this.f13589a, this.f13590b);
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JacksonInject> valueFor() {
            return JacksonInject.class;
        }

        public boolean willUseInput(boolean z9) {
            Boolean bool = this.f13590b;
            return bool == null ? z9 : bool.booleanValue();
        }

        public Value withId(Object obj) {
            if (obj == null) {
                if (this.f13589a == null) {
                    return this;
                }
            } else if (obj.equals(this.f13589a)) {
                return this;
            }
            return new Value(obj, this.f13590b);
        }

        public Value withUseInput(Boolean bool) {
            if (bool == null) {
                if (this.f13590b == null) {
                    return this;
                }
            } else if (bool.equals(this.f13590b)) {
                return this;
            }
            return new Value(this.f13589a, bool);
        }
    }

    OptBoolean useInput() default OptBoolean.DEFAULT;

    String value() default "";
}
