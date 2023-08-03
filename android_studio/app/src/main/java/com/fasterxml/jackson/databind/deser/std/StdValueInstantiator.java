package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.util.g;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;

@c2.a
/* loaded from: classes.dex */
public class StdValueInstantiator extends ValueInstantiator implements Serializable {

    /* renamed from: s  reason: collision with root package name */
    private static final long f15014s = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final String f15015a;

    /* renamed from: b  reason: collision with root package name */
    protected final Class<?> f15016b;

    /* renamed from: c  reason: collision with root package name */
    protected AnnotatedWithParams f15017c;

    /* renamed from: d  reason: collision with root package name */
    protected AnnotatedWithParams f15018d;

    /* renamed from: e  reason: collision with root package name */
    protected SettableBeanProperty[] f15019e;

    /* renamed from: f  reason: collision with root package name */
    protected JavaType f15020f;

    /* renamed from: g  reason: collision with root package name */
    protected AnnotatedWithParams f15021g;

    /* renamed from: h  reason: collision with root package name */
    protected SettableBeanProperty[] f15022h;

    /* renamed from: i  reason: collision with root package name */
    protected JavaType f15023i;

    /* renamed from: j  reason: collision with root package name */
    protected AnnotatedWithParams f15024j;

    /* renamed from: k  reason: collision with root package name */
    protected SettableBeanProperty[] f15025k;

    /* renamed from: l  reason: collision with root package name */
    protected AnnotatedWithParams f15026l;

    /* renamed from: m  reason: collision with root package name */
    protected AnnotatedWithParams f15027m;

    /* renamed from: n  reason: collision with root package name */
    protected AnnotatedWithParams f15028n;

    /* renamed from: o  reason: collision with root package name */
    protected AnnotatedWithParams f15029o;

    /* renamed from: p  reason: collision with root package name */
    protected AnnotatedWithParams f15030p;

    /* renamed from: q  reason: collision with root package name */
    protected AnnotatedWithParams f15031q;

    /* renamed from: r  reason: collision with root package name */
    protected AnnotatedWithParams f15032r;

