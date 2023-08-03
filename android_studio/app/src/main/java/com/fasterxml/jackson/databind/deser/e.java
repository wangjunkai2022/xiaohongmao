package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.format.c;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

/* compiled from: DataFormatReaders.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: e  reason: collision with root package name */
    public static final int f14675e = 64;

    /* renamed from: a  reason: collision with root package name */
    protected final ObjectReader[] f14676a;

    /* renamed from: b  reason: collision with root package name */
    protected final MatchStrength f14677b;

    /* renamed from: c  reason: collision with root package name */
    protected final MatchStrength f14678c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f14679d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: DataFormatReaders.java */
    /* loaded from: classes.dex */
    public static class a extends c.a {
        public a(InputStream inputStream, byte[] bArr) {
            super(inputStream, bArr);
        }

        public b c(ObjectReader objectReader, MatchStrength matchStrength) {
            InputStream inputStream = this.f13875a;
            byte[] bArr = this.f13876b;
            int i4 = this.f13877c;
            return new b(inputStream, bArr, i4, this.f13878d - i4, objectReader, matchStrength);
        }

        public a(byte[] bArr) {
            super(bArr);
        }

        public a(byte[] bArr, int i4, int i10) {
            super(bArr, i4, i10);
        }
    }

    /* compiled from: DataFormatReaders.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        protected final InputStream f14680a;

        /* renamed from: b  reason: collision with root package name */
        protected final byte[] f14681b;

        /* renamed from: c  reason: collision with root package name */
        protected final int f14682c;

        /* renamed from: d  reason: collision with root package name */
        protected final int f14683d;

        /* renamed from: e  reason: collision with root package name */
        protected final ObjectReader f14684e;

        /* renamed from: f  reason: collision with root package name */
        protected final MatchStrength f14685f;

        protected b(InputStream inputStream, byte[] bArr, int i4, int i10, ObjectReader objectReader, MatchStrength matchStrength) {
            this.f14680a = inputStream;
            this.f14681b = bArr;
            this.f14682c = i4;
            this.f14683d = i10;
            this.f14684e = objectReader;
            this.f14685f = matchStrength;
        }

        public JsonParser a() throws IOException {
            ObjectReader objectReader = this.f14684e;
            if (objectReader == null) {
                return null;
            }
            JsonFactory factory = objectReader.getFactory();
            if (this.f14680a == null) {
                return factory.createParser(this.f14681b, this.f14682c, this.f14683d);
            }
            return factory.createParser(b());
        }

        public InputStream b() {
            if (this.f14680a == null) {
                return new ByteArrayInputStream(this.f14681b, this.f14682c, this.f14683d);
            }
            return new com.fasterxml.jackson.core.io.f(null, this.f14680a, this.f14681b, this.f14682c, this.f14683d);
        }

        public MatchStrength c() {
            MatchStrength matchStrength = this.f14685f;
            return matchStrength == null ? MatchStrength.INCONCLUSIVE : matchStrength;
        }

        public String d() {
            return this.f14684e.getFactory().getFormatName();
        }

        public ObjectReader e() {
            return this.f14684e;
        }

        public boolean f() {
            return this.f14684e != null;
        }
    }

    public e(ObjectReader... objectReaderArr) {
        this(objectReaderArr, MatchStrength.SOLID_MATCH, MatchStrength.WEAK_MATCH, 64);
    }

    private b a(a aVar) throws IOException {
        ObjectReader[] objectReaderArr = this.f14676a;
        int length = objectReaderArr.length;
        ObjectReader objectReader = null;
        MatchStrength matchStrength = null;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            ObjectReader objectReader2 = objectReaderArr[i4];
            aVar.reset();
            MatchStrength hasFormat = objectReader2.getFactory().hasFormat(aVar);
            if (hasFormat != null && hasFormat.ordinal() >= this.f14678c.ordinal() && (objectReader == null || matchStrength.ordinal() < hasFormat.ordinal())) {
                if (hasFormat.ordinal() >= this.f14677b.ordinal()) {
                    objectReader = objectReader2;
                    matchStrength = hasFormat;
                    break;
                }
                objectReader = objectReader2;
                matchStrength = hasFormat;
            }
            i4++;
        }
        return aVar.c(objectReader, matchStrength);
    }

    public b b(InputStream inputStream) throws IOException {
        return a(new a(inputStream, new byte[this.f14679d]));
    }

    public b c(byte[] bArr) throws IOException {
        return a(new a(bArr));
    }

    public b d(byte[] bArr, int i4, int i10) throws IOException {
        return a(new a(bArr, i4, i10));
    }

    public e e(DeserializationConfig deserializationConfig) {
        int length = this.f14676a.length;
        ObjectReader[] objectReaderArr = new ObjectReader[length];
        for (int i4 = 0; i4 < length; i4++) {
            objectReaderArr[i4] = this.f14676a[i4].with(deserializationConfig);
        }
        return new e(objectReaderArr, this.f14677b, this.f14678c, this.f14679d);
    }

    public e f(ObjectReader[] objectReaderArr) {
        return new e(objectReaderArr, this.f14677b, this.f14678c, this.f14679d);
    }

    public e g(int i4) {
        return i4 == this.f14679d ? this : new e(this.f14676a, this.f14677b, this.f14678c, i4);
    }

    public e h(MatchStrength matchStrength) {
        return matchStrength == this.f14678c ? this : new e(this.f14676a, this.f14677b, matchStrength, this.f14679d);
    }

    public e i(MatchStrength matchStrength) {
        return matchStrength == this.f14677b ? this : new e(this.f14676a, matchStrength, this.f14678c, this.f14679d);
    }

    public e j(JavaType javaType) {
        int length = this.f14676a.length;
        ObjectReader[] objectReaderArr = new ObjectReader[length];
        for (int i4 = 0; i4 < length; i4++) {
            objectReaderArr[i4] = this.f14676a[i4].forType(javaType);
        }
        return new e(objectReaderArr, this.f14677b, this.f14678c, this.f14679d);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        ObjectReader[] objectReaderArr = this.f14676a;
        int length = objectReaderArr.length;
        if (length > 0) {
            sb.append(objectReaderArr[0].getFactory().getFormatName());
            for (int i4 = 1; i4 < length; i4++) {
                sb.append(", ");
                sb.append(this.f14676a[i4].getFactory().getFormatName());
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public e(Collection<ObjectReader> collection) {
        this((ObjectReader[]) collection.toArray(new ObjectReader[collection.size()]));
    }

    private e(ObjectReader[] objectReaderArr, MatchStrength matchStrength, MatchStrength matchStrength2, int i4) {
        this.f14676a = objectReaderArr;
        this.f14677b = matchStrength;
        this.f14678c = matchStrength2;
        this.f14679d = i4;
    }
}
