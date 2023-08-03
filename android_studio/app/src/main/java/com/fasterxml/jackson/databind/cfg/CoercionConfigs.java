package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class CoercionConfigs implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f14486e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f14487f = LogicalType.values().length;

    /* renamed from: a  reason: collision with root package name */
    protected CoercionAction f14488a;

    /* renamed from: b  reason: collision with root package name */
    protected final MutableCoercionConfig f14489b;

    /* renamed from: c  reason: collision with root package name */
    protected MutableCoercionConfig[] f14490c;

    /* renamed from: d  reason: collision with root package name */
    protected Map<Class<?>, MutableCoercionConfig> f14491d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14492a;

        static {
            int[] iArr = new int[CoercionInputShape.values().length];
            f14492a = iArr;
            try {
                iArr[CoercionInputShape.EmptyArray.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14492a[CoercionInputShape.Float.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14492a[CoercionInputShape.Integer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public CoercionConfigs() {
        this(CoercionAction.TryConvert, new MutableCoercionConfig(), null, null);
    }

    private static MutableCoercionConfig a(MutableCoercionConfig mutableCoercionConfig) {
        if (mutableCoercionConfig == null) {
            return null;
        }
        return mutableCoercionConfig.copy();
    }

    protected boolean b(LogicalType logicalType) {
        return logicalType == LogicalType.Float || logicalType == LogicalType.Integer || logicalType == LogicalType.Boolean || logicalType == LogicalType.DateTime;
    }

    public CoercionConfigs copy() {
        MutableCoercionConfig[] mutableCoercionConfigArr;
        MutableCoercionConfig[] mutableCoercionConfigArr2 = this.f14490c;
        HashMap hashMap = null;
        if (mutableCoercionConfigArr2 == null) {
            mutableCoercionConfigArr = null;
        } else {
            int length = mutableCoercionConfigArr2.length;
            mutableCoercionConfigArr = new MutableCoercionConfig[length];
            for (int i4 = 0; i4 < length; i4++) {
                mutableCoercionConfigArr[i4] = a(this.f14490c[i4]);
            }
        }
        if (this.f14491d != null) {
            hashMap = new HashMap();
            for (Map.Entry<Class<?>, MutableCoercionConfig> entry : this.f14491d.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue().copy());
            }
        }
        return new CoercionConfigs(this.f14488a, this.f14489b.copy(), mutableCoercionConfigArr, hashMap);
    }

    public MutableCoercionConfig defaultCoercions() {
        return this.f14489b;
    }

    public CoercionAction findCoercion(DeserializationConfig deserializationConfig, LogicalType logicalType, Class<?> cls, CoercionInputShape coercionInputShape) {
        MutableCoercionConfig mutableCoercionConfig;
        CoercionAction findAction;
        MutableCoercionConfig mutableCoercionConfig2;
        CoercionAction findAction2;
        Map<Class<?>, MutableCoercionConfig> map = this.f14491d;
        if (map == null || cls == null || (mutableCoercionConfig2 = map.get(cls)) == null || (findAction2 = mutableCoercionConfig2.findAction(coercionInputShape)) == null) {
            MutableCoercionConfig[] mutableCoercionConfigArr = this.f14490c;
            if (mutableCoercionConfigArr == null || logicalType == null || (mutableCoercionConfig = mutableCoercionConfigArr[logicalType.ordinal()]) == null || (findAction = mutableCoercionConfig.findAction(coercionInputShape)) == null) {
                CoercionAction findAction3 = this.f14489b.findAction(coercionInputShape);
                if (findAction3 != null) {
                    return findAction3;
                }
                int i4 = a.f14492a[coercionInputShape.ordinal()];
                if (i4 == 1) {
                    return deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT) ? CoercionAction.AsNull : CoercionAction.Fail;
                }
                if (i4 != 2) {
                    if (i4 == 3 && logicalType == LogicalType.Enum && deserializationConfig.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                        return CoercionAction.Fail;
                    }
                } else if (logicalType == LogicalType.Integer) {
                    return deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT) ? CoercionAction.TryConvert : CoercionAction.Fail;
                }
                boolean b10 = b(logicalType);
                if (b10 && !deserializationConfig.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
                    return CoercionAction.Fail;
                }
                if (coercionInputShape == CoercionInputShape.EmptyString) {
                    if (!b10 && !deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
                        if (logicalType == LogicalType.OtherScalar) {
                            return CoercionAction.TryConvert;
                        }
                        return CoercionAction.Fail;
                    }
                    return CoercionAction.AsNull;
                }
                return this.f14488a;
            }
            return findAction;
        }
        return findAction2;
    }

    public CoercionAction findCoercionFromBlankString(DeserializationConfig deserializationConfig, LogicalType logicalType, Class<?> cls, CoercionAction coercionAction) {
        CoercionAction coercionAction2;
        MutableCoercionConfig mutableCoercionConfig;
        MutableCoercionConfig mutableCoercionConfig2;
        Map<Class<?>, MutableCoercionConfig> map = this.f14491d;
        Boolean bool = null;
        if (map == null || cls == null || (mutableCoercionConfig2 = map.get(cls)) == null) {
            coercionAction2 = null;
        } else {
            bool = mutableCoercionConfig2.getAcceptBlankAsEmpty();
            coercionAction2 = mutableCoercionConfig2.findAction(CoercionInputShape.EmptyString);
        }
        MutableCoercionConfig[] mutableCoercionConfigArr = this.f14490c;
        if (mutableCoercionConfigArr != null && logicalType != null && (mutableCoercionConfig = mutableCoercionConfigArr[logicalType.ordinal()]) != null) {
            if (bool == null) {
                bool = mutableCoercionConfig.getAcceptBlankAsEmpty();
            }
            if (coercionAction2 == null) {
                coercionAction2 = mutableCoercionConfig.findAction(CoercionInputShape.EmptyString);
            }
        }
        if (bool == null) {
            bool = this.f14489b.getAcceptBlankAsEmpty();
        }
        if (coercionAction2 == null) {
            coercionAction2 = this.f14489b.findAction(CoercionInputShape.EmptyString);
        }
        if (Boolean.FALSE.equals(bool)) {
            return coercionAction;
        }
        if (coercionAction2 != null) {
            return coercionAction2;
        }
        if (b(logicalType)) {
            return CoercionAction.AsNull;
        }
        return deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) ? CoercionAction.AsNull : coercionAction;
    }

    public MutableCoercionConfig findOrCreateCoercion(LogicalType logicalType) {
        if (this.f14490c == null) {
            this.f14490c = new MutableCoercionConfig[f14487f];
        }
        MutableCoercionConfig mutableCoercionConfig = this.f14490c[logicalType.ordinal()];
        if (mutableCoercionConfig == null) {
            MutableCoercionConfig[] mutableCoercionConfigArr = this.f14490c;
            int ordinal = logicalType.ordinal();
            MutableCoercionConfig mutableCoercionConfig2 = new MutableCoercionConfig();
            mutableCoercionConfigArr[ordinal] = mutableCoercionConfig2;
            return mutableCoercionConfig2;
        }
        return mutableCoercionConfig;
    }

    protected CoercionConfigs(CoercionAction coercionAction, MutableCoercionConfig mutableCoercionConfig, MutableCoercionConfig[] mutableCoercionConfigArr, Map<Class<?>, MutableCoercionConfig> map) {
        this.f14489b = mutableCoercionConfig;
        this.f14488a = coercionAction;
        this.f14490c = mutableCoercionConfigArr;
        this.f14491d = map;
    }

    public MutableCoercionConfig findOrCreateCoercion(Class<?> cls) {
        if (this.f14491d == null) {
            this.f14491d = new HashMap();
        }
        MutableCoercionConfig mutableCoercionConfig = this.f14491d.get(cls);
        if (mutableCoercionConfig == null) {
            MutableCoercionConfig mutableCoercionConfig2 = new MutableCoercionConfig();
            this.f14491d.put(cls, mutableCoercionConfig2);
            return mutableCoercionConfig2;
        }
        return mutableCoercionConfig;
    }
}
