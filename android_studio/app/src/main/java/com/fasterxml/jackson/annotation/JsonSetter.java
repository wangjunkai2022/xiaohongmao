package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonSetter {

    /* loaded from: classes.dex */
    public static class Value implements b<JsonSetter>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f13640c = 1;

        /* renamed from: d  reason: collision with root package name */
        protected static final Value f13641d;

        /* renamed from: a  reason: collision with root package name */
        private final Nulls f13642a;

        /* renamed from: b  reason: collision with root package name */
        private final Nulls f13643b;

        static {
            Nulls nulls = Nulls.DEFAULT;
            f13641d = new Value(nulls, nulls);
        }

        protected Value(Nulls nulls, Nulls nulls2) {
            this.f13642a = nulls;
            this.f13643b = nulls2;
        }

        private static boolean a(Nulls nulls, Nulls nulls2) {
            Nulls nulls3 = Nulls.DEFAULT;
            return nulls == nulls3 && nulls2 == nulls3;
        }

        public static Value construct(Nulls nulls, Nulls nulls2) {
            if (nulls == null) {
                nulls = Nulls.DEFAULT;
            }
            if (nulls2 == null) {
                nulls2 = Nulls.DEFAULT;
            }
            if (a(nulls, nulls2)) {
                return f13641d;
            }
            return new Value(nulls, nulls2);
        }

        public static Value empty() {
            return f13641d;
        }

        public static Value forContentNulls(Nulls nulls) {
            return construct(Nulls.DEFAULT, nulls);
        }

        public static Value forValueNulls(Nulls nulls) {
            return construct(nulls, Nulls.DEFAULT);
        }

        public static Value from(JsonSetter jsonSetter) {
            if (jsonSetter == null) {
                return f13641d;
            }
            return construct(jsonSetter.nulls(), jsonSetter.contentNulls());
        }

        public static Value merge(Value value, Value value2) {
            return value == null ? value2 : value.withOverrides(value2);
        }

        protected Object b() {
            return a(this.f13642a, this.f13643b) ? f13641d : this;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == getClass()) {
                Value value = (Value) obj;
                return value.f13642a == this.f13642a && value.f13643b == this.f13643b;
            }
            return false;
        }

        public Nulls getContentNulls() {
            return this.f13643b;
        }

        public Nulls getValueNulls() {
            return this.f13642a;
        }

        public int hashCode() {
            return this.f13642a.ordinal() + (this.f13643b.ordinal() << 2);
        }

        public Nulls nonDefaultContentNulls() {
            Nulls nulls = this.f13643b;
            if (nulls == Nulls.DEFAULT) {
                return null;
            }
            return nulls;
        }

        public Nulls nonDefaultValueNulls() {
            Nulls nulls = this.f13642a;
            if (nulls == Nulls.DEFAULT) {
                return null;
            }
            return nulls;
        }

        public String toString() {
            return String.format("JsonSetter.Value(valueNulls=%s,contentNulls=%s)", this.f13642a, this.f13643b);
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JsonSetter> valueFor() {
            return JsonSetter.class;
        }

        public Value withContentNulls(Nulls nulls) {
            if (nulls == null) {
                nulls = Nulls.DEFAULT;
            }
            return nulls == this.f13643b ? this : construct(this.f13642a, nulls);
        }

        public Value withOverrides(Value value) {
            if (value == null || value == f13641d) {
                return this;
            }
            Nulls nulls = value.f13642a;
            Nulls nulls2 = value.f13643b;
            Nulls nulls3 = Nulls.DEFAULT;
            if (nulls == nulls3) {
                nulls = this.f13642a;
            }
            if (nulls2 == nulls3) {
                nulls2 = this.f13643b;
            }
            return (nulls == this.f13642a && nulls2 == this.f13643b) ? this : construct(nulls, nulls2);
        }

        public Value withValueNulls(Nulls nulls) {
            if (nulls == null) {
                nulls = Nulls.DEFAULT;
            }
            return nulls == this.f13642a ? this : construct(nulls, this.f13643b);
        }

        public static Value forValueNulls(Nulls nulls, Nulls nulls2) {
            return construct(nulls, nulls2);
        }

        public Value withValueNulls(Nulls nulls, Nulls nulls2) {
            if (nulls == null) {
                nulls = Nulls.DEFAULT;
            }
            if (nulls2 == null) {
                nulls2 = Nulls.DEFAULT;
            }
            return (nulls == this.f13642a && nulls2 == this.f13643b) ? this : construct(nulls, nulls2);
        }
    }

    Nulls contentNulls() default Nulls.DEFAULT;

    Nulls nulls() default Nulls.DEFAULT;

    String value() default "";
}
