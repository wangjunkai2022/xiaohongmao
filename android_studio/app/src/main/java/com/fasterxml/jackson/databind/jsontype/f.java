package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.core.util.l;
import com.fasterxml.jackson.databind.BeanProperty;
import java.io.IOException;

/* compiled from: TypeSerializer.java */
/* loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TypeSerializer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15422a;

        static {
            int[] iArr = new int[JsonTypeInfo.As.values().length];
            f15422a = iArr;
            try {
                iArr[JsonTypeInfo.As.EXISTING_PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15422a[JsonTypeInfo.As.EXTERNAL_PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15422a[JsonTypeInfo.As.PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15422a[JsonTypeInfo.As.WRAPPER_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15422a[JsonTypeInfo.As.WRAPPER_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected final void a(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
        writableTypeId.f14228g = !jsonGenerator.D();
        v(jsonGenerator, writableTypeId);
    }

    public abstract f b(BeanProperty beanProperty);

    public abstract String c();

    public abstract c d();

    public abstract JsonTypeInfo.As e();

    public WritableTypeId f(Object obj, JsonToken jsonToken) {
        WritableTypeId writableTypeId = new WritableTypeId(obj, jsonToken);
        int i4 = a.f15422a[e().ordinal()];
        if (i4 == 1) {
            writableTypeId.f14226e = WritableTypeId.Inclusion.PAYLOAD_PROPERTY;
            writableTypeId.f14225d = c();
        } else if (i4 == 2) {
            writableTypeId.f14226e = WritableTypeId.Inclusion.PARENT_PROPERTY;
            writableTypeId.f14225d = c();
        } else if (i4 == 3) {
            writableTypeId.f14226e = WritableTypeId.Inclusion.METADATA_PROPERTY;
            writableTypeId.f14225d = c();
        } else if (i4 == 4) {
            writableTypeId.f14226e = WritableTypeId.Inclusion.WRAPPER_ARRAY;
        } else if (i4 != 5) {
            l.f();
        } else {
            writableTypeId.f14226e = WritableTypeId.Inclusion.WRAPPER_OBJECT;
        }
        return writableTypeId;
    }

    public WritableTypeId g(Object obj, JsonToken jsonToken, Object obj2) {
        WritableTypeId f10 = f(obj, jsonToken);
        f10.f14224c = obj2;
        return f10;
    }

    public WritableTypeId h(Object obj, Class<?> cls, JsonToken jsonToken) {
        WritableTypeId f10 = f(obj, jsonToken);
        f10.f14223b = cls;
        return f10;
    }

    @Deprecated
    public void i(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        o(jsonGenerator, g(obj, JsonToken.START_ARRAY, str));
    }

    @Deprecated
    public void j(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        o(jsonGenerator, g(obj, JsonToken.START_OBJECT, str));
    }

    @Deprecated
    public void k(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        o(jsonGenerator, g(obj, JsonToken.VALUE_STRING, str));
    }

    @Deprecated
    public void l(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        a(jsonGenerator, g(obj, JsonToken.START_ARRAY, str));
    }

    @Deprecated
    public void m(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        a(jsonGenerator, g(obj, JsonToken.START_OBJECT, str));
    }

    @Deprecated
    public void n(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        a(jsonGenerator, g(obj, JsonToken.VALUE_STRING, str));
    }

    public abstract WritableTypeId o(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException;

    @Deprecated
    public void p(Object obj, JsonGenerator jsonGenerator) throws IOException {
        o(jsonGenerator, f(obj, JsonToken.START_ARRAY));
    }

    @Deprecated
    public void q(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        o(jsonGenerator, h(obj, cls, JsonToken.START_ARRAY));
    }

    @Deprecated
    public void r(Object obj, JsonGenerator jsonGenerator) throws IOException {
        o(jsonGenerator, f(obj, JsonToken.START_OBJECT));
    }

    @Deprecated
    public void s(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        o(jsonGenerator, h(obj, cls, JsonToken.START_OBJECT));
    }

    @Deprecated
    public void t(Object obj, JsonGenerator jsonGenerator) throws IOException {
        o(jsonGenerator, f(obj, JsonToken.VALUE_STRING));
    }

    @Deprecated
    public void u(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        o(jsonGenerator, h(obj, cls, JsonToken.VALUE_STRING));
    }

    public abstract WritableTypeId v(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException;

    @Deprecated
    public void w(Object obj, JsonGenerator jsonGenerator) throws IOException {
        a(jsonGenerator, f(obj, JsonToken.START_ARRAY));
    }

    @Deprecated
    public void x(Object obj, JsonGenerator jsonGenerator) throws IOException {
        a(jsonGenerator, f(obj, JsonToken.START_OBJECT));
    }

    @Deprecated
    public void y(Object obj, JsonGenerator jsonGenerator) throws IOException {
        a(jsonGenerator, f(obj, JsonToken.VALUE_STRING));
    }
}
