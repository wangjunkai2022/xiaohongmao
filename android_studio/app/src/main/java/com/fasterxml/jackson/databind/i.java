package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: MappingIterator.java */
/* loaded from: classes.dex */
public class i<T> implements Iterator<T>, Closeable {

    /* renamed from: i  reason: collision with root package name */
    protected static final i<?> f15130i = new i<>(null, null, null, null, false, null);

    /* renamed from: j  reason: collision with root package name */
    protected static final int f15131j = 0;

    /* renamed from: k  reason: collision with root package name */
    protected static final int f15132k = 1;

    /* renamed from: l  reason: collision with root package name */
    protected static final int f15133l = 2;

    /* renamed from: m  reason: collision with root package name */
    protected static final int f15134m = 3;

    /* renamed from: a  reason: collision with root package name */
    protected final JavaType f15135a;

    /* renamed from: b  reason: collision with root package name */
    protected final DeserializationContext f15136b;

    /* renamed from: c  reason: collision with root package name */
    protected final d<T> f15137c;

    /* renamed from: d  reason: collision with root package name */
    protected final JsonParser f15138d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.f f15139e;

    /* renamed from: f  reason: collision with root package name */
    protected final T f15140f;

    /* renamed from: g  reason: collision with root package name */
    protected final boolean f15141g;

    /* renamed from: h  reason: collision with root package name */
    protected int f15142h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public i(JavaType javaType, JsonParser jsonParser, DeserializationContext deserializationContext, d<?> dVar, boolean z9, Object obj) {
        this.f15135a = javaType;
        this.f15138d = jsonParser;
        this.f15136b = deserializationContext;
        this.f15137c = dVar;
        this.f15141g = z9;
        if (obj == 0) {
            this.f15140f = null;
        } else {
            this.f15140f = obj;
        }
        if (jsonParser == null) {
            this.f15139e = null;
            this.f15142h = 0;
            return;
        }
        com.fasterxml.jackson.core.f N0 = jsonParser.N0();
        if (z9 && jsonParser.p1()) {
            jsonParser.J();
        } else {
            JsonToken W = jsonParser.W();
            if (W == JsonToken.START_OBJECT || W == JsonToken.START_ARRAY) {
                N0 = N0.e();
            }
        }
        this.f15139e = N0;
        this.f15142h = 2;
    }

    public static <T> i<T> i() {
        return (i<T>) f15130i;
    }

    public List<T> A() throws IOException {
        return D(new ArrayList());
    }

    public <L extends List<? super T>> L D(L l10) throws IOException {
        while (r()) {
            l10.add(s());
        }
        return l10;
    }

    protected <R> R a(IOException iOException) {
        throw new RuntimeException(iOException.getMessage(), iOException);
    }

    protected <R> R b(JsonMappingException jsonMappingException) {
        throw new RuntimeJsonMappingException(jsonMappingException.getMessage(), jsonMappingException);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f15142h != 0) {
            this.f15142h = 0;
            JsonParser jsonParser = this.f15138d;
            if (jsonParser != null) {
                jsonParser.close();
            }
        }
    }

    protected void d() throws IOException {
        JsonParser jsonParser = this.f15138d;
        if (jsonParser.N0() == this.f15139e) {
            return;
        }
        while (true) {
            JsonToken y12 = jsonParser.y1();
            if (y12 != JsonToken.END_ARRAY && y12 != JsonToken.END_OBJECT) {
                if (y12 == JsonToken.START_ARRAY || y12 == JsonToken.START_OBJECT) {
                    jsonParser.U1();
                } else if (y12 == null) {
                    return;
                }
            } else if (jsonParser.N0() == this.f15139e) {
                jsonParser.J();
                return;
            }
        }
    }

    protected <R> R h() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        try {
            return r();
        } catch (JsonMappingException e4) {
            return ((Boolean) b(e4)).booleanValue();
        } catch (IOException e10) {
            return ((Boolean) a(e10)).booleanValue();
        }
    }

    public JsonLocation k() {
        return this.f15138d.t0();
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            return s();
        } catch (JsonMappingException e4) {
            return (T) b(e4);
        } catch (IOException e10) {
            return (T) a(e10);
        }
    }

    public JsonParser p() {
        return this.f15138d;
    }

    public com.fasterxml.jackson.core.c q() {
        return this.f15138d.P0();
    }

    public boolean r() throws IOException {
        JsonToken y12;
        int i4 = this.f15142h;
        if (i4 != 0) {
            if (i4 == 1) {
                d();
            } else if (i4 != 2) {
                return true;
            }
            JsonParser jsonParser = this.f15138d;
            if (jsonParser == null) {
                return false;
            }
            if (jsonParser.W() == null && ((y12 = this.f15138d.y1()) == null || y12 == JsonToken.END_ARRAY)) {
                this.f15142h = 0;
                if (this.f15141g) {
                    this.f15138d.close();
                }
                return false;
            }
            this.f15142h = 3;
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public T s() throws IOException {
        T t9;
        int i4 = this.f15142h;
        if (i4 != 0) {
            if ((i4 == 1 || i4 == 2) && !r()) {
                return (T) h();
            }
            try {
                T t10 = this.f15140f;
                if (t10 == null) {
                    t9 = this.f15137c.deserialize(this.f15138d, this.f15136b);
                } else {
                    this.f15137c.deserialize(this.f15138d, this.f15136b, t10);
                    t9 = this.f15140f;
                }
                this.f15142h = 2;
                this.f15138d.J();
                return t9;
            } catch (Throwable th) {
                this.f15142h = 1;
                this.f15138d.J();
                throw th;
            }
        }
        return (T) h();
    }

    public <C extends Collection<? super T>> C y(C c10) throws IOException {
        while (r()) {
            c10.add(s());
        }
        return c10;
    }
}
