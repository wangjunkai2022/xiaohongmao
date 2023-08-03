package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.n;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.c;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: SequenceWriter.java */
/* loaded from: classes.dex */
public class k implements n, Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    protected final DefaultSerializerProvider f15472a;

    /* renamed from: b  reason: collision with root package name */
    protected final SerializationConfig f15473b;

    /* renamed from: c  reason: collision with root package name */
    protected final JsonGenerator f15474c;

    /* renamed from: d  reason: collision with root package name */
    protected final g<Object> f15475d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.f f15476e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15477f;

    /* renamed from: g  reason: collision with root package name */
    protected final boolean f15478g;

    /* renamed from: h  reason: collision with root package name */
    protected final boolean f15479h;

    /* renamed from: i  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.ser.impl.c f15480i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f15481j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f15482k;

    public k(DefaultSerializerProvider defaultSerializerProvider, JsonGenerator jsonGenerator, boolean z9, ObjectWriter.Prefetch prefetch) throws IOException {
        this.f15472a = defaultSerializerProvider;
        this.f15474c = jsonGenerator;
        this.f15477f = z9;
        this.f15475d = prefetch.getValueSerializer();
        this.f15476e = prefetch.getTypeSerializer();
        SerializationConfig config = defaultSerializerProvider.getConfig();
        this.f15473b = config;
        this.f15478g = config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE);
        this.f15479h = config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE);
        this.f15480i = com.fasterxml.jackson.databind.ser.impl.c.d();
    }

    private final g<Object> a(JavaType javaType) throws JsonMappingException {
        c.d a10;
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15476e;
        if (fVar == null) {
            a10 = this.f15480i.h(javaType, this.f15472a);
        } else {
            a10 = this.f15480i.a(javaType, new com.fasterxml.jackson.databind.ser.impl.e(fVar, this.f15472a.findValueSerializer(javaType, (BeanProperty) null)));
        }
        this.f15480i = a10.f15708b;
        return a10.f15707a;
    }

    private final g<Object> b(Class<?> cls) throws JsonMappingException {
        c.d b10;
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15476e;
        if (fVar == null) {
            b10 = this.f15480i.i(cls, this.f15472a);
        } else {
            b10 = this.f15480i.b(cls, new com.fasterxml.jackson.databind.ser.impl.e(fVar, this.f15472a.findValueSerializer(cls, (BeanProperty) null)));
        }
        this.f15480i = b10.f15708b;
        return b10.f15707a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f15482k) {
            return;
        }
        this.f15482k = true;
        if (this.f15481j) {
            this.f15481j = false;
            this.f15474c.R0();
        }
        if (this.f15477f) {
            this.f15474c.close();
        }
    }

    protected k d(Object obj) throws IOException {
        Closeable closeable = (Closeable) obj;
        try {
            g<Object> gVar = this.f15475d;
            if (gVar == null) {
                Class<?> cls = obj.getClass();
                g<Object> m9 = this.f15480i.m(cls);
                gVar = m9 == null ? b(cls) : m9;
            }
            this.f15472a.serializeValue(this.f15474c, obj, null, gVar);
            if (this.f15478g) {
                this.f15474c.flush();
            }
            try {
                closeable.close();
                return this;
            } catch (Throwable th) {
                th = th;
                closeable = null;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f15482k) {
            return;
        }
        this.f15474c.flush();
    }

    protected k h(Object obj, JavaType javaType) throws IOException {
        Closeable closeable = (Closeable) obj;
        try {
            g<Object> m9 = this.f15480i.m(javaType.getRawClass());
            if (m9 == null) {
                m9 = a(javaType);
            }
            this.f15472a.serializeValue(this.f15474c, obj, javaType, m9);
            if (this.f15478g) {
                this.f15474c.flush();
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            closeable.close();
            return this;
        } catch (Throwable th2) {
            closeable = null;
            th = th2;
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException unused) {
                }
            }
            throw th;
        }
    }

    public k i(boolean z9) throws IOException {
        if (z9) {
            this.f15474c.G1();
            this.f15481j = true;
        }
        return this;
    }

    public k k(Object obj) throws IOException {
        if (obj == null) {
            this.f15472a.serializeValue(this.f15474c, null);
            return this;
        } else if (this.f15479h && (obj instanceof Closeable)) {
            return d(obj);
        } else {
            g<Object> gVar = this.f15475d;
            if (gVar == null) {
                Class<?> cls = obj.getClass();
                g<Object> m9 = this.f15480i.m(cls);
                gVar = m9 == null ? b(cls) : m9;
            }
            this.f15472a.serializeValue(this.f15474c, obj, null, gVar);
            if (this.f15478g) {
                this.f15474c.flush();
            }
            return this;
        }
    }

    public k p(Object obj, JavaType javaType) throws IOException {
        if (obj == null) {
            this.f15472a.serializeValue(this.f15474c, null);
            return this;
        } else if (this.f15479h && (obj instanceof Closeable)) {
            return h(obj, javaType);
        } else {
            g<Object> m9 = this.f15480i.m(javaType.getRawClass());
            if (m9 == null) {
                m9 = a(javaType);
            }
            this.f15472a.serializeValue(this.f15474c, obj, javaType, m9);
            if (this.f15478g) {
                this.f15474c.flush();
            }
            return this;
        }
    }

    public k q(Iterable<?> iterable) throws IOException {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            k(it.next());
        }
        return this;
    }

    public <C extends Collection<?>> k r(C c10) throws IOException {
        for (Object obj : c10) {
            k(obj);
        }
        return this;
    }

    public k s(Object[] objArr) throws IOException {
        for (Object obj : objArr) {
            k(obj);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }
}
