package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonAutoDetect {

    /* loaded from: classes.dex */
    public enum Visibility {
        ANY,
        NON_PRIVATE,
        PROTECTED_AND_PUBLIC,
        PUBLIC_ONLY,
        NONE,
        DEFAULT;

        public boolean isVisible(Member member) {
            int i4 = a.f13601a[ordinal()];
            if (i4 != 1) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        if (i4 != 5) {
                            return false;
                        }
                    } else if (Modifier.isProtected(member.getModifiers())) {
                        return true;
                    }
                    return Modifier.isPublic(member.getModifiers());
                }
                return !Modifier.isPrivate(member.getModifiers());
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13601a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f13602b;

        static {
            int[] iArr = new int[PropertyAccessor.values().length];
            f13602b = iArr;
            try {
                iArr[PropertyAccessor.CREATOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13602b[PropertyAccessor.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13602b[PropertyAccessor.GETTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13602b[PropertyAccessor.IS_GETTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13602b[PropertyAccessor.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13602b[PropertyAccessor.SETTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13602b[PropertyAccessor.ALL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[Visibility.values().length];
            f13601a = iArr2;
            try {
                iArr2[Visibility.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f13601a[Visibility.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f13601a[Visibility.NON_PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13601a[Visibility.PROTECTED_AND_PUBLIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f13601a[Visibility.PUBLIC_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    Visibility creatorVisibility() default Visibility.DEFAULT;

    Visibility fieldVisibility() default Visibility.DEFAULT;

    Visibility getterVisibility() default Visibility.DEFAULT;

    Visibility isGetterVisibility() default Visibility.DEFAULT;

    Visibility setterVisibility() default Visibility.DEFAULT;

    /* loaded from: classes.dex */
    public static class Value implements b<JsonAutoDetect>, Serializable {

        /* renamed from: f  reason: collision with root package name */
        private static final long f13591f = 1;

        /* renamed from: g  reason: collision with root package name */
        private static final Visibility f13592g;

        /* renamed from: h  reason: collision with root package name */
        protected static final Value f13593h;

        /* renamed from: i  reason: collision with root package name */
        protected static final Value f13594i;

        /* renamed from: a  reason: collision with root package name */
        protected final Visibility f13595a;

        /* renamed from: b  reason: collision with root package name */
        protected final Visibility f13596b;

        /* renamed from: c  reason: collision with root package name */
        protected final Visibility f13597c;

        /* renamed from: d  reason: collision with root package name */
        protected final Visibility f13598d;

        /* renamed from: e  reason: collision with root package name */
        protected final Visibility f13599e;

        static {
            Visibility visibility = Visibility.PUBLIC_ONLY;
            f13592g = visibility;
            f13593h = new Value(visibility, visibility, visibility, Visibility.ANY, visibility);
            Visibility visibility2 = Visibility.DEFAULT;
            f13594i = new Value(visibility2, visibility2, visibility2, visibility2, visibility2);
        }

        private Value(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            this.f13595a = visibility;
            this.f13596b = visibility2;
            this.f13597c = visibility3;
            this.f13598d = visibility4;
            this.f13599e = visibility5;
        }

        private static boolean a(Value value, Value value2) {
            return value.f13595a == value2.f13595a && value.f13596b == value2.f13596b && value.f13597c == value2.f13597c && value.f13598d == value2.f13598d && value.f13599e == value2.f13599e;
        }

        private static Value b(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            if (visibility == f13592g) {
                Value value = f13593h;
                if (visibility2 == value.f13596b && visibility3 == value.f13597c && visibility4 == value.f13598d && visibility5 == value.f13599e) {
                    return value;
                }
                return null;
            }
            Visibility visibility6 = Visibility.DEFAULT;
            if (visibility == visibility6 && visibility2 == visibility6 && visibility3 == visibility6 && visibility4 == visibility6 && visibility5 == visibility6) {
                return f13594i;
            }
            return null;
        }

        public static Value construct(PropertyAccessor propertyAccessor, Visibility visibility) {
            Visibility visibility2;
            Visibility visibility3;
            Visibility visibility4;
            Visibility visibility5 = Visibility.DEFAULT;
            int i4 = a.f13602b[propertyAccessor.ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    visibility3 = visibility5;
                    visibility4 = visibility3;
                } else if (i4 != 3) {
                    if (i4 == 4) {
                        visibility3 = visibility;
                        visibility = visibility5;
                    } else if (i4 == 6) {
                        visibility4 = visibility;
                        visibility3 = visibility5;
                        visibility = visibility3;
                        visibility2 = visibility;
                    } else if (i4 != 7) {
                        visibility3 = visibility5;
                        visibility = visibility3;
                    } else {
                        visibility3 = visibility;
                        visibility5 = visibility3;
                        visibility4 = visibility5;
                    }
                    visibility4 = visibility;
                } else {
                    visibility3 = visibility5;
                    visibility4 = visibility3;
                    visibility2 = visibility4;
                    visibility5 = visibility;
                    visibility = visibility2;
                }
                visibility2 = visibility4;
            } else {
                visibility2 = visibility;
                visibility3 = visibility5;
                visibility = visibility3;
                visibility4 = visibility;
            }
            return construct(visibility, visibility5, visibility3, visibility4, visibility2);
        }

        public static Value defaultVisibility() {
            return f13593h;
        }

        public static Value from(JsonAutoDetect jsonAutoDetect) {
            return construct(jsonAutoDetect.fieldVisibility(), jsonAutoDetect.getterVisibility(), jsonAutoDetect.isGetterVisibility(), jsonAutoDetect.setterVisibility(), jsonAutoDetect.creatorVisibility());
        }

        public static Value merge(Value value, Value value2) {
            return value == null ? value2 : value.withOverrides(value2);
        }

        public static Value noOverrides() {
            return f13594i;
        }

        protected Object c() {
            Value b10 = b(this.f13595a, this.f13596b, this.f13597c, this.f13598d, this.f13599e);
            return b10 == null ? this : b10;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return obj != null && obj.getClass() == getClass() && a(this, (Value) obj);
        }

        public Visibility getCreatorVisibility() {
            return this.f13599e;
        }

        public Visibility getFieldVisibility() {
            return this.f13595a;
        }

        public Visibility getGetterVisibility() {
            return this.f13596b;
        }

        public Visibility getIsGetterVisibility() {
            return this.f13597c;
        }

        public Visibility getSetterVisibility() {
            return this.f13598d;
        }

        public int hashCode() {
            return ((this.f13595a.ordinal() + 1) ^ (((this.f13596b.ordinal() * 3) - (this.f13597c.ordinal() * 7)) + (this.f13598d.ordinal() * 11))) ^ (this.f13599e.ordinal() * 13);
        }

        public String toString() {
            return String.format("JsonAutoDetect.Value(fields=%s,getters=%s,isGetters=%s,setters=%s,creators=%s)", this.f13595a, this.f13596b, this.f13597c, this.f13598d, this.f13599e);
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JsonAutoDetect> valueFor() {
            return JsonAutoDetect.class;
        }

        public Value withCreatorVisibility(Visibility visibility) {
            return construct(this.f13595a, this.f13596b, this.f13597c, this.f13598d, visibility);
        }

        public Value withFieldVisibility(Visibility visibility) {
            return construct(visibility, this.f13596b, this.f13597c, this.f13598d, this.f13599e);
        }

        public Value withGetterVisibility(Visibility visibility) {
            return construct(this.f13595a, visibility, this.f13597c, this.f13598d, this.f13599e);
        }

        public Value withIsGetterVisibility(Visibility visibility) {
            return construct(this.f13595a, this.f13596b, visibility, this.f13598d, this.f13599e);
        }

        public Value withOverrides(Value value) {
            if (value == null || value == f13594i || value == this || a(this, value)) {
                return this;
            }
            Visibility visibility = value.f13595a;
            Visibility visibility2 = Visibility.DEFAULT;
            if (visibility == visibility2) {
                visibility = this.f13595a;
            }
            Visibility visibility3 = value.f13596b;
            if (visibility3 == visibility2) {
                visibility3 = this.f13596b;
            }
            Visibility visibility4 = value.f13597c;
            if (visibility4 == visibility2) {
                visibility4 = this.f13597c;
            }
            Visibility visibility5 = value.f13598d;
            if (visibility5 == visibility2) {
                visibility5 = this.f13598d;
            }
            Visibility visibility6 = value.f13599e;
            if (visibility6 == visibility2) {
                visibility6 = this.f13599e;
            }
            return construct(visibility, visibility3, visibility4, visibility5, visibility6);
        }

        public Value withSetterVisibility(Visibility visibility) {
            return construct(this.f13595a, this.f13596b, this.f13597c, visibility, this.f13599e);
        }

        public static Value construct(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            Value b10 = b(visibility, visibility2, visibility3, visibility4, visibility5);
            return b10 == null ? new Value(visibility, visibility2, visibility3, visibility4, visibility5) : b10;
        }
    }
}
