package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonInclude {

    /* loaded from: classes.dex */
    public enum Include {
        ALWAYS,
        NON_NULL,
        NON_ABSENT,
        NON_EMPTY,
        NON_DEFAULT,
        CUSTOM,
        USE_DEFAULTS
    }

    Include content() default Include.ALWAYS;

    Class<?> contentFilter() default Void.class;

    Include value() default Include.ALWAYS;

    Class<?> valueFilter() default Void.class;

    /* loaded from: classes.dex */
    public static class Value implements b<JsonInclude>, Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f13628e = 1;

        /* renamed from: f  reason: collision with root package name */
        protected static final Value f13629f;

        /* renamed from: a  reason: collision with root package name */
        protected final Include f13630a;

        /* renamed from: b  reason: collision with root package name */
        protected final Include f13631b;

        /* renamed from: c  reason: collision with root package name */
        protected final Class<?> f13632c;

        /* renamed from: d  reason: collision with root package name */
        protected final Class<?> f13633d;

        static {
            Include include = Include.USE_DEFAULTS;
            f13629f = new Value(include, include, null, null);
        }

        public Value(JsonInclude jsonInclude) {
            this(jsonInclude.value(), jsonInclude.content(), jsonInclude.valueFilter(), jsonInclude.contentFilter());
        }

        public static Value construct(Include include, Include include2) {
            Include include3 = Include.USE_DEFAULTS;
            if ((include != include3 && include != null) || (include2 != include3 && include2 != null)) {
                return new Value(include, include2, null, null);
            }
            return f13629f;
        }

        public static Value empty() {
            return f13629f;
        }

        public static Value from(JsonInclude jsonInclude) {
            if (jsonInclude == null) {
                return f13629f;
            }
            Include value = jsonInclude.value();
            Include content = jsonInclude.content();
            Include include = Include.USE_DEFAULTS;
            if (value == include && content == include) {
                return f13629f;
            }
            Class<?> valueFilter = jsonInclude.valueFilter();
            if (valueFilter == Void.class) {
                valueFilter = null;
            }
            Class<?> contentFilter = jsonInclude.contentFilter();
            return new Value(value, content, valueFilter, contentFilter != Void.class ? contentFilter : null);
        }

        public static Value merge(Value value, Value value2) {
            return value == null ? value2 : value.withOverrides(value2);
        }

        public static Value mergeAll(Value... valueArr) {
            Value value = null;
            for (Value value2 : valueArr) {
                if (value2 != null) {
                    if (value != null) {
                        value2 = value.withOverrides(value2);
                    }
                    value = value2;
                }
            }
            return value;
        }

        protected Object a() {
            Include include = this.f13630a;
            Include include2 = Include.USE_DEFAULTS;
            return (include == include2 && this.f13631b == include2 && this.f13632c == null && this.f13633d == null) ? f13629f : this;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == getClass()) {
                Value value = (Value) obj;
                return value.f13630a == this.f13630a && value.f13631b == this.f13631b && value.f13632c == this.f13632c && value.f13633d == this.f13633d;
            }
            return false;
        }

        public Class<?> getContentFilter() {
            return this.f13633d;
        }

        public Include getContentInclusion() {
            return this.f13631b;
        }

        public Class<?> getValueFilter() {
            return this.f13632c;
        }

        public Include getValueInclusion() {
            return this.f13630a;
        }

        public int hashCode() {
            return (this.f13630a.hashCode() << 2) + this.f13631b.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(80);
            sb.append("JsonInclude.Value(value=");
            sb.append(this.f13630a);
            sb.append(",content=");
            sb.append(this.f13631b);
            if (this.f13632c != null) {
                sb.append(",valueFilter=");
                sb.append(this.f13632c.getName());
                sb.append(".class");
            }
            if (this.f13633d != null) {
                sb.append(",contentFilter=");
                sb.append(this.f13633d.getName());
                sb.append(".class");
            }
            sb.append(')');
            return sb.toString();
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JsonInclude> valueFor() {
            return JsonInclude.class;
        }

        public Value withContentFilter(Class<?> cls) {
            Include include;
            if (cls != null && cls != Void.class) {
                include = Include.CUSTOM;
            } else {
                include = Include.USE_DEFAULTS;
                cls = null;
            }
            return construct(this.f13630a, include, this.f13632c, cls);
        }

        public Value withContentInclusion(Include include) {
            return include == this.f13631b ? this : new Value(this.f13630a, include, this.f13632c, this.f13633d);
        }

        public Value withOverrides(Value value) {
            if (value != null && value != f13629f) {
                Include include = value.f13630a;
                Include include2 = value.f13631b;
                Class<?> cls = value.f13632c;
                Class<?> cls2 = value.f13633d;
                Include include3 = this.f13630a;
                boolean z9 = true;
                boolean z10 = (include == include3 || include == Include.USE_DEFAULTS) ? false : true;
                Include include4 = this.f13631b;
                boolean z11 = (include2 == include4 || include2 == Include.USE_DEFAULTS) ? false : true;
                Class<?> cls3 = this.f13632c;
                if (cls == cls3 && cls2 == cls3) {
                    z9 = false;
                }
                if (z10) {
                    if (z11) {
                        return new Value(include, include2, cls, cls2);
                    }
                    return new Value(include, include4, cls, cls2);
                } else if (z11) {
                    return new Value(include3, include2, cls, cls2);
                } else {
                    if (z9) {
                        return new Value(include3, include4, cls, cls2);
                    }
                }
            }
            return this;
        }

        public Value withValueFilter(Class<?> cls) {
            Include include;
            if (cls != null && cls != Void.class) {
                include = Include.CUSTOM;
            } else {
                include = Include.USE_DEFAULTS;
                cls = null;
            }
            return construct(include, this.f13631b, cls, this.f13633d);
        }

        public Value withValueInclusion(Include include) {
            return include == this.f13630a ? this : new Value(include, this.f13631b, this.f13632c, this.f13633d);
        }

        protected Value(Include include, Include include2, Class<?> cls, Class<?> cls2) {
            this.f13630a = include == null ? Include.USE_DEFAULTS : include;
            this.f13631b = include2 == null ? Include.USE_DEFAULTS : include2;
            this.f13632c = cls == Void.class ? null : cls;
            this.f13633d = cls2 == Void.class ? null : cls2;
        }

        public static Value construct(Include include, Include include2, Class<?> cls, Class<?> cls2) {
            if (cls == Void.class) {
                cls = null;
            }
            if (cls2 == Void.class) {
                cls2 = null;
            }
            Include include3 = Include.USE_DEFAULTS;
            if ((include == include3 || include == null) && ((include2 == include3 || include2 == null) && cls == null && cls2 == null)) {
                return f13629f;
            }
            return new Value(include, include2, cls, cls2);
        }
    }
}
