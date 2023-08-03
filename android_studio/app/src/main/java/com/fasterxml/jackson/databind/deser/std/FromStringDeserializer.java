package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.g;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.IllformedLocaleException;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T> {

    /* loaded from: classes.dex */
    public static class Std extends FromStringDeserializer<Object> {
        public static final int STD_CHARSET = 9;
        public static final int STD_CLASS = 4;
        public static final int STD_CURRENCY = 6;
        public static final int STD_FILE = 1;
        public static final int STD_INET_ADDRESS = 11;
        public static final int STD_INET_SOCKET_ADDRESS = 12;
        public static final int STD_JAVA_TYPE = 5;
        public static final int STD_LOCALE = 8;
        public static final int STD_PATTERN = 7;
        public static final int STD_TIME_ZONE = 10;
        public static final int STD_URI = 3;
        public static final int STD_URL = 2;

        /* renamed from: h  reason: collision with root package name */
        private static final long f14893h = 1;

        /* renamed from: i  reason: collision with root package name */
        protected static final String f14894i = "_#";

        /* renamed from: g  reason: collision with root package name */
        protected final int f14895g;

        protected Std(Class<?> cls, int i4) {
            super(cls);
            this.f14895g = i4;
        }

        private Locale I0(String str, int i4, String str2, String str3, int i10) {
            String str4 = "";
            if (i10 > 0 && i10 > i4) {
                try {
                    str4 = str.substring(i4 + 1, i10);
                } catch (IllformedLocaleException unused) {
                    return new Locale(str2, str3, "");
                }
            }
            String substring = str.substring(i10 + 2);
            if (substring.indexOf(95) < 0 && substring.indexOf(45) < 0) {
                return new Locale.Builder().setLanguage(str2).setRegion(str3).setVariant(str4).setScript(substring).build();
            }
            if (substring.indexOf(95) < 0) {
                return new Locale.Builder().setLanguage(str2).setRegion(str3).setVariant(str4).setExtension(substring.charAt(0), substring.substring(substring.indexOf(45) + 1)).build();
            }
            int indexOf = substring.indexOf(95);
            return new Locale.Builder().setLanguage(str2).setRegion(str3).setVariant(str4).setScript(substring.substring(0, indexOf)).setExtension(substring.charAt(indexOf + 1), substring.substring(indexOf + 3)).build();
        }

        private Locale J0(String str, DeserializationContext deserializationContext) throws IOException {
            int K0 = K0(str);
            if (K0 < 0) {
                return new Locale(str);
            }
            String substring = str.substring(0, K0);
            String substring2 = str.substring(K0 + 1);
            int K02 = K0(substring2);
            if (K02 < 0) {
                return new Locale(substring, substring2);
            }
            String substring3 = substring2.substring(0, K02);
            int indexOf = substring2.indexOf(f14894i);
            if (indexOf < 0) {
                return new Locale(substring, substring3, substring2.substring(K02 + 1));
            }
            return I0(substring2, K02, substring, substring3, indexOf);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object F0(DeserializationContext deserializationContext) throws IOException {
            return getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected boolean H0() {
            return this.f14895g != 7;
        }

        protected int K0(String str) {
            int length = str.length();
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = str.charAt(i4);
                if (charAt == '_' || charAt == '-') {
                    return i4;
                }
            }
            return -1;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            switch (this.f14895g) {
                case 1:
                    return new File(str);
                case 2:
                    return new URL(str);
                case 3:
                    return URI.create(str);
                case 4:
                    try {
                        return deserializationContext.findClass(str);
                    } catch (Exception e4) {
                        return deserializationContext.handleInstantiationProblem(this.f14988a, str, g.O(e4));
                    }
                case 5:
                    return deserializationContext.getTypeFactory().constructFromCanonical(str);
                case 6:
                    return Currency.getInstance(str);
                case 7:
                    return Pattern.compile(str);
                case 8:
                    return J0(str, deserializationContext);
                case 9:
                    return Charset.forName(str);
                case 10:
                    return TimeZone.getTimeZone(str);
                case 11:
                    return InetAddress.getByName(str);
                case 12:
                    if (str.startsWith("[")) {
                        int lastIndexOf = str.lastIndexOf(93);
                        if (lastIndexOf != -1) {
                            int indexOf = str.indexOf(58, lastIndexOf);
                            return new InetSocketAddress(str.substring(0, lastIndexOf + 1), indexOf > -1 ? Integer.parseInt(str.substring(indexOf + 1)) : 0);
                        }
                        throw new InvalidFormatException(deserializationContext.getParser(), "Bracketed IPv6 address must contain closing bracket", str, InetSocketAddress.class);
                    }
                    int indexOf2 = str.indexOf(58);
                    if (indexOf2 >= 0) {
                        int i4 = indexOf2 + 1;
                        if (str.indexOf(58, i4) < 0) {
                            return new InetSocketAddress(str.substring(0, indexOf2), Integer.parseInt(str.substring(i4)));
                        }
                    }
                    return new InetSocketAddress(str, 0);
                default:
                    l.f();
                    return null;
            }
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            int i4 = this.f14895g;
            if (i4 != 3) {
                if (i4 != 8) {
                    return super.getEmptyValue(deserializationContext);
                }
                return Locale.ROOT;
            }
            return URI.create("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends FromStringDeserializer<Object> {
        public a() {
            super(StringBuffer.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            return new StringBuffer(str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.d
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String g12 = jsonParser.g1();
            if (g12 != null) {
                return _deserialize(g12, deserializationContext);
            }
            return super.deserialize(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new StringBuffer();
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public LogicalType logicalType() {
            return LogicalType.Textual;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends FromStringDeserializer<Object> {
        public b() {
            super(StringBuilder.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            return new StringBuilder(str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.d
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String g12 = jsonParser.g1();
            if (g12 != null) {
                return _deserialize(g12, deserializationContext);
            }
            return super.deserialize(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return new StringBuilder();
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public LogicalType logicalType() {
            return LogicalType.Textual;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FromStringDeserializer(Class<?> cls) {
        super(cls);
    }

    public static FromStringDeserializer<?> findDeserializer(Class<?> cls) {
        int i4;
        if (cls == File.class) {
            i4 = 1;
        } else if (cls == URL.class) {
            i4 = 2;
        } else if (cls == URI.class) {
            i4 = 3;
        } else if (cls == Class.class) {
            i4 = 4;
        } else if (cls == JavaType.class) {
            i4 = 5;
        } else if (cls == Currency.class) {
            i4 = 6;
        } else if (cls == Pattern.class) {
            i4 = 7;
        } else if (cls == Locale.class) {
            i4 = 8;
        } else if (cls == Charset.class) {
            i4 = 9;
        } else if (cls == TimeZone.class) {
            i4 = 10;
        } else if (cls == InetAddress.class) {
            i4 = 11;
        } else if (cls != InetSocketAddress.class) {
            if (cls == StringBuilder.class) {
                return new b();
            }
            if (cls == StringBuffer.class) {
                return new a();
            }
            return null;
        } else {
            i4 = 12;
        }
        return new Std(cls, i4);
    }

    public static Class<?>[] types() {
        return new Class[]{File.class, URL.class, URI.class, Class.class, JavaType.class, Currency.class, Pattern.class, Locale.class, Charset.class, TimeZone.class, InetAddress.class, InetSocketAddress.class, StringBuilder.class, StringBuffer.class};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T C0(Object obj, DeserializationContext deserializationContext) throws IOException {
        deserializationContext.reportInputMismatch(this, "Don't know how to convert embedded Object of type %s into %s", obj.getClass().getName(), this.f14988a.getName());
        return null;
    }

    @Deprecated
    protected final T D0() throws IOException {
        return null;
    }

    protected Object E0(DeserializationContext deserializationContext) throws IOException {
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType(), this.f14988a, CoercionInputShape.EmptyString);
        if (findCoercionAction == CoercionAction.Fail) {
            deserializationContext.reportInputMismatch(this, "Cannot coerce empty String (\"\") to %s (but could if enabling coercion using `CoercionConfig`)", p());
        }
        if (findCoercionAction == CoercionAction.AsNull) {
            return getNullValue(deserializationContext);
        }
        if (findCoercionAction == CoercionAction.AsEmpty) {
            return getEmptyValue(deserializationContext);
        }
        return F0(deserializationContext);
    }

    protected Object F0(DeserializationContext deserializationContext) throws IOException {
        return getNullValue(deserializationContext);
    }

    protected Object G0(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        if (jsonToken == JsonToken.START_ARRAY) {
            return q(jsonParser, deserializationContext);
        }
        if (jsonToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
            Object A0 = jsonParser.A0();
            if (A0 == null) {
                return null;
            }
            return this.f14988a.isAssignableFrom(A0.getClass()) ? A0 : C0(A0, deserializationContext);
        }
        return deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
    }

    protected boolean H0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T _deserialize(String str, DeserializationContext deserializationContext) throws IOException;

    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String g12 = jsonParser.g1();
        if (g12 == null) {
            JsonToken W = jsonParser.W();
            if (W != JsonToken.START_OBJECT) {
                return (T) G0(jsonParser, deserializationContext, W);
            }
            g12 = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
        }
        if (g12.isEmpty()) {
            return (T) E0(deserializationContext);
        }
        if (H0()) {
            String trim = g12.trim();
            if (trim != g12 && trim.isEmpty()) {
                return (T) E0(deserializationContext);
            }
            g12 = trim;
        }
        try {
            return _deserialize(g12, deserializationContext);
        } catch (IllegalArgumentException | MalformedURLException e4) {
            String str = "not a valid textual representation";
            String message = e4.getMessage();
            if (message != null) {
                str = "not a valid textual representation, problem: " + message;
            }
            throw deserializationContext.weirdStringException(g12, this.f14988a, str).withCause(e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.OtherScalar;
    }
}
