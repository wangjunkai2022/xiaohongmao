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
public @interface JsonIncludeProperties {

    /* loaded from: classes.dex */
    public static class Value implements b<JsonIncludeProperties>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f13634b = 1;

        /* renamed from: c  reason: collision with root package name */
        protected static final Value f13635c = new Value(null);

        /* renamed from: a  reason: collision with root package name */
        protected final Set<String> f13636a;

        protected Value(Set<String> set) {
            this.f13636a = set;
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

        public static Value all() {
            return f13635c;
        }

        private static boolean b(Set<String> set, Set<String> set2) {
            return set == null ? set2 == null : set.equals(set2);
        }

        public static Value from(JsonIncludeProperties jsonIncludeProperties) {
            if (jsonIncludeProperties == null) {
                return f13635c;
            }
            return new Value(a(jsonIncludeProperties.value()));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return obj != null && obj.getClass() == getClass() && b(this.f13636a, ((Value) obj).f13636a);
        }

        public Set<String> getIncluded() {
            return this.f13636a;
        }

        public int hashCode() {
            Set<String> set = this.f13636a;
            if (set == null) {
                return 0;
            }
            return set.size();
        }

        public String toString() {
            return String.format("JsonIncludeProperties.Value(included=%s)", this.f13636a);
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JsonIncludeProperties> valueFor() {
            return JsonIncludeProperties.class;
        }

        public Value withOverrides(Value value) {
            Set<String> included;
            if (value == null || (included = value.getIncluded()) == null) {
                return this;
            }
            if (this.f13636a == null) {
                return value;
            }
            HashSet hashSet = new HashSet();
            for (String str : included) {
                if (this.f13636a.contains(str)) {
                    hashSet.add(str);
                }
            }
            return new Value(hashSet);
        }
    }

    String[] value() default {};
}
