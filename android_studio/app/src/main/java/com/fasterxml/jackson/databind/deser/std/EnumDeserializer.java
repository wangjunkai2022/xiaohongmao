package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.CompactStringObjectMap;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.g;
import java.io.IOException;
import java.util.Objects;

@c2.a
/* loaded from: classes.dex */
public class EnumDeserializer extends StdScalarDeserializer<Object> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: m  reason: collision with root package name */
    private static final long f14871m = 1;

    /* renamed from: g  reason: collision with root package name */
    protected Object[] f14872g;

    /* renamed from: h  reason: collision with root package name */
    private final Enum<?> f14873h;

    /* renamed from: i  reason: collision with root package name */
    protected final CompactStringObjectMap f14874i;

    /* renamed from: j  reason: collision with root package name */
    protected CompactStringObjectMap f14875j;

    /* renamed from: k  reason: collision with root package name */
    protected final Boolean f14876k;

    /* renamed from: l  reason: collision with root package name */
    protected final boolean f14877l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14878a;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            f14878a = iArr;
            try {
                iArr[CoercionAction.AsNull.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14878a[CoercionAction.AsEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14878a[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public EnumDeserializer(EnumResolver enumResolver, Boolean bool) {
        super(enumResolver.getEnumClass());
        this.f14874i = enumResolver.constructLookup();
        this.f14872g = enumResolver.getRawEnums();
        this.f14873h = enumResolver.getDefaultValue();
        this.f14876k = bool;
        this.f14877l = enumResolver.isFromIntValue();
    }

    private final Object C0(JsonParser jsonParser, DeserializationContext deserializationContext, CompactStringObjectMap compactStringObjectMap, String str) throws IOException {
        char charAt;
        CoercionAction b10;
        String trim = str.trim();
        if (trim.isEmpty()) {
            if (this.f14873h != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                return this.f14873h;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            if (str.isEmpty()) {
                b10 = b(deserializationContext, y(deserializationContext), handledType(), str, "empty String (\"\")");
            } else {
                b10 = b(deserializationContext, w(deserializationContext), handledType(), str, "blank String (all whitespace)");
            }
            int i4 = a.f14878a[b10.ordinal()];
            if (i4 == 2 || i4 == 3) {
                return getEmptyValue(deserializationContext);
            }
            return null;
        }
        if (Boolean.TRUE.equals(this.f14876k)) {
            Object findCaseInsensitive = compactStringObjectMap.findCaseInsensitive(trim);
            if (findCaseInsensitive != null) {
                return findCaseInsensitive;
            }
        } else if (!deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS) && !this.f14877l && (charAt = trim.charAt(0)) >= '0' && charAt <= '9') {
            try {
                int parseInt = Integer.parseInt(trim);
                if (!deserializationContext.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
                    return deserializationContext.handleWeirdStringValue(E0(), trim, "value looks like quoted Enum index, but `MapperFeature.ALLOW_COERCION_OF_SCALARS` prevents use", new Object[0]);
                }
                if (parseInt >= 0) {
                    Object[] objArr = this.f14872g;
                    if (parseInt < objArr.length) {
                        return objArr[parseInt];
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        if (this.f14873h != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
            return this.f14873h;
        }
        if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
            return null;
        }
        return deserializationContext.handleWeirdStringValue(E0(), trim, "not one of the values accepted for Enum class: %s", compactStringObjectMap.keys());
    }

    @Deprecated
    public static com.fasterxml.jackson.databind.d<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        return deserializerForCreator(deserializationConfig, cls, annotatedMethod, null, null);
    }

    public static com.fasterxml.jackson.databind.d<?> deserializerForNoArgsCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        if (deserializationConfig.canOverrideAccessModifiers()) {
            g.i(annotatedMethod.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new b(cls, annotatedMethod);
    }

    protected Object D0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.START_ARRAY)) {
            return q(jsonParser, deserializationContext);
        }
        return deserializationContext.handleUnexpectedToken(E0(), jsonParser);
    }

    protected Class<?> E0() {
        return handledType();
    }

    protected Object F0(JsonParser jsonParser, DeserializationContext deserializationContext, int i4) throws IOException {
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType(), handledType(), CoercionInputShape.Integer);
        if (findCoercionAction == CoercionAction.Fail) {
            if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                return deserializationContext.handleWeirdNumberValue(E0(), Integer.valueOf(i4), "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow", new Object[0]);
            }
            Class<?> handledType = handledType();
            Integer valueOf = Integer.valueOf(i4);
            b(deserializationContext, findCoercionAction, handledType, valueOf, "Integer value (" + i4 + ")");
        }
        int i10 = a.f14878a[findCoercionAction.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i4 >= 0) {
                    Object[] objArr = this.f14872g;
                    if (i4 < objArr.length) {
                        return objArr[i4];
                    }
                }
                if (this.f14873h != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                    return this.f14873h;
                }
                if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    return null;
                }
                return deserializationContext.handleWeirdNumberValue(E0(), Integer.valueOf(i4), "index value outside legal index range [0..%s]", Integer.valueOf(this.f14872g.length - 1));
            }
            return getEmptyValue(deserializationContext);
        }
        return null;
    }

    protected Object G0(JsonParser jsonParser, DeserializationContext deserializationContext, String str) throws IOException {
        Object find;
        CompactStringObjectMap H0 = deserializationContext.isEnabled(DeserializationFeature.READ_ENUMS_USING_TO_STRING) ? H0(deserializationContext) : this.f14874i;
        Object find2 = H0.find(str);
        if (find2 == null) {
            String trim = str.trim();
            return (trim == str || (find = H0.find(trim)) == null) ? C0(jsonParser, deserializationContext, H0, trim) : find;
        }
        return find2;
    }

    protected CompactStringObjectMap H0(DeserializationContext deserializationContext) {
        CompactStringObjectMap compactStringObjectMap = this.f14875j;
        if (compactStringObjectMap == null) {
            synchronized (this) {
                compactStringObjectMap = EnumResolver.constructUsingToString(deserializationContext.getConfig(), E0()).constructLookup();
            }
            this.f14875j = compactStringObjectMap;
        }
        return compactStringObjectMap;
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        Boolean v02 = v0(deserializationContext, beanProperty, handledType(), JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        if (v02 == null) {
            v02 = this.f14876k;
        }
        return withResolved(v02);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_STRING)) {
            return G0(jsonParser, deserializationContext, jsonParser.S0());
        }
        if (jsonParser.k1(JsonToken.VALUE_NUMBER_INT)) {
            if (this.f14877l) {
                return G0(jsonParser, deserializationContext, jsonParser.S0());
            }
            return F0(jsonParser, deserializationContext, jsonParser.F0());
        } else if (jsonParser.q1()) {
            return G0(jsonParser, deserializationContext, deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a));
        } else {
            return D0(jsonParser, deserializationContext);
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14873h;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Enum;
    }

    public EnumDeserializer withResolved(Boolean bool) {
        return Objects.equals(this.f14876k, bool) ? this : new EnumDeserializer(this, bool);
    }

    public static com.fasterxml.jackson.databind.d<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) {
        if (deserializationConfig.canOverrideAccessModifiers()) {
            g.i(annotatedMethod.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new b(cls, annotatedMethod, annotatedMethod.getParameterType(0), valueInstantiator, settableBeanPropertyArr);
    }

    protected EnumDeserializer(EnumDeserializer enumDeserializer, Boolean bool) {
        super(enumDeserializer);
        this.f14874i = enumDeserializer.f14874i;
        this.f14872g = enumDeserializer.f14872g;
        this.f14873h = enumDeserializer.f14873h;
        this.f14876k = bool;
        this.f14877l = enumDeserializer.f14877l;
    }

    @Deprecated
    public EnumDeserializer(EnumResolver enumResolver) {
        this(enumResolver, (Boolean) null);
    }
}
