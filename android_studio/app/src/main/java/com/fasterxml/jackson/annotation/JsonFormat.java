package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Locale;
import java.util.TimeZone;

@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonFormat {

    /* renamed from: v0  reason: collision with root package name */
    public static final String f13604v0 = "##default";

    /* renamed from: w0  reason: collision with root package name */
    public static final String f13605w0 = "##default";

    /* loaded from: classes.dex */
    public enum Feature {
        ACCEPT_SINGLE_VALUE_AS_ARRAY,
        ACCEPT_CASE_INSENSITIVE_PROPERTIES,
        ACCEPT_CASE_INSENSITIVE_VALUES,
        WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS,
        WRITE_DATES_WITH_ZONE_ID,
        WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED,
        WRITE_SORTED_MAP_ENTRIES,
        ADJUST_DATES_TO_CONTEXT_TIME_ZONE
    }

    /* loaded from: classes.dex */
    public enum Shape {
        ANY,
        NATURAL,
        SCALAR,
        ARRAY,
        OBJECT,
        NUMBER,
        NUMBER_FLOAT,
        NUMBER_INT,
        STRING,
        BOOLEAN,
        BINARY;

        public boolean isNumeric() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }

        public boolean isStructured() {
            return this == OBJECT || this == ARRAY;
        }
    }

    /* loaded from: classes.dex */
    public static class Value implements b<JsonFormat>, Serializable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f13608h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final Value f13609i = new Value();

        /* renamed from: a  reason: collision with root package name */
        private final String f13610a;

        /* renamed from: b  reason: collision with root package name */
        private final Shape f13611b;

        /* renamed from: c  reason: collision with root package name */
        private final Locale f13612c;

        /* renamed from: d  reason: collision with root package name */
        private final String f13613d;

        /* renamed from: e  reason: collision with root package name */
        private final Boolean f13614e;

        /* renamed from: f  reason: collision with root package name */
        private final a f13615f;

        /* renamed from: g  reason: collision with root package name */
        private transient TimeZone f13616g;

        public Value() {
            this("", Shape.ANY, "", "", a.c(), (Boolean) null);
        }

        private static <T> boolean a(T t9, T t10) {
            if (t9 == null) {
                return t10 == null;
            } else if (t10 == null) {
                return false;
            } else {
                return t9.equals(t10);
            }
        }

        public static final Value empty() {
            return f13609i;
        }

        public static Value forLeniency(boolean z9) {
            return new Value("", null, null, null, null, a.c(), Boolean.valueOf(z9));
        }

        public static Value forPattern(String str) {
            return new Value(str, null, null, null, null, a.c(), null);
        }

        public static Value forShape(Shape shape) {
            return new Value("", shape, null, null, null, a.c(), null);
        }

        public static final Value from(JsonFormat jsonFormat) {
            return jsonFormat == null ? f13609i : new Value(jsonFormat);
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

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == getClass()) {
                Value value = (Value) obj;
                return this.f13611b == value.f13611b && this.f13615f.equals(value.f13615f) && a(this.f13614e, value.f13614e) && a(this.f13613d, value.f13613d) && a(this.f13610a, value.f13610a) && a(this.f13616g, value.f13616g) && a(this.f13612c, value.f13612c);
            }
            return false;
        }

        public Boolean getFeature(Feature feature) {
            return this.f13615f.d(feature);
        }

        public a getFeatures() {
            return this.f13615f;
        }

        public Boolean getLenient() {
            return this.f13614e;
        }

        public Locale getLocale() {
            return this.f13612c;
        }

        public String getPattern() {
            return this.f13610a;
        }

        public Shape getShape() {
            return this.f13611b;
        }

        public TimeZone getTimeZone() {
            TimeZone timeZone = this.f13616g;
            if (timeZone == null) {
                String str = this.f13613d;
                if (str == null) {
                    return null;
                }
                TimeZone timeZone2 = TimeZone.getTimeZone(str);
                this.f13616g = timeZone2;
                return timeZone2;
            }
            return timeZone;
        }

        public boolean hasLenient() {
            return this.f13614e != null;
        }

        public boolean hasLocale() {
            return this.f13612c != null;
        }

        public boolean hasPattern() {
            String str = this.f13610a;
            return str != null && str.length() > 0;
        }

        public boolean hasShape() {
            return this.f13611b != Shape.ANY;
        }

        public boolean hasTimeZone() {
            String str;
            return (this.f13616g == null && ((str = this.f13613d) == null || str.isEmpty())) ? false : true;
        }

        public int hashCode() {
            String str = this.f13613d;
            int hashCode = str == null ? 1 : str.hashCode();
            String str2 = this.f13610a;
            if (str2 != null) {
                hashCode ^= str2.hashCode();
            }
            int hashCode2 = hashCode + this.f13611b.hashCode();
            Boolean bool = this.f13614e;
            if (bool != null) {
                hashCode2 ^= bool.hashCode();
            }
            Locale locale = this.f13612c;
            if (locale != null) {
                hashCode2 += locale.hashCode();
            }
            return hashCode2 ^ this.f13615f.hashCode();
        }

        public boolean isLenient() {
            return Boolean.TRUE.equals(this.f13614e);
        }

        public String timeZoneAsString() {
            TimeZone timeZone = this.f13616g;
            if (timeZone != null) {
                return timeZone.getID();
            }
            return this.f13613d;
        }

        public String toString() {
            return String.format("JsonFormat.Value(pattern=%s,shape=%s,lenient=%s,locale=%s,timezone=%s,features=%s)", this.f13610a, this.f13611b, this.f13614e, this.f13612c, this.f13613d, this.f13615f);
        }

        @Override // com.fasterxml.jackson.annotation.b
        public Class<JsonFormat> valueFor() {
            return JsonFormat.class;
        }

        public Value withFeature(Feature feature) {
            a e4 = this.f13615f.e(feature);
            return e4 == this.f13615f ? this : new Value(this.f13610a, this.f13611b, this.f13612c, this.f13613d, this.f13616g, e4, this.f13614e);
        }

        public Value withLenient(Boolean bool) {
            return bool == this.f13614e ? this : new Value(this.f13610a, this.f13611b, this.f13612c, this.f13613d, this.f13616g, this.f13615f, bool);
        }

        public Value withLocale(Locale locale) {
            return new Value(this.f13610a, this.f13611b, locale, this.f13613d, this.f13616g, this.f13615f, this.f13614e);
        }

        public final Value withOverrides(Value value) {
            Value value2;
            a f10;
            String str;
            TimeZone timeZone;
            if (value == null || value == (value2 = f13609i) || value == this) {
                return this;
            }
            if (this == value2) {
                return value;
            }
            String str2 = value.f13610a;
            if (str2 == null || str2.isEmpty()) {
                str2 = this.f13610a;
            }
            String str3 = str2;
            Shape shape = value.f13611b;
            if (shape == Shape.ANY) {
                shape = this.f13611b;
            }
            Shape shape2 = shape;
            Locale locale = value.f13612c;
            if (locale == null) {
                locale = this.f13612c;
            }
            Locale locale2 = locale;
            a aVar = this.f13615f;
            if (aVar == null) {
                f10 = value.f13615f;
            } else {
                f10 = aVar.f(value.f13615f);
            }
            a aVar2 = f10;
            Boolean bool = value.f13614e;
            if (bool == null) {
                bool = this.f13614e;
            }
            Boolean bool2 = bool;
            String str4 = value.f13613d;
            if (str4 != null && !str4.isEmpty()) {
                timeZone = value.f13616g;
                str = str4;
            } else {
                str = this.f13613d;
                timeZone = this.f13616g;
            }
            return new Value(str3, shape2, locale2, str, timeZone, aVar2, bool2);
        }

        public Value withPattern(String str) {
            return new Value(str, this.f13611b, this.f13612c, this.f13613d, this.f13616g, this.f13615f, this.f13614e);
        }

        public Value withShape(Shape shape) {
            return shape == this.f13611b ? this : new Value(this.f13610a, shape, this.f13612c, this.f13613d, this.f13616g, this.f13615f, this.f13614e);
        }

        public Value withTimeZone(TimeZone timeZone) {
            return new Value(this.f13610a, this.f13611b, this.f13612c, null, timeZone, this.f13615f, this.f13614e);
        }

        public Value withoutFeature(Feature feature) {
            a g4 = this.f13615f.g(feature);
            return g4 == this.f13615f ? this : new Value(this.f13610a, this.f13611b, this.f13612c, this.f13613d, this.f13616g, g4, this.f13614e);
        }

        public Value(JsonFormat jsonFormat) {
            this(jsonFormat.pattern(), jsonFormat.shape(), jsonFormat.locale(), jsonFormat.timezone(), a.a(jsonFormat), jsonFormat.lenient().asBoolean());
        }

        public Value(String str, Shape shape, String str2, String str3, a aVar, Boolean bool) {
            this(str, shape, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, aVar, bool);
        }

        public Value(String str, Shape shape, Locale locale, TimeZone timeZone, a aVar, Boolean bool) {
            this.f13610a = str == null ? "" : str;
            this.f13611b = shape == null ? Shape.ANY : shape;
            this.f13612c = locale;
            this.f13616g = timeZone;
            this.f13613d = null;
            this.f13615f = aVar == null ? a.c() : aVar;
            this.f13614e = bool;
        }

        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, a aVar, Boolean bool) {
            this.f13610a = str == null ? "" : str;
            this.f13611b = shape == null ? Shape.ANY : shape;
            this.f13612c = locale;
            this.f13616g = timeZone;
            this.f13613d = str2;
            this.f13615f = aVar == null ? a.c() : aVar;
            this.f13614e = bool;
        }

        @Deprecated
        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, a aVar) {
            this(str, shape, locale, str2, timeZone, aVar, null);
        }

        @Deprecated
        public Value(String str, Shape shape, String str2, String str3, a aVar) {
            this(str, shape, str2, str3, aVar, (Boolean) null);
        }

        @Deprecated
        public Value(String str, Shape shape, Locale locale, TimeZone timeZone, a aVar) {
            this(str, shape, locale, timeZone, aVar, (Boolean) null);
        }
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        private static final a f13617c = new a(0, 0);

        /* renamed from: a  reason: collision with root package name */
        private final int f13618a;

        /* renamed from: b  reason: collision with root package name */
        private final int f13619b;

        private a(int i4, int i10) {
            this.f13618a = i4;
            this.f13619b = i10;
        }

        public static a a(JsonFormat jsonFormat) {
            return b(jsonFormat.with(), jsonFormat.without());
        }

        public static a b(Feature[] featureArr, Feature[] featureArr2) {
            int i4 = 0;
            for (Feature feature : featureArr) {
                i4 |= 1 << feature.ordinal();
            }
            int i10 = 0;
            for (Feature feature2 : featureArr2) {
                i10 |= 1 << feature2.ordinal();
            }
            return new a(i4, i10);
        }

        public static a c() {
            return f13617c;
        }

        public Boolean d(Feature feature) {
            int ordinal = 1 << feature.ordinal();
            if ((this.f13619b & ordinal) != 0) {
                return Boolean.FALSE;
            }
            if ((ordinal & this.f13618a) != 0) {
                return Boolean.TRUE;
            }
            return null;
        }

        public a e(Feature... featureArr) {
            int i4 = this.f13618a;
            for (Feature feature : featureArr) {
                i4 |= 1 << feature.ordinal();
            }
            return i4 == this.f13618a ? this : new a(i4, this.f13619b);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == getClass()) {
                a aVar = (a) obj;
                return aVar.f13618a == this.f13618a && aVar.f13619b == this.f13619b;
            }
            return false;
        }

        public a f(a aVar) {
            if (aVar == null) {
                return this;
            }
            int i4 = aVar.f13619b;
            int i10 = aVar.f13618a;
            if (i4 == 0 && i10 == 0) {
                return this;
            }
            int i11 = this.f13618a;
            if (i11 == 0 && this.f13619b == 0) {
                return aVar;
            }
            int i12 = ((~i4) & i11) | i10;
            int i13 = this.f13619b;
            int i14 = i4 | ((~i10) & i13);
            return (i12 == i11 && i14 == i13) ? this : new a(i12, i14);
        }

        public a g(Feature... featureArr) {
            int i4 = this.f13619b;
            for (Feature feature : featureArr) {
                i4 |= 1 << feature.ordinal();
            }
            return i4 == this.f13619b ? this : new a(this.f13618a, i4);
        }

        public int hashCode() {
            return this.f13619b + this.f13618a;
        }

        public String toString() {
            return this == f13617c ? "EMPTY" : String.format("(enabled=0x%x,disabled=0x%x)", Integer.valueOf(this.f13618a), Integer.valueOf(this.f13619b));
        }
    }

    OptBoolean lenient() default OptBoolean.DEFAULT;

    String locale() default "##default";

    String pattern() default "";

    Shape shape() default Shape.ANY;

    String timezone() default "##default";

    Feature[] with() default {};

    Feature[] without() default {};
}
