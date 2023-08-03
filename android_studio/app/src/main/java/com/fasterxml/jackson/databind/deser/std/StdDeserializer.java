package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.core.io.g;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.deser.BeanDeserializerBase;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.NullsAsEmptyProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsFailProvider;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class StdDeserializer<T> extends com.fasterxml.jackson.databind.d<T> implements Serializable, ValueInstantiator.a {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14985c = 1;

    /* renamed from: d  reason: collision with root package name */
    protected static final int f14986d = DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.getMask() | DeserializationFeature.USE_LONG_FOR_INTS.getMask();
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    protected static final int f14987e = DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS.getMask() | DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT.getMask();

    /* renamed from: a  reason: collision with root package name */
    protected final Class<?> f14988a;

    /* renamed from: b  reason: collision with root package name */
    protected final JavaType f14989b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14990a;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            f14990a = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14990a[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14990a[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14990a[CoercionAction.Fail.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdDeserializer(Class<?> cls) {
        this.f14988a = cls;
        this.f14989b = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean C(String str) {
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            if (str.charAt(i4) > ' ') {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean K(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final double U(String str) throws NumberFormatException {
        if (g.f13952a.equals(str)) {
            return Double.MIN_NORMAL;
        }
        return Double.parseDouble(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean A(String str) {
        return "null".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean A0(com.fasterxml.jackson.databind.d<?> dVar) {
        return com.fasterxml.jackson.databind.util.g.a0(dVar);
    }

    protected final boolean B(long j4) {
        return j4 < -2147483648L || j4 > 2147483647L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean B0(h hVar) {
        return com.fasterxml.jackson.databind.util.g.a0(hVar);
    }

    @Deprecated
    protected boolean D(String str) {
        return str.isEmpty() || "null".equals(str);
    }

    protected boolean E(String str) {
        char charAt = str.charAt(0);
        if (charAt == 'f') {
            return "false".equals(str);
        }
        if (charAt == 'F') {
            return "FALSE".equals(str) || "False".equals(str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean F(String str) {
        int i4;
        int length = str.length();
        if (length > 0) {
            char charAt = str.charAt(0);
            if (charAt != '-' && charAt != '+') {
                i4 = 0;
            } else if (length == 1) {
                return false;
            } else {
                i4 = 1;
            }
            while (i4 < length) {
                char charAt2 = str.charAt(i4);
                if (charAt2 > '9' || charAt2 < '0') {
                    return false;
                }
                i4++;
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean G(String str) {
        return "NaN".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean H(String str) {
        return "-Infinity".equals(str) || "-INF".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean I(String str) {
        return "Infinity".equals(str) || "INF".equals(str);
    }

    protected boolean J(String str) {
        char charAt = str.charAt(0);
        if (charAt == 't') {
            return "true".equals(str);
        }
        if (charAt == 'T') {
            return "TRUE".equals(str) || "True".equals(str);
        }
        return false;
    }

    protected Number L(Number number) {
        if (number == null) {
            return 0;
        }
        return number;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Boolean M(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X == 1) {
            extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, cls);
        } else if (X == 3) {
            return (Boolean) q(jsonParser, deserializationContext);
        } else {
            if (X != 6) {
                if (X != 7) {
                    switch (X) {
                        case 9:
                            return Boolean.TRUE;
                        case 10:
                            return Boolean.FALSE;
                        case 11:
                            return null;
                        default:
                            return (Boolean) deserializationContext.handleUnexpectedToken(cls, jsonParser);
                    }
                }
                return k(jsonParser, deserializationContext, cls);
            }
            extractScalarFromObject = jsonParser.S0();
        }
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Boolean, cls);
        if (i4 == CoercionAction.AsNull) {
            return null;
        }
        if (i4 == CoercionAction.AsEmpty) {
            return Boolean.FALSE;
        }
        String trim = extractScalarFromObject.trim();
        int length = trim.length();
        if (length == 4) {
            if (J(trim)) {
                return Boolean.TRUE;
            }
        } else if (length == 5 && E(trim)) {
            return Boolean.FALSE;
        }
        if (j(deserializationContext, trim)) {
            return null;
        }
        return (Boolean) deserializationContext.handleWeirdStringValue(cls, trim, "only \"true\" or \"false\" recognized", new Object[0]);
    }

    @Deprecated
    protected boolean N(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        p0(deserializationContext, jsonParser);
        return !"0".equals(jsonParser.S0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean O(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X != 6) {
                    if (X != 7) {
                        switch (X) {
                            case 9:
                                return true;
                            case 10:
                                return false;
                            case 11:
                                m0(deserializationContext);
                                return false;
                        }
                    }
                    return Boolean.TRUE.equals(k(jsonParser, deserializationContext, Boolean.TYPE));
                }
                extractScalarFromObject = jsonParser.S0();
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                boolean O = O(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return O;
            }
            return ((Boolean) deserializationContext.handleUnexpectedToken(Boolean.TYPE, jsonParser)).booleanValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Boolean.TYPE);
        LogicalType logicalType = LogicalType.Boolean;
        Class<?> cls = Boolean.TYPE;
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, logicalType, cls);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return false;
        } else if (i4 == CoercionAction.AsEmpty) {
            return false;
        } else {
            String trim = extractScalarFromObject.trim();
            int length = trim.length();
            if (length == 4) {
                if (J(trim)) {
                    return true;
                }
            } else if (length == 5 && E(trim)) {
                return false;
            }
            if (A(trim)) {
                n0(deserializationContext, trim);
                return false;
            }
            return Boolean.TRUE.equals((Boolean) deserializationContext.handleWeirdStringValue(cls, trim, "only \"true\"/\"True\"/\"TRUE\" or \"false\"/\"False\"/\"FALSE\" recognized", new Object[0]));
        }
    }

    @Deprecated
    protected final boolean P(DeserializationContext deserializationContext, JsonParser jsonParser, Class<?> cls) throws IOException {
        return O(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final byte Q(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X == 11) {
                    m0(deserializationContext);
                    return (byte) 0;
                } else if (X == 6) {
                    extractScalarFromObject = jsonParser.S0();
                } else if (X == 7) {
                    return jsonParser.r0();
                } else {
                    if (X == 8) {
                        CoercionAction e4 = e(jsonParser, deserializationContext, Byte.TYPE);
                        if (e4 == CoercionAction.AsNull || e4 == CoercionAction.AsEmpty) {
                            return (byte) 0;
                        }
                        return jsonParser.r0();
                    }
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                byte Q = Q(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return Q;
            }
            return ((Byte) deserializationContext.handleUnexpectedToken(deserializationContext.constructType(Byte.TYPE), jsonParser)).byteValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Byte.TYPE);
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Integer, Byte.TYPE);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return (byte) 0;
        } else if (i4 == CoercionAction.AsEmpty) {
            return (byte) 0;
        } else {
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                n0(deserializationContext, trim);
                return (byte) 0;
            }
            try {
                int j4 = g.j(trim);
                return a(j4) ? ((Byte) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "overflow, value cannot be represented as 8-bit value", new Object[0])).byteValue() : (byte) j4;
            } catch (IllegalArgumentException unused) {
                return ((Byte) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid `byte` value", new Object[0])).byteValue();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Date R(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        long longValue;
        int X = jsonParser.X();
        if (X == 1) {
            extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
        } else if (X == 3) {
            return T(jsonParser, deserializationContext);
        } else {
            if (X == 11) {
                return (Date) getNullValue(deserializationContext);
            }
            if (X != 6) {
                if (X != 7) {
                    return (Date) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
                }
                try {
                    longValue = jsonParser.H0();
                } catch (StreamReadException unused) {
                    longValue = ((Number) deserializationContext.handleWeirdNumberValue(this.f14988a, jsonParser.K0(), "not a valid 64-bit `long` for creating `java.util.Date`", new Object[0])).longValue();
                }
                return new Date(longValue);
            }
            extractScalarFromObject = jsonParser.S0();
        }
        return S(extractScalarFromObject.trim(), deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Date S(String str, DeserializationContext deserializationContext) throws IOException {
        try {
            if (str.isEmpty()) {
                if (a.f14990a[h(deserializationContext, str).ordinal()] != 1) {
                    return null;
                }
                return new Date(0L);
            } else if (A(str)) {
                return null;
            } else {
                return deserializationContext.parseDate(str);
            }
        } catch (IllegalArgumentException e4) {
            return (Date) deserializationContext.handleWeirdStringValue(this.f14988a, str, "not a valid representation (error: %s)", com.fasterxml.jackson.databind.util.g.q(e4));
        }
    }

    protected Date T(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        CoercionAction x9 = x(deserializationContext);
        boolean isEnabled = deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS);
        if (isEnabled || x9 != CoercionAction.Fail) {
            if (jsonParser.y1() == JsonToken.END_ARRAY) {
                int i4 = a.f14990a[x9.ordinal()];
                if (i4 == 1) {
                    return (Date) getEmptyValue(deserializationContext);
                }
                if (i4 == 2 || i4 == 3) {
                    return (Date) getNullValue(deserializationContext);
                }
            } else if (isEnabled) {
                Date R = R(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return R;
            }
        }
        return (Date) deserializationContext.handleUnexpectedToken(this.f14988a, JsonToken.START_ARRAY, jsonParser, (String) null, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final double V(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X == 11) {
                    m0(deserializationContext);
                    return 0.0d;
                } else if (X == 6) {
                    extractScalarFromObject = jsonParser.S0();
                } else if (X == 7 || X == 8) {
                    return jsonParser.z0();
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                double V = V(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return V;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(Double.TYPE, jsonParser)).doubleValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Double.TYPE);
        Double c10 = c(extractScalarFromObject);
        if (c10 != null) {
            return c10.doubleValue();
        }
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Integer, Double.TYPE);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return 0.0d;
        } else if (i4 == CoercionAction.AsEmpty) {
            return 0.0d;
        } else {
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                n0(deserializationContext, trim);
                return 0.0d;
            }
            return W(deserializationContext, trim);
        }
    }

    protected final double W(DeserializationContext deserializationContext, String str) throws IOException {
        try {
            return U(str);
        } catch (IllegalArgumentException unused) {
            return L((Number) deserializationContext.handleWeirdStringValue(Double.TYPE, str, "not a valid `double` value (as String to convert)", new Object[0])).doubleValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float X(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X == 11) {
                    m0(deserializationContext);
                    return 0.0f;
                } else if (X == 6) {
                    extractScalarFromObject = jsonParser.S0();
                } else if (X == 7 || X == 8) {
                    return jsonParser.C0();
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                float X2 = X(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return X2;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(Float.TYPE, jsonParser)).floatValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Float.TYPE);
        Float d4 = d(extractScalarFromObject);
        if (d4 != null) {
            return d4.floatValue();
        }
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Integer, Float.TYPE);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return 0.0f;
        } else if (i4 == CoercionAction.AsEmpty) {
            return 0.0f;
        } else {
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                n0(deserializationContext, trim);
                return 0.0f;
            }
            return Y(deserializationContext, trim);
        }
    }

    protected final float Y(DeserializationContext deserializationContext, String str) throws IOException {
        try {
            return Float.parseFloat(str);
        } catch (IllegalArgumentException unused) {
            return L((Number) deserializationContext.handleWeirdStringValue(Float.TYPE, str, "not a valid `float` value", new Object[0])).floatValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int Z(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X == 11) {
                    m0(deserializationContext);
                    return 0;
                } else if (X == 6) {
                    extractScalarFromObject = jsonParser.S0();
                } else if (X == 7) {
                    return jsonParser.F0();
                } else {
                    if (X == 8) {
                        CoercionAction e4 = e(jsonParser, deserializationContext, Integer.TYPE);
                        if (e4 == CoercionAction.AsNull || e4 == CoercionAction.AsEmpty) {
                            return 0;
                        }
                        return jsonParser.c1();
                    }
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                int Z = Z(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return Z;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(Integer.TYPE, jsonParser)).intValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Integer.TYPE);
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Integer, Integer.TYPE);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return 0;
        } else if (i4 == CoercionAction.AsEmpty) {
            return 0;
        } else {
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                n0(deserializationContext, trim);
                return 0;
            }
            return a0(deserializationContext, trim);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(int i4) {
        return i4 < -128 || i4 > 255;
    }

    protected final int a0(DeserializationContext deserializationContext, String str) throws IOException {
        try {
            if (str.length() > 9) {
                long l10 = g.l(str);
                return B(l10) ? L((Number) deserializationContext.handleWeirdStringValue(Integer.TYPE, str, "Overflow: numeric value (%s) out of range of int (%d -%d)", str, Integer.MIN_VALUE, Integer.MAX_VALUE)).intValue() : (int) l10;
            }
            return g.j(str);
        } catch (IllegalArgumentException unused) {
            return L((Number) deserializationContext.handleWeirdStringValue(Integer.TYPE, str, "not a valid `int` value", new Object[0])).intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionAction b(DeserializationContext deserializationContext, CoercionAction coercionAction, Class<?> cls, Object obj, String str) throws IOException {
        if (coercionAction == CoercionAction.Fail) {
            deserializationContext.reportBadCoercion(this, cls, obj, "Cannot coerce %s to %s (but could if coercion was enabled using `CoercionConfig`)", str, p());
        }
        return coercionAction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Integer b0(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X == 1) {
            extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, cls);
        } else if (X == 3) {
            return (Integer) q(jsonParser, deserializationContext);
        } else {
            if (X == 11) {
                return (Integer) getNullValue(deserializationContext);
            }
            if (X != 6) {
                if (X != 7) {
                    if (X != 8) {
                        return (Integer) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    CoercionAction e4 = e(jsonParser, deserializationContext, cls);
                    if (e4 == CoercionAction.AsNull) {
                        return (Integer) getNullValue(deserializationContext);
                    }
                    if (e4 == CoercionAction.AsEmpty) {
                        return (Integer) getEmptyValue(deserializationContext);
                    }
                    return Integer.valueOf(jsonParser.c1());
                }
                return Integer.valueOf(jsonParser.F0());
            }
            extractScalarFromObject = jsonParser.S0();
        }
        CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
        if (h4 == CoercionAction.AsNull) {
            return (Integer) getNullValue(deserializationContext);
        }
        if (h4 == CoercionAction.AsEmpty) {
            return (Integer) getEmptyValue(deserializationContext);
        }
        String trim = extractScalarFromObject.trim();
        if (j(deserializationContext, trim)) {
            return (Integer) getNullValue(deserializationContext);
        }
        return c0(deserializationContext, trim);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Double c(String str) {
        if (str.isEmpty()) {
            return null;
        }
        char charAt = str.charAt(0);
        if (charAt == '-') {
            if (H(str)) {
                return Double.valueOf(Double.NEGATIVE_INFINITY);
            }
            return null;
        } else if (charAt != 'I') {
            if (charAt == 'N' && G(str)) {
                return Double.valueOf(Double.NaN);
            }
            return null;
        } else if (I(str)) {
            return Double.valueOf(Double.POSITIVE_INFINITY);
        } else {
            return null;
        }
    }

    protected final Integer c0(DeserializationContext deserializationContext, String str) throws IOException {
        try {
            if (str.length() > 9) {
                long l10 = g.l(str);
                if (B(l10)) {
                    return (Integer) deserializationContext.handleWeirdStringValue(Integer.class, str, "Overflow: numeric value (%s) out of range of `java.lang.Integer` (%d -%d)", str, Integer.MIN_VALUE, Integer.MAX_VALUE);
                }
                return Integer.valueOf((int) l10);
            }
            return Integer.valueOf(g.j(str));
        } catch (IllegalArgumentException unused) {
            return (Integer) deserializationContext.handleWeirdStringValue(Integer.class, str, "not a valid `java.lang.Integer` value", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Float d(String str) {
        if (str.isEmpty()) {
            return null;
        }
        char charAt = str.charAt(0);
        if (charAt == '-') {
            if (H(str)) {
                return Float.valueOf(Float.NEGATIVE_INFINITY);
            }
            return null;
        } else if (charAt != 'I') {
            if (charAt == 'N' && G(str)) {
                return Float.valueOf(Float.NaN);
            }
            return null;
        } else if (I(str)) {
            return Float.valueOf(Float.POSITIVE_INFINITY);
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Long d0(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X == 1) {
            extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, cls);
        } else if (X == 3) {
            return (Long) q(jsonParser, deserializationContext);
        } else {
            if (X == 11) {
                return (Long) getNullValue(deserializationContext);
            }
            if (X != 6) {
                if (X != 7) {
                    if (X != 8) {
                        return (Long) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    CoercionAction e4 = e(jsonParser, deserializationContext, cls);
                    if (e4 == CoercionAction.AsNull) {
                        return (Long) getNullValue(deserializationContext);
                    }
                    if (e4 == CoercionAction.AsEmpty) {
                        return (Long) getEmptyValue(deserializationContext);
                    }
                    return Long.valueOf(jsonParser.e1());
                }
                return Long.valueOf(jsonParser.H0());
            }
            extractScalarFromObject = jsonParser.S0();
        }
        CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
        if (h4 == CoercionAction.AsNull) {
            return (Long) getNullValue(deserializationContext);
        }
        if (h4 == CoercionAction.AsEmpty) {
            return (Long) getEmptyValue(deserializationContext);
        }
        String trim = extractScalarFromObject.trim();
        if (j(deserializationContext, trim)) {
            return (Long) getNullValue(deserializationContext);
        }
        return e0(deserializationContext, trim);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionAction e(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(LogicalType.Integer, cls, CoercionInputShape.Float);
        if (findCoercionAction == CoercionAction.Fail) {
            Number K0 = jsonParser.K0();
            return b(deserializationContext, findCoercionAction, cls, K0, "Floating-point value (" + jsonParser.S0() + ")");
        }
        return findCoercionAction;
    }

    protected final Long e0(DeserializationContext deserializationContext, String str) throws IOException {
        try {
            return Long.valueOf(g.l(str));
        } catch (IllegalArgumentException unused) {
            return (Long) deserializationContext.handleWeirdStringValue(Long.class, str, "not a valid `java.lang.Long` value", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long f0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X == 11) {
                    m0(deserializationContext);
                    return 0L;
                } else if (X == 6) {
                    extractScalarFromObject = jsonParser.S0();
                } else if (X == 7) {
                    return jsonParser.H0();
                } else {
                    if (X == 8) {
                        CoercionAction e4 = e(jsonParser, deserializationContext, Long.TYPE);
                        if (e4 == CoercionAction.AsNull || e4 == CoercionAction.AsEmpty) {
                            return 0L;
                        }
                        return jsonParser.e1();
                    }
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                long f02 = f0(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return f02;
            }
            return ((Number) deserializationContext.handleUnexpectedToken(Long.TYPE, jsonParser)).longValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Long.TYPE);
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Integer, Long.TYPE);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return 0L;
        } else if (i4 == CoercionAction.AsEmpty) {
            return 0L;
        } else {
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                n0(deserializationContext, trim);
                return 0L;
            }
            return g0(deserializationContext, trim);
        }
    }

    protected final long g0(DeserializationContext deserializationContext, String str) throws IOException {
        try {
            return g.l(str);
        } catch (IllegalArgumentException unused) {
            return L((Number) deserializationContext.handleWeirdStringValue(Long.TYPE, str, "not a valid `long` value", new Object[0])).longValue();
        }
    }

    @Deprecated
    public final Class<?> getValueClass() {
        return this.f14988a;
    }

    public ValueInstantiator getValueInstantiator() {
        return null;
    }

    public JavaType getValueType() {
        return this.f14989b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionAction h(DeserializationContext deserializationContext, String str) throws IOException {
        return i(deserializationContext, str, logicalType(), handledType());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final short h0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String extractScalarFromObject;
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 3) {
                if (X == 11) {
                    m0(deserializationContext);
                    return (short) 0;
                } else if (X == 6) {
                    extractScalarFromObject = jsonParser.S0();
                } else if (X == 7) {
                    return jsonParser.Q0();
                } else {
                    if (X == 8) {
                        CoercionAction e4 = e(jsonParser, deserializationContext, Short.TYPE);
                        if (e4 == CoercionAction.AsNull || e4 == CoercionAction.AsEmpty) {
                            return (short) 0;
                        }
                        return jsonParser.Q0();
                    }
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                short h02 = h0(jsonParser, deserializationContext);
                l0(jsonParser, deserializationContext);
                return h02;
            }
            return ((Short) deserializationContext.handleUnexpectedToken(deserializationContext.constructType(Short.TYPE), jsonParser)).shortValue();
        }
        extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, Short.TYPE);
        CoercionAction i4 = i(deserializationContext, extractScalarFromObject, LogicalType.Integer, Short.TYPE);
        if (i4 == CoercionAction.AsNull) {
            m0(deserializationContext);
            return (short) 0;
        } else if (i4 == CoercionAction.AsEmpty) {
            return (short) 0;
        } else {
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                n0(deserializationContext, trim);
                return (short) 0;
            }
            try {
                int j4 = g.j(trim);
                return k0(j4) ? ((Short) deserializationContext.handleWeirdStringValue(Short.TYPE, trim, "overflow, value cannot be represented as 16-bit value", new Object[0])).shortValue() : (short) j4;
            } catch (IllegalArgumentException unused) {
                return ((Short) deserializationContext.handleWeirdStringValue(Short.TYPE, trim, "not a valid `short` value", new Object[0])).shortValue();
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Class<?> handledType() {
        return this.f14988a;
    }

    protected CoercionAction i(DeserializationContext deserializationContext, String str, LogicalType logicalType, Class<?> cls) throws IOException {
        if (str.isEmpty()) {
            return b(deserializationContext, deserializationContext.findCoercionAction(logicalType, cls, CoercionInputShape.EmptyString), cls, str, "empty String (\"\")");
        }
        if (C(str)) {
            return b(deserializationContext, deserializationContext.findCoercionFromBlankString(logicalType, cls, CoercionAction.Fail), cls, str, "blank String (all whitespace)");
        }
        if (deserializationContext.isEnabled(StreamReadCapability.UNTYPED_SCALARS)) {
            return CoercionAction.TryConvert;
        }
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType, cls, CoercionInputShape.String);
        if (findCoercionAction == CoercionAction.Fail) {
            deserializationContext.reportInputMismatch(this, "Cannot coerce String value (\"%s\") to %s (but might if coercion using `CoercionConfig` was enabled)", str, p());
        }
        return findCoercionAction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String i0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_STRING)) {
            return jsonParser.S0();
        }
        if (jsonParser.k1(JsonToken.VALUE_EMBEDDED_OBJECT)) {
            Object A0 = jsonParser.A0();
            if (A0 instanceof byte[]) {
                return deserializationContext.getBase64Variant().encode((byte[]) A0, false);
            }
            if (A0 == null) {
                return null;
            }
            return A0.toString();
        } else if (jsonParser.k1(JsonToken.START_OBJECT)) {
            return deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
        } else {
            String g12 = jsonParser.g1();
            return g12 != null ? g12 : (String) deserializationContext.handleUnexpectedToken(String.class, jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean j(DeserializationContext deserializationContext, String str) throws JsonMappingException {
        if (A(str)) {
            MapperFeature mapperFeature = MapperFeature.ALLOW_COERCION_OF_SCALARS;
            if (!deserializationContext.isEnabled(mapperFeature)) {
                j0(deserializationContext, true, mapperFeature, "String \"null\"");
            }
            return true;
        }
        return false;
    }

    protected void j0(DeserializationContext deserializationContext, boolean z9, Enum<?> r52, String str) throws JsonMappingException {
        deserializationContext.reportInputMismatch(this, "Cannot coerce %s to Null value as %s (%s `%s.%s` to allow)", str, p(), z9 ? "enable" : "disable", r52.getDeclaringClass().getSimpleName(), r52.name());
    }

    protected Boolean k(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(LogicalType.Boolean, cls, CoercionInputShape.Integer);
        int i4 = a.f14990a[findCoercionAction.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 4) {
                    if (jsonParser.J0() == JsonParser.NumberType.INT) {
                        return Boolean.valueOf(jsonParser.F0() != 0);
                    }
                    return Boolean.valueOf(!"0".equals(jsonParser.S0()));
                }
                Number K0 = jsonParser.K0();
                b(deserializationContext, findCoercionAction, cls, K0, "Integer value (" + jsonParser.S0() + ")");
                return Boolean.FALSE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean k0(int i4) {
        return i4 < -32768 || i4 > 32767;
    }

    @Deprecated
    protected Object l(DeserializationContext deserializationContext, boolean z9) throws JsonMappingException {
        boolean z10;
        MapperFeature mapperFeature;
        MapperFeature mapperFeature2 = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (deserializationContext.isEnabled(mapperFeature2)) {
            if (z9) {
                DeserializationFeature deserializationFeature = DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES;
                if (deserializationContext.isEnabled(deserializationFeature)) {
                    z10 = false;
                    mapperFeature = deserializationFeature;
                }
            }
            return getNullValue(deserializationContext);
        }
        z10 = true;
        mapperFeature = mapperFeature2;
        j0(deserializationContext, z10, mapperFeature, "empty String (\"\")");
        return null;
    }

    protected void l0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.y1() != JsonToken.END_ARRAY) {
            y0(jsonParser, deserializationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object m(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
            return jsonParser.n0();
        }
        if (deserializationContext.isEnabled(DeserializationFeature.USE_LONG_FOR_INTS)) {
            return Long.valueOf(jsonParser.H0());
        }
        return jsonParser.K0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m0(DeserializationContext deserializationContext) throws JsonMappingException {
        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            deserializationContext.reportInputMismatch(this, "Cannot coerce `null` to %s (disable `DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES` to allow)", p());
        }
    }

    @Deprecated
    protected Object n(DeserializationContext deserializationContext, boolean z9) throws JsonMappingException {
        if (z9) {
            m0(deserializationContext);
        }
        return getNullValue(deserializationContext);
    }

    protected final void n0(DeserializationContext deserializationContext, String str) throws JsonMappingException {
        boolean z9;
        MapperFeature mapperFeature;
        MapperFeature mapperFeature2 = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (deserializationContext.isEnabled(mapperFeature2)) {
            DeserializationFeature deserializationFeature = DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES;
            if (!deserializationContext.isEnabled(deserializationFeature)) {
                return;
            }
            z9 = false;
            mapperFeature = deserializationFeature;
        } else {
            z9 = true;
            mapperFeature = mapperFeature2;
        }
        j0(deserializationContext, z9, mapperFeature, str.isEmpty() ? "empty String (\"\")" : String.format("String \"%s\"", str));
    }

    @Deprecated
    protected Object o(DeserializationContext deserializationContext, boolean z9) throws JsonMappingException {
        MapperFeature mapperFeature = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (!deserializationContext.isEnabled(mapperFeature)) {
            j0(deserializationContext, true, mapperFeature, "String \"null\"");
        }
        return getNullValue(deserializationContext);
    }

    @Deprecated
    protected final void o0(DeserializationContext deserializationContext, String str) throws JsonMappingException {
        MapperFeature mapperFeature = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (deserializationContext.isEnabled(mapperFeature)) {
            return;
        }
        j0(deserializationContext, true, mapperFeature, str.isEmpty() ? "empty String (\"\")" : String.format("String \"%s\"", str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String p() {
        String D;
        JavaType valueType = getValueType();
        boolean z9 = false;
        if (valueType != null && !valueType.isPrimitive()) {
            z9 = (valueType.isContainerType() || valueType.isReferenceType()) ? true : true;
            D = com.fasterxml.jackson.databind.util.g.P(valueType);
        } else {
            Class<?> handledType = handledType();
            z9 = (handledType.isArray() || Collection.class.isAssignableFrom(handledType) || Map.class.isAssignableFrom(handledType)) ? true : true;
            D = com.fasterxml.jackson.databind.util.g.D(handledType);
        }
        if (z9) {
            return "element of " + D;
        }
        return D + " value";
    }

    @Deprecated
    protected void p0(DeserializationContext deserializationContext, JsonParser jsonParser) throws IOException {
        MapperFeature mapperFeature = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (deserializationContext.isEnabled(mapperFeature)) {
            return;
        }
        deserializationContext.reportInputMismatch(this, "Cannot coerce Number (%s) to %s (enable `%s.%s` to allow)", jsonParser.S0(), p(), mapperFeature.getDeclaringClass().getSimpleName(), mapperFeature.name());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T q(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        CoercionAction x9 = x(deserializationContext);
        boolean isEnabled = deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS);
        if (isEnabled || x9 != CoercionAction.Fail) {
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (y12 == jsonToken) {
                int i4 = a.f14990a[x9.ordinal()];
                if (i4 == 1) {
                    return (T) getEmptyValue(deserializationContext);
                }
                if (i4 == 2 || i4 == 3) {
                    return getNullValue(deserializationContext);
                }
            } else if (isEnabled) {
                T u9 = u(jsonParser, deserializationContext);
                if (jsonParser.y1() != jsonToken) {
                    y0(jsonParser, deserializationContext);
                }
                return u9;
            }
        }
        return (T) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), JsonToken.START_ARRAY, jsonParser, (String) null, new Object[0]);
    }

    @Deprecated
    protected void q0(DeserializationContext deserializationContext, String str) throws JsonMappingException {
        MapperFeature mapperFeature = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (deserializationContext.isEnabled(mapperFeature)) {
            return;
        }
        deserializationContext.reportInputMismatch(this, "Cannot coerce String \"%s\" to %s (enable `%s.%s` to allow)", str, p(), mapperFeature.getDeclaringClass().getSimpleName(), mapperFeature.name());
    }

    @Deprecated
    protected T r(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.START_ARRAY) && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
            if (jsonParser.y1() == JsonToken.END_ARRAY) {
                return null;
            }
            return (T) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
        }
        return (T) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l r0(DeserializationContext deserializationContext, BeanProperty beanProperty, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        Nulls s02 = s0(deserializationContext, beanProperty);
        if (s02 == Nulls.SKIP) {
            return NullsConstantProvider.skipper();
        }
        if (s02 != Nulls.FAIL) {
            l z9 = z(deserializationContext, beanProperty, s02, dVar);
            return z9 != null ? z9 : dVar;
        } else if (beanProperty == null) {
            JavaType constructType = deserializationContext.constructType(dVar.handledType());
            if (constructType.isContainerType()) {
                constructType = constructType.getContentType();
            }
            return NullsFailProvider.constructForRootValue(constructType);
        } else {
            return NullsFailProvider.constructForProperty(beanProperty, beanProperty.getType().getContentType());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object s(JsonParser jsonParser, DeserializationContext deserializationContext, CoercionAction coercionAction, Class<?> cls, String str) throws IOException {
        int i4 = a.f14990a[coercionAction.ordinal()];
        if (i4 != 1) {
            if (i4 != 4) {
                return null;
            }
            b(deserializationContext, coercionAction, cls, "", "empty String (\"\")");
            return null;
        }
        return getEmptyValue(deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Nulls s0(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        if (beanProperty != null) {
            return beanProperty.getMetadata().getContentNulls();
        }
        return deserializationContext.getConfig().getDefaultSetterInfo().getContentNulls();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T t(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        ValueInstantiator valueInstantiator = getValueInstantiator();
        Class<?> handledType = handledType();
        String g12 = jsonParser.g1();
        if (valueInstantiator != null && valueInstantiator.canCreateFromString()) {
            return (T) valueInstantiator.createFromString(deserializationContext, g12);
        }
        if (g12.isEmpty()) {
            return (T) s(jsonParser, deserializationContext, deserializationContext.findCoercionAction(logicalType(), handledType, CoercionInputShape.EmptyString), handledType, "empty String (\"\")");
        }
        if (C(g12)) {
            return (T) s(jsonParser, deserializationContext, deserializationContext.findCoercionFromBlankString(logicalType(), handledType, CoercionAction.Fail), handledType, "blank String (all whitespace)");
        }
        if (valueInstantiator != null) {
            g12 = g12.trim();
            if (valueInstantiator.canCreateFromInt() && deserializationContext.findCoercionAction(LogicalType.Integer, Integer.class, CoercionInputShape.String) == CoercionAction.TryConvert) {
                return (T) valueInstantiator.createFromInt(deserializationContext, a0(deserializationContext, g12));
            }
            if (valueInstantiator.canCreateFromLong() && deserializationContext.findCoercionAction(LogicalType.Integer, Long.class, CoercionInputShape.String) == CoercionAction.TryConvert) {
                return (T) valueInstantiator.createFromLong(deserializationContext, g0(deserializationContext, g12));
            }
            if (valueInstantiator.canCreateFromBoolean() && deserializationContext.findCoercionAction(LogicalType.Boolean, Boolean.class, CoercionInputShape.String) == CoercionAction.TryConvert) {
                String trim = g12.trim();
                if ("true".equals(trim)) {
                    return (T) valueInstantiator.createFromBoolean(deserializationContext, true);
                }
                if ("false".equals(trim)) {
                    return (T) valueInstantiator.createFromBoolean(deserializationContext, false);
                }
            }
        }
        return (T) deserializationContext.handleMissingInstantiator(handledType, valueInstantiator, deserializationContext.getParser(), "no String-argument constructor/factory method to deserialize from String value ('%s')", g12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.d<?> t0(DeserializationContext deserializationContext, BeanProperty beanProperty, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        AnnotatedMember member;
        Object findDeserializationContentConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (!K(annotationIntrospector, beanProperty) || (member = beanProperty.getMember()) == null || (findDeserializationContentConverter = annotationIntrospector.findDeserializationContentConverter(member)) == null) {
            return dVar;
        }
        com.fasterxml.jackson.databind.util.h<Object, Object> converterInstance = deserializationContext.converterInstance(beanProperty.getMember(), findDeserializationContentConverter);
        JavaType a10 = converterInstance.a(deserializationContext.getTypeFactory());
        if (dVar == null) {
            dVar = deserializationContext.findContextualValueDeserializer(a10, beanProperty);
        }
        return new StdDelegatingDeserializer(converterInstance, a10, dVar);
    }

    protected T u(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken jsonToken = JsonToken.START_ARRAY;
        if (jsonParser.k1(jsonToken)) {
            return (T) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser.W(), jsonParser, String.format("Cannot deserialize instance of %s out of %s token: nested Arrays not allowed with %s", com.fasterxml.jackson.databind.util.g.j0(this.f14988a), jsonToken, "DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS"), new Object[0]);
        }
        return deserialize(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.d<Object> u0(DeserializationContext deserializationContext, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return deserializationContext.findContextualValueDeserializer(javaType, beanProperty);
    }

    @Deprecated
    protected void v(JsonParser jsonParser, DeserializationContext deserializationContext, String str) throws IOException {
        deserializationContext.reportInputMismatch(handledType(), "Cannot coerce a floating-point value ('%s') into %s (enable `DeserializationFeature.ACCEPT_FLOAT_AS_INT` to allow)", jsonParser.g1(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean v0(DeserializationContext deserializationContext, BeanProperty beanProperty, Class<?> cls, JsonFormat.Feature feature) {
        JsonFormat.Value w02 = w0(deserializationContext, beanProperty, cls);
        if (w02 != null) {
            return w02.getFeature(feature);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionAction w(DeserializationContext deserializationContext) {
        return deserializationContext.findCoercionFromBlankString(logicalType(), handledType(), CoercionAction.Fail);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonFormat.Value w0(DeserializationContext deserializationContext, BeanProperty beanProperty, Class<?> cls) {
        if (beanProperty != null) {
            return beanProperty.findPropertyFormat(deserializationContext.getConfig(), cls);
        }
        return deserializationContext.getDefaultPropertyFormat(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionAction x(DeserializationContext deserializationContext) {
        return deserializationContext.findCoercionAction(logicalType(), handledType(), CoercionInputShape.EmptyArray);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final l x0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty, PropertyMetadata propertyMetadata) throws JsonMappingException {
        if (settableBeanProperty != null) {
            return z(deserializationContext, settableBeanProperty, propertyMetadata.getValueNulls(), settableBeanProperty.getValueDeserializer());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionAction y(DeserializationContext deserializationContext) {
        return deserializationContext.findCoercionAction(logicalType(), handledType(), CoercionInputShape.EmptyString);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        deserializationContext.reportWrongTokenException(this, JsonToken.END_ARRAY, "Attempted to unwrap '%s' value from an array (with `DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS`) but it contains more than one value", handledType().getName());
    }

    protected final l z(DeserializationContext deserializationContext, BeanProperty beanProperty, Nulls nulls, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        if (nulls == Nulls.FAIL) {
            if (beanProperty == null) {
                return NullsFailProvider.constructForRootValue(deserializationContext.constructType(dVar == null ? Object.class : dVar.handledType()));
            }
            return NullsFailProvider.constructForProperty(beanProperty);
        } else if (nulls != Nulls.AS_EMPTY) {
            if (nulls == Nulls.SKIP) {
                return NullsConstantProvider.skipper();
            }
            return null;
        } else if (dVar == null) {
            return null;
        } else {
            if (dVar instanceof BeanDeserializerBase) {
                BeanDeserializerBase beanDeserializerBase = (BeanDeserializerBase) dVar;
                if (!beanDeserializerBase.getValueInstantiator().canCreateUsingDefault()) {
                    JavaType valueType = beanProperty == null ? beanDeserializerBase.getValueType() : beanProperty.getType();
                    return (l) deserializationContext.reportBadDefinition(valueType, String.format("Cannot create empty instance of %s, no default Creator", valueType));
                }
            }
            AccessPattern emptyAccessPattern = dVar.getEmptyAccessPattern();
            if (emptyAccessPattern == AccessPattern.ALWAYS_NULL) {
                return NullsConstantProvider.nuller();
            }
            if (emptyAccessPattern == AccessPattern.CONSTANT) {
                return NullsConstantProvider.forValue(dVar.getEmptyValue(deserializationContext));
            }
            return new NullsAsEmptyProvider(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (obj == null) {
            obj = handledType();
        }
        if (deserializationContext.handleUnknownProperty(jsonParser, this, obj, str)) {
            return;
        }
        jsonParser.U1();
    }

    public JavaType getValueType(DeserializationContext deserializationContext) {
        JavaType javaType = this.f14989b;
        return javaType != null ? javaType : deserializationContext.constructType(this.f14988a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdDeserializer(JavaType javaType) {
        this.f14988a = javaType == null ? Object.class : javaType.getRawClass();
        this.f14989b = javaType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdDeserializer(StdDeserializer<?> stdDeserializer) {
        this.f14988a = stdDeserializer.f14988a;
        this.f14989b = stdDeserializer.f14989b;
    }
}
