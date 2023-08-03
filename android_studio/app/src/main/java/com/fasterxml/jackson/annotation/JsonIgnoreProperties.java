package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonIgnoreProperties {

    /* loaded from: classes.dex */
    public static class Value implements b<JsonIgnoreProperties>, Serializable {

        /* renamed from: f  reason: collision with root package name */
        private static final long f13620f = 1;

        /* renamed from: g  reason: collision with root package name */
        protected static final Value f13621g = new Value(Collections.emptySet(), false, false, false, true);

        /* renamed from: a  reason: collision with root package name */
        protected final Set<String> f13622a;

        /* renamed from: b  reason: collision with root package name */
        protected final boolean f13623b;

        /* renamed from: c  reason: collision with root package name */
        protected final boolean f13624c;

        /* renamed from: d  reason: collision with root package name */
        protected final boolean f13625d;

        /* renamed from: e  reason: collision with root package name */
        protected final boolean f13626e;

        protected Value(Set<String> set, boolean z9, boolean z10, boolean z11, boolean z12) {
            if (set == null) {
                this.f13622a = Collections.emptySet();
            } else {
                this.f13622a = set;
            }
            this.f13623b = z9;
            this.f13624c = z10;
            this.f13625d = z11;
            this.f13626e = z12;
        }

        private static Set<String> a(String[] strArr) {
            if (strArr != null && strArr.length != 0) {
                HashSet hashSet = new HashSet(strArr.length);
                for (String str : strArr) {
                    hashSet.add(str);
                }
                return hashSet;
            }
            return Collections.emptySet();
        }

        private static boolean b(Set<String> set, boolean z9, boolean z10, boolean z11, boolean z12) {
            Value value = f13621g;
            if (z9 == value.f13623b && z10 == value.f13624c && z11 == value.f13625d && z12 == value.f13626e) {
                return set == null || set.size() == 0;
            }
            return false;
        }

        private static boolean c(Value value, Value value2) {
            return value.f13623b == value2.f13623b && value.f13626e == value2.f13626e && value.f13624c == value2.f13624c && value.f13625d == value2.f13625d && value.f13622a.equals(value2.f13622a);
        }

        public static Value construct(Set<String> set, boolean z9, boolean z10, boolean z11, boolean z12) {
            if (b(set, z9, z10, z11, z12)) {
                return f13621g;
            }
            return new Value(set, z9, z10, z11, z12);
        }

        private static Set<String> d(Set<String> set, Set<String> set2) {
            if (set.isEmpty()) {
                return set2;
            }
            if (set2.isEmpty()) {
                return set;
            }
            HashSet hashSet = new HashSet(set.size() + set2.size());
            hashSet.addAll(set);
            hashSet.addAll(set2);
            return hashSet;
        }

        public static Value empty() {
            return f13621g;
        }

        public static Value forIgnoreUnknown(boolean z9) {
            if (z9) {
                return f13621g.withIgnoreUnknown();
            }
            return f13621g.withoutIgnoreUnknown();
        }

        public static Value forIgnoredProperties(Set<String> set) {
            return f13621g.withIgnored(set);
        }

        public static Value from(JsonIgnoreProperties jsonIgnoreProperties) {
            if (jsonIgnoreProperties == null) {
                return f13621g;
            }
            return construct(a(jsonIgnoreProperties.value()), jsonIgnoreProperties.ignoreUnknown(), jsonIgnoreProperties.allowGetters(), jsonIgnoreProperties.allowSetters(), false);
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

        protected Object e() {
            return b(this.f13622a, this.f13623b, this.f13624c, this.f13625d, this.f13626e) ? f13621g : this;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return obj != null && obj.getClass() == getClass() && c(this, (Value) obj);
        }

        public Set<String> findIgnoredForDeserialization() {
            if (this.f13625d) {
                return Collections.emptySet();
            }
            return this.f13622a;
        }

        public Set<String> findIgnoredForSerialization() {
            if (this.f13624c) {
                return Collections.emptySet();
            }
            return this.f13622a;
        }

        public boolean getAllowGetters() {
            return this.f13624c;
        }

        public boolean getAllowSetters() {
            return this.f13625d;
        }

        public boolean getIgnoreUnknown() {
            return this.f13623b;
        }

        public Set<String> getIgnored() {
            return this.f13622a;
        }

        public boolean getMerge() {
            return this.f13626e;
        }

        public int hashCode() {
            return this.f13622a.size() + (this.f13623b ? 1 : -3) + (this.f13624c ? 3 : -7) + (this.f13625d ? 7 : -11) + (this.f13626e ? 11 : -13);
        }

        public String toString() {
            return String.format("JsonIgnoreProperties.Value(ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s)", this.f13622a, Boolean.valueOf(this.f13623b), Boolean.valueOf(this.f13624c), Boolean.valueOf(this.f13625d), Boolean.valueOf(this.f13626e));
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JsonIgnoreProperties> valueFor() {
            return JsonIgnoreProperties.class;
        }

        public Value withAllowGetters() {
            return this.f13624c ? this : construct(this.f13622a, this.f13623b, true, this.f13625d, this.f13626e);
        }

        public Value withAllowSetters() {
            return this.f13625d ? this : construct(this.f13622a, this.f13623b, this.f13624c, true, this.f13626e);
        }

        public Value withIgnoreUnknown() {
            return this.f13623b ? this : construct(this.f13622a, true, this.f13624c, this.f13625d, this.f13626e);
        }

        public Value withIgnored(Set<String> set) {
            return construct(set, this.f13623b, this.f13624c, this.f13625d, this.f13626e);
        }

        public Value withMerge() {
            return this.f13626e ? this : construct(this.f13622a, this.f13623b, this.f13624c, this.f13625d, true);
        }

        public Value withOverrides(Value value) {
            if (value == null || value == f13621g) {
                return this;
            }
            if (value.f13626e) {
                if (c(this, value)) {
                    return this;
                }
                boolean z9 = false;
                return construct(d(this.f13622a, value.f13622a), this.f13623b || value.f13623b, this.f13624c || value.f13624c, (this.f13625d || value.f13625d) ? true : true, true);
            }
            return value;
        }

        public Value withoutAllowGetters() {
            return !this.f13624c ? this : construct(this.f13622a, this.f13623b, false, this.f13625d, this.f13626e);
        }

        public Value withoutAllowSetters() {
            return !this.f13625d ? this : construct(this.f13622a, this.f13623b, this.f13624c, false, this.f13626e);
        }

        public Value withoutIgnoreUnknown() {
            return !this.f13623b ? this : construct(this.f13622a, false, this.f13624c, this.f13625d, this.f13626e);
        }

        public Value withoutIgnored() {
            return construct(null, this.f13623b, this.f13624c, this.f13625d, this.f13626e);
        }

        public Value withoutMerge() {
            return !this.f13626e ? this : construct(this.f13622a, this.f13623b, this.f13624c, this.f13625d, false);
        }

        public static Value forIgnoredProperties(String... strArr) {
            if (strArr.length == 0) {
                return f13621g;
            }
            return f13621g.withIgnored(a(strArr));
        }

        public Value withIgnored(String... strArr) {
            return construct(a(strArr), this.f13623b, this.f13624c, this.f13625d, this.f13626e);
        }
    }

    boolean allowGetters() default false;

    boolean allowSetters() default false;

    boolean ignoreUnknown() default false;

    String[] value() default {};
}