    /* JADX WARN: Incorrect type for immutable var: ssa=java.lang.Class<?>, code=java.lang.Class, for r2v0, types: [java.lang.Class<?>, java.lang.Class] */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StdValueInstantiator(com.fasterxml.jackson.databind.DeserializationConfig r1, java.lang.Class r2) {
        /*
            r0 = this;
            r0.<init>()
            java.lang.String r1 = com.fasterxml.jackson.databind.util.g.j0(r2)
            r0.f15015a = r1
            if (r2 != 0) goto Ld
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
        Ld:
            r0.f15016b = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.StdValueInstantiator.<init>(com.fasterxml.jackson.databind.DeserializationConfig, java.lang.Class):void");
    }

    private Object b(AnnotatedWithParams annotatedWithParams, SettableBeanProperty[] settableBeanPropertyArr, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (annotatedWithParams != null) {
            try {
                if (settableBeanPropertyArr == null) {
                    return annotatedWithParams.call1(obj);
                }
                int length = settableBeanPropertyArr.length;
                Object[] objArr = new Object[length];
                for (int i4 = 0; i4 < length; i4++) {
                    SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i4];
                    if (settableBeanProperty == null) {
                        objArr[i4] = obj;
                    } else {
                        objArr[i4] = deserializationContext.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
                    }
                }
                return annotatedWithParams.call(objArr);
            } catch (Throwable th) {
                throw c(deserializationContext, th);
            }
        }
        throw new IllegalStateException("No delegate constructor for " + getValueTypeDesc());
    }

    static Double d(BigDecimal bigDecimal) {
        double doubleValue = bigDecimal.doubleValue();
        if (Double.isInfinite(doubleValue)) {
            return null;
        }
        return Double.valueOf(doubleValue);
    }

    protected JsonMappingException c(DeserializationContext deserializationContext, Throwable th) {
        Throwable cause;
        if (((th instanceof ExceptionInInitializerError) || (th instanceof InvocationTargetException)) && (cause = th.getCause()) != null) {
            th = cause;
        }
        return h(deserializationContext, th);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromBigDecimal() {
        return this.f15031q != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromBigInteger() {
        return this.f15029o != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromBoolean() {
        return this.f15032r != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromDouble() {
        return this.f15030p != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromInt() {
        return this.f15027m != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromLong() {
        return this.f15028n != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromObjectWith() {
        return this.f15018d != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateFromString() {
        return this.f15026l != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateUsingArrayDelegate() {
        return this.f15023i != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateUsingDefault() {
        return this.f15017c != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canCreateUsingDelegate() {
        return this.f15020f != null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public boolean canInstantiate() {
        return canCreateUsingDefault() || canCreateUsingDelegate() || canCreateUsingArrayDelegate() || canCreateFromObjectWith() || canCreateFromString() || canCreateFromInt() || canCreateFromLong() || canCreateFromDouble() || canCreateFromBoolean();
    }

    public void configureFromArraySettings(AnnotatedWithParams annotatedWithParams, JavaType javaType, SettableBeanProperty[] settableBeanPropertyArr) {
        this.f15024j = annotatedWithParams;
        this.f15023i = javaType;
        this.f15025k = settableBeanPropertyArr;
    }

    public void configureFromBigDecimalCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15031q = annotatedWithParams;
    }

    public void configureFromBigIntegerCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15029o = annotatedWithParams;
    }

    public void configureFromBooleanCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15032r = annotatedWithParams;
    }

    public void configureFromDoubleCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15030p = annotatedWithParams;
    }

    public void configureFromIntCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15027m = annotatedWithParams;
    }

    public void configureFromLongCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15028n = annotatedWithParams;
    }

    public void configureFromObjectSettings(AnnotatedWithParams annotatedWithParams, AnnotatedWithParams annotatedWithParams2, JavaType javaType, SettableBeanProperty[] settableBeanPropertyArr, AnnotatedWithParams annotatedWithParams3, SettableBeanProperty[] settableBeanPropertyArr2) {
        this.f15017c = annotatedWithParams;
        this.f15021g = annotatedWithParams2;
        this.f15020f = javaType;
        this.f15022h = settableBeanPropertyArr;
        this.f15018d = annotatedWithParams3;
        this.f15019e = settableBeanPropertyArr2;
    }

    public void configureFromStringCreator(AnnotatedWithParams annotatedWithParams) {
        this.f15026l = annotatedWithParams;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromBigDecimal(DeserializationContext deserializationContext, BigDecimal bigDecimal) throws IOException {
        Double d4;
        AnnotatedWithParams annotatedWithParams = this.f15031q;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call1(bigDecimal);
            } catch (Throwable th) {
                return deserializationContext.handleInstantiationProblem(this.f15031q.getDeclaringClass(), bigDecimal, c(deserializationContext, th));
            }
        } else if (this.f15030p != null && (d4 = d(bigDecimal)) != null) {
            try {
                return this.f15030p.call1(d4);
            } catch (Throwable th2) {
                return deserializationContext.handleInstantiationProblem(this.f15030p.getDeclaringClass(), d4, c(deserializationContext, th2));
            }
        } else {
            return super.createFromBigDecimal(deserializationContext, bigDecimal);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromBigInteger(DeserializationContext deserializationContext, BigInteger bigInteger) throws IOException {
        AnnotatedWithParams annotatedWithParams = this.f15029o;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call1(bigInteger);
            } catch (Throwable th) {
                return deserializationContext.handleInstantiationProblem(this.f15029o.getDeclaringClass(), bigInteger, c(deserializationContext, th));
            }
        }
        return super.createFromBigInteger(deserializationContext, bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z9) throws IOException {
        if (this.f15032r == null) {
            return super.createFromBoolean(deserializationContext, z9);
        }
        Boolean valueOf = Boolean.valueOf(z9);
        try {
            return this.f15032r.call1(valueOf);
        } catch (Throwable th) {
            return deserializationContext.handleInstantiationProblem(this.f15032r.getDeclaringClass(), valueOf, c(deserializationContext, th));
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromDouble(DeserializationContext deserializationContext, double d4) throws IOException {
        if (this.f15030p != null) {
            Double valueOf = Double.valueOf(d4);
            try {
                return this.f15030p.call1(valueOf);
            } catch (Throwable th) {
                return deserializationContext.handleInstantiationProblem(this.f15030p.getDeclaringClass(), valueOf, c(deserializationContext, th));
            }
        } else if (this.f15031q != null) {
            BigDecimal valueOf2 = BigDecimal.valueOf(d4);
            try {
                return this.f15031q.call1(valueOf2);
            } catch (Throwable th2) {
                return deserializationContext.handleInstantiationProblem(this.f15031q.getDeclaringClass(), valueOf2, c(deserializationContext, th2));
            }
        } else {
            return super.createFromDouble(deserializationContext, d4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromInt(DeserializationContext deserializationContext, int i4) throws IOException {
        if (this.f15027m != null) {
            Integer valueOf = Integer.valueOf(i4);
            try {
                return this.f15027m.call1(valueOf);
            } catch (Throwable th) {
                return deserializationContext.handleInstantiationProblem(this.f15027m.getDeclaringClass(), valueOf, c(deserializationContext, th));
            }
        } else if (this.f15028n != null) {
            Long valueOf2 = Long.valueOf(i4);
            try {
                return this.f15028n.call1(valueOf2);
            } catch (Throwable th2) {
                return deserializationContext.handleInstantiationProblem(this.f15028n.getDeclaringClass(), valueOf2, c(deserializationContext, th2));
            }
        } else if (this.f15029o != null) {
            BigInteger valueOf3 = BigInteger.valueOf(i4);
            try {
                return this.f15029o.call1(valueOf3);
            } catch (Throwable th3) {
                return deserializationContext.handleInstantiationProblem(this.f15029o.getDeclaringClass(), valueOf3, c(deserializationContext, th3));
            }
        } else {
            return super.createFromInt(deserializationContext, i4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromLong(DeserializationContext deserializationContext, long j4) throws IOException {
        if (this.f15028n != null) {
            Long valueOf = Long.valueOf(j4);
            try {
                return this.f15028n.call1(valueOf);
            } catch (Throwable th) {
                return deserializationContext.handleInstantiationProblem(this.f15028n.getDeclaringClass(), valueOf, c(deserializationContext, th));
            }
        } else if (this.f15029o != null) {
            BigInteger valueOf2 = BigInteger.valueOf(j4);
            try {
                return this.f15029o.call1(valueOf2);
            } catch (Throwable th2) {
                return deserializationContext.handleInstantiationProblem(this.f15029o.getDeclaringClass(), valueOf2, c(deserializationContext, th2));
            }
        } else {
            return super.createFromLong(deserializationContext, j4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        AnnotatedWithParams annotatedWithParams = this.f15018d;
        if (annotatedWithParams == null) {
            return super.createFromObjectWith(deserializationContext, objArr);
        }
        try {
            return annotatedWithParams.call(objArr);
        } catch (Exception e4) {
            return deserializationContext.handleInstantiationProblem(this.f15016b, objArr, c(deserializationContext, e4));
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        AnnotatedWithParams annotatedWithParams = this.f15026l;
        if (annotatedWithParams != null) {
            try {
                return annotatedWithParams.call1(str);
            } catch (Throwable th) {
                return deserializationContext.handleInstantiationProblem(this.f15026l.getDeclaringClass(), str, c(deserializationContext, th));
            }
        }
        return super.createFromString(deserializationContext, str);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createUsingArrayDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        AnnotatedWithParams annotatedWithParams = this.f15024j;
        if (annotatedWithParams == null && this.f15021g != null) {
            return createUsingDelegate(deserializationContext, obj);
        }
        return b(annotatedWithParams, this.f15025k, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        AnnotatedWithParams annotatedWithParams = this.f15017c;
        if (annotatedWithParams == null) {
            return super.createUsingDefault(deserializationContext);
        }
        try {
            return annotatedWithParams.call();
        } catch (Exception e4) {
            return deserializationContext.handleInstantiationProblem(this.f15016b, null, c(deserializationContext, e4));
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        AnnotatedWithParams annotatedWithParams;
        AnnotatedWithParams annotatedWithParams2 = this.f15021g;
        if (annotatedWithParams2 == null && (annotatedWithParams = this.f15024j) != null) {
            return b(annotatedWithParams, this.f15025k, deserializationContext, obj);
        }
        return b(annotatedWithParams2, this.f15022h, deserializationContext, obj);
    }

    @Deprecated
    protected JsonMappingException e(DeserializationContext deserializationContext, Throwable th) {
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof JsonMappingException) {
                return (JsonMappingException) th2;
            }
        }
        return deserializationContext.instantiationException(getValueClass(), th);
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getArrayDelegateCreator() {
        return this.f15024j;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public JavaType getArrayDelegateType(DeserializationConfig deserializationConfig) {
        return this.f15023i;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getDefaultCreator() {
        return this.f15017c;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getDelegateCreator() {
        return this.f15021g;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return this.f15020f;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return this.f15019e;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public Class<?> getValueClass() {
        return this.f15016b;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public String getValueTypeDesc() {
        return this.f15015a;
    }

    @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
    public AnnotatedWithParams getWithArgsCreator() {
        return this.f15018d;
    }

    protected JsonMappingException h(DeserializationContext deserializationContext, Throwable th) {
        if (th instanceof JsonMappingException) {
            return (JsonMappingException) th;
        }
        return deserializationContext.instantiationException(getValueClass(), th);
    }

    @Deprecated
    protected JsonMappingException i(Throwable th) {
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof JsonMappingException) {
                return (JsonMappingException) th2;
            }
        }
        return new JsonMappingException((Closeable) null, "Instantiation of " + getValueTypeDesc() + " value failed: " + g.q(th), th);
    }

    public StdValueInstantiator(DeserializationConfig deserializationConfig, JavaType javaType) {
        this.f15015a = javaType == null ? "UNKNOWN TYPE" : javaType.toString();
        this.f15016b = javaType == null ? Object.class : javaType.getRawClass();
    }

    protected StdValueInstantiator(StdValueInstantiator stdValueInstantiator) {
        this.f15015a = stdValueInstantiator.f15015a;
        this.f15016b = stdValueInstantiator.f15016b;
        this.f15017c = stdValueInstantiator.f15017c;
        this.f15019e = stdValueInstantiator.f15019e;
        this.f15018d = stdValueInstantiator.f15018d;
        this.f15020f = stdValueInstantiator.f15020f;
        this.f15021g = stdValueInstantiator.f15021g;
        this.f15022h = stdValueInstantiator.f15022h;
        this.f15023i = stdValueInstantiator.f15023i;
        this.f15024j = stdValueInstantiator.f15024j;
        this.f15025k = stdValueInstantiator.f15025k;
        this.f15026l = stdValueInstantiator.f15026l;
        this.f15027m = stdValueInstantiator.f15027m;
        this.f15028n = stdValueInstantiator.f15028n;
        this.f15029o = stdValueInstantiator.f15029o;
        this.f15030p = stdValueInstantiator.f15030p;
        this.f15031q = stdValueInstantiator.f15031q;
        this.f15032r = stdValueInstantiator.f15032r;
    }
}
