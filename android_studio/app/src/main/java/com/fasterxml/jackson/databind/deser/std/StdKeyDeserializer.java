package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.g;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

@c2.a
/* loaded from: classes.dex */
public class StdKeyDeserializer extends h implements Serializable {
    public static final int TYPE_BOOLEAN = 1;
    public static final int TYPE_BYTE = 2;
    public static final int TYPE_BYTE_ARRAY = 17;
    public static final int TYPE_CALENDAR = 11;
    public static final int TYPE_CHAR = 4;
    public static final int TYPE_CLASS = 15;
    public static final int TYPE_CURRENCY = 16;
    public static final int TYPE_DATE = 10;
    public static final int TYPE_DOUBLE = 8;
    public static final int TYPE_FLOAT = 7;
    public static final int TYPE_INT = 5;
    public static final int TYPE_LOCALE = 9;
    public static final int TYPE_LONG = 6;
    public static final int TYPE_SHORT = 3;
    public static final int TYPE_URI = 13;
    public static final int TYPE_URL = 14;
    public static final int TYPE_UUID = 12;

    /* renamed from: d  reason: collision with root package name */
    private static final long f14991d = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final int f14992a;

    /* renamed from: b  reason: collision with root package name */
    protected final Class<?> f14993b;

    /* renamed from: c  reason: collision with root package name */
    protected final FromStringDeserializer<?> f14994c;

    /* loaded from: classes.dex */
    static final class a extends h implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f14995c = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final Class<?> f14996a;

