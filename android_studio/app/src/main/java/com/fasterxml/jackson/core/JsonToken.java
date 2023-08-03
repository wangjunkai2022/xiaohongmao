package com.fasterxml.jackson.core;

/* loaded from: classes.dex */
public enum JsonToken {
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    END_OBJECT(com.alipay.sdk.util.i.f6967d, 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE("false", 10),
    VALUE_NULL("null", 11);
    

    /* renamed from: a  reason: collision with root package name */
    final String f13725a;

    /* renamed from: b  reason: collision with root package name */
    final char[] f13726b;

    /* renamed from: c  reason: collision with root package name */
    final byte[] f13727c;

    /* renamed from: d  reason: collision with root package name */
    final int f13728d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f13729e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f13730f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f13731g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f13732h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f13733i;

    JsonToken(String str, int i4) {
        boolean z9 = false;
        if (str == null) {
            this.f13725a = null;
            this.f13726b = null;
            this.f13727c = null;
        } else {
            this.f13725a = str;
            char[] charArray = str.toCharArray();
            this.f13726b = charArray;
            int length = charArray.length;
            this.f13727c = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                this.f13727c[i10] = (byte) this.f13726b[i10];
            }
        }
        this.f13728d = i4;
        this.f13732h = i4 == 10 || i4 == 9;
        this.f13731g = i4 == 7 || i4 == 8;
        boolean z10 = i4 == 1 || i4 == 3;
        this.f13729e = z10;
        boolean z11 = i4 == 2 || i4 == 4;
        this.f13730f = z11;
        if (!z10 && !z11 && i4 != 5 && i4 != -1) {
            z9 = true;
        }
        this.f13733i = z9;
    }

    public final byte[] asByteArray() {
        return this.f13727c;
    }

    public final char[] asCharArray() {
        return this.f13726b;
    }

    public final String asString() {
        return this.f13725a;
    }

    public final int id() {
        return this.f13728d;
    }

    public final boolean isBoolean() {
        return this.f13732h;
    }

    public final boolean isNumeric() {
        return this.f13731g;
    }

    public final boolean isScalarValue() {
        return this.f13733i;
    }

    public final boolean isStructEnd() {
        return this.f13730f;
    }

    public final boolean isStructStart() {
        return this.f13729e;
    }
}