        /* renamed from: b  reason: collision with root package name */
        protected final com.fasterxml.jackson.databind.d<?> f14997b;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Class<?> cls, com.fasterxml.jackson.databind.d<?> dVar) {
            this.f14996a = cls;
            this.f14997b = dVar;
        }

        @Override // com.fasterxml.jackson.databind.h
        public final Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException {
            if (str == null) {
                return null;
            }
            t bufferForInputBuffering = deserializationContext.bufferForInputBuffering();
            bufferForInputBuffering.P1(str);
            try {
                JsonParser i22 = bufferForInputBuffering.i2();
                i22.y1();
                Object deserialize = this.f14997b.deserialize(i22, deserializationContext);
                return deserialize != null ? deserialize : deserializationContext.handleWeirdKey(this.f14996a, str, "not a valid representation", new Object[0]);
            } catch (Exception e4) {
                return deserializationContext.handleWeirdKey(this.f14996a, str, "not a valid representation: %s", e4.getMessage());
            }
        }

        public Class<?> getKeyClass() {
            return this.f14996a;
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class b extends StdKeyDeserializer {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14998i = 1;

        /* renamed from: e  reason: collision with root package name */
        protected final EnumResolver f14999e;

        /* renamed from: f  reason: collision with root package name */
        protected final AnnotatedMethod f15000f;

        /* renamed from: g  reason: collision with root package name */
        protected EnumResolver f15001g;

        /* renamed from: h  reason: collision with root package name */
        protected final Enum<?> f15002h;

        /* JADX INFO: Access modifiers changed from: protected */
        public b(EnumResolver enumResolver, AnnotatedMethod annotatedMethod) {
            super(-1, enumResolver.getEnumClass());
            this.f14999e = enumResolver;
            this.f15000f = annotatedMethod;
            this.f15002h = enumResolver.getDefaultValue();
        }

        private EnumResolver h(DeserializationContext deserializationContext) {
            EnumResolver enumResolver = this.f15001g;
            if (enumResolver == null) {
                synchronized (this) {
                    enumResolver = EnumResolver.constructUsingToString(deserializationContext.getConfig(), this.f14999e.getEnumClass());
                    this.f15001g = enumResolver;
                }
            }
            return enumResolver;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer
        public Object a(String str, DeserializationContext deserializationContext) throws IOException {
            AnnotatedMethod annotatedMethod = this.f15000f;
            if (annotatedMethod != null) {
                try {
                    return annotatedMethod.call1(str);
                } catch (Exception e4) {
                    g.x0(e4);
                }
            }
            EnumResolver h4 = deserializationContext.isEnabled(DeserializationFeature.READ_ENUMS_USING_TO_STRING) ? h(deserializationContext) : this.f14999e;
            Enum<?> findEnum = h4.findEnum(str);
            if (findEnum == null) {
                if (this.f15002h == null || !deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                    return !deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL) ? deserializationContext.handleWeirdKey(this.f14993b, str, "not one of the values accepted for Enum class: %s", h4.getEnumIds()) : findEnum;
                }
                return this.f15002h;
            }
            return findEnum;
        }
    }

    /* loaded from: classes.dex */
    static final class c extends StdKeyDeserializer {

        /* renamed from: f  reason: collision with root package name */
        private static final long f15003f = 1;

        /* renamed from: e  reason: collision with root package name */
        protected final Constructor<?> f15004e;

        public c(Constructor<?> constructor) {
            super(-1, constructor.getDeclaringClass());
            this.f15004e = constructor;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer
        public Object a(String str, DeserializationContext deserializationContext) throws Exception {
            return this.f15004e.newInstance(str);
        }
    }

    /* loaded from: classes.dex */
    static final class d extends StdKeyDeserializer {

        /* renamed from: f  reason: collision with root package name */
        private static final long f15005f = 1;

        /* renamed from: e  reason: collision with root package name */
        final Method f15006e;

        public d(Method method) {
            super(-1, method.getDeclaringClass());
            this.f15006e = method;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer
        public Object a(String str, DeserializationContext deserializationContext) throws Exception {
            return this.f15006e.invoke(null, str);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class e extends StdKeyDeserializer {

        /* renamed from: e  reason: collision with root package name */
        private static final long f15007e = 1;

        /* renamed from: f  reason: collision with root package name */
        private static final e f15008f = new e(String.class);

        /* renamed from: g  reason: collision with root package name */
        private static final e f15009g = new e(Object.class);

        private e(Class<?> cls) {
            super(-1, cls);
        }

        public static e h(Class<?> cls) {
            if (cls == String.class) {
                return f15008f;
            }
            if (cls == Object.class) {
                return f15009g;
            }
            return new e(cls);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer, com.fasterxml.jackson.databind.h
        public Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException {
            return str;
        }
    }

    protected StdKeyDeserializer(int i4, Class<?> cls) {
        this(i4, cls, null);
    }

    public static StdKeyDeserializer forType(Class<?> cls) {
        int i4;
        if (cls != String.class && cls != Object.class && cls != CharSequence.class && cls != Serializable.class) {
            if (cls == UUID.class) {
                i4 = 12;
            } else if (cls == Integer.class) {
                i4 = 5;
            } else if (cls == Long.class) {
                i4 = 6;
            } else if (cls == Date.class) {
                i4 = 10;
            } else if (cls == Calendar.class) {
                i4 = 11;
            } else if (cls == Boolean.class) {
                i4 = 1;
            } else if (cls == Byte.class) {
                i4 = 2;
            } else if (cls == Character.class) {
                i4 = 4;
            } else if (cls == Short.class) {
                i4 = 3;
            } else if (cls == Float.class) {
                i4 = 7;
            } else if (cls == Double.class) {
                i4 = 8;
            } else if (cls == URI.class) {
                i4 = 13;
            } else if (cls == URL.class) {
                i4 = 14;
            } else if (cls == Class.class) {
                i4 = 15;
            } else if (cls == Locale.class) {
                return new StdKeyDeserializer(9, cls, FromStringDeserializer.findDeserializer(Locale.class));
            } else {
                if (cls == Currency.class) {
                    return new StdKeyDeserializer(16, cls, FromStringDeserializer.findDeserializer(Currency.class));
                }
                if (cls != byte[].class) {
                    return null;
                }
                i4 = 17;
            }
            return new StdKeyDeserializer(i4, cls);
        }
        return e.h(cls);
    }

    protected Object a(String str, DeserializationContext deserializationContext) throws Exception {
        switch (this.f14992a) {
            case 1:
                if ("true".equals(str)) {
                    return Boolean.TRUE;
                }
                if ("false".equals(str)) {
                    return Boolean.FALSE;
                }
                return deserializationContext.handleWeirdKey(this.f14993b, str, "value not 'true' or 'false'", new Object[0]);
            case 2:
                int c10 = c(str);
                if (c10 >= -128 && c10 <= 255) {
                    return Byte.valueOf((byte) c10);
                }
                return deserializationContext.handleWeirdKey(this.f14993b, str, "overflow, value cannot be represented as 8-bit value", new Object[0]);
            case 3:
                int c11 = c(str);
                if (c11 >= -32768 && c11 <= 32767) {
                    return Short.valueOf((short) c11);
                }
                return deserializationContext.handleWeirdKey(this.f14993b, str, "overflow, value cannot be represented as 16-bit value", new Object[0]);
            case 4:
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                return deserializationContext.handleWeirdKey(this.f14993b, str, "can only convert 1-character Strings", new Object[0]);
            case 5:
                return Integer.valueOf(c(str));
            case 6:
                return Long.valueOf(d(str));
            case 7:
                return Float.valueOf((float) b(str));
            case 8:
                return Double.valueOf(b(str));
            case 9:
                try {
                    return this.f14994c._deserialize(str, deserializationContext);
                } catch (IllegalArgumentException e4) {
                    return e(deserializationContext, str, e4);
                }
            case 10:
                return deserializationContext.parseDate(str);
            case 11:
                return deserializationContext.constructCalendar(deserializationContext.parseDate(str));
            case 12:
                try {
                    return UUID.fromString(str);
                } catch (Exception e10) {
                    return e(deserializationContext, str, e10);
                }
            case 13:
                try {
                    return URI.create(str);
                } catch (Exception e11) {
                    return e(deserializationContext, str, e11);
                }
            case 14:
                try {
                    return new URL(str);
                } catch (MalformedURLException e12) {
                    return e(deserializationContext, str, e12);
                }
            case 15:
                try {
                    return deserializationContext.findClass(str);
                } catch (Exception unused) {
                    return deserializationContext.handleWeirdKey(this.f14993b, str, "unable to parse key as Class", new Object[0]);
                }
            case 16:
                try {
                    return this.f14994c._deserialize(str, deserializationContext);
                } catch (IllegalArgumentException e13) {
                    return e(deserializationContext, str, e13);
                }
            case 17:
                try {
                    return deserializationContext.getConfig().getBase64Variant().decode(str);
                } catch (IllegalArgumentException e14) {
                    return e(deserializationContext, str, e14);
                }
            default:
                throw new IllegalStateException("Internal error: unknown key type " + this.f14993b);
        }
    }

    protected double b(String str) throws IllegalArgumentException {
        return com.fasterxml.jackson.core.io.g.i(str);
    }

    protected int c(String str) throws IllegalArgumentException {
        return Integer.parseInt(str);
    }

    protected long d(String str) throws IllegalArgumentException {
        return Long.parseLong(str);
    }

    @Override // com.fasterxml.jackson.databind.h
    public Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException {
        if (str == null) {
            return null;
        }
        try {
            Object a10 = a(str, deserializationContext);
            if (a10 != null) {
                return a10;
            }
            if (g.X(this.f14993b) && deserializationContext.getConfig().isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            return deserializationContext.handleWeirdKey(this.f14993b, str, "not a valid representation", new Object[0]);
        } catch (Exception e4) {
            return deserializationContext.handleWeirdKey(this.f14993b, str, "not a valid representation, problem: (%s) %s", e4.getClass().getName(), g.q(e4));
        }
    }

    protected Object e(DeserializationContext deserializationContext, String str, Exception exc) throws IOException {
        return deserializationContext.handleWeirdKey(this.f14993b, str, "problem: %s", g.q(exc));
    }

    public Class<?> getKeyClass() {
        return this.f14993b;
    }

    protected StdKeyDeserializer(int i4, Class<?> cls, FromStringDeserializer<?> fromStringDeserializer) {
        this.f14992a = i4;
        this.f14993b = cls;
        this.f14994c = fromStringDeserializer;
    }
}
