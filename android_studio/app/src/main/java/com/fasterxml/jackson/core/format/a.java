package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.format.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

/* compiled from: DataFormatDetector.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public static final int f13864e = 64;

    /* renamed from: a  reason: collision with root package name */
    protected final JsonFactory[] f13865a;

    /* renamed from: b  reason: collision with root package name */
    protected final MatchStrength f13866b;

    /* renamed from: c  reason: collision with root package name */
    protected final MatchStrength f13867c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f13868d;

    public a(JsonFactory... jsonFactoryArr) {
        this(jsonFactoryArr, MatchStrength.SOLID_MATCH, MatchStrength.WEAK_MATCH, 64);
    }

    private b a(c.a aVar) throws IOException {
        JsonFactory[] jsonFactoryArr = this.f13865a;
        int length = jsonFactoryArr.length;
        JsonFactory jsonFactory = null;
        MatchStrength matchStrength = null;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            JsonFactory jsonFactory2 = jsonFactoryArr[i4];
            aVar.reset();
            MatchStrength hasFormat = jsonFactory2.hasFormat(aVar);
            if (hasFormat != null && hasFormat.ordinal() >= this.f13867c.ordinal() && (jsonFactory == null || matchStrength.ordinal() < hasFormat.ordinal())) {
                if (hasFormat.ordinal() >= this.f13866b.ordinal()) {
                    jsonFactory = jsonFactory2;
                    matchStrength = hasFormat;
                    break;
                }
                jsonFactory = jsonFactory2;
                matchStrength = hasFormat;
            }
            i4++;
        }
        return aVar.b(jsonFactory, matchStrength);
    }

    public b b(InputStream inputStream) throws IOException {
        return a(new c.a(inputStream, new byte[this.f13868d]));
    }

    public b c(byte[] bArr) throws IOException {
        return a(new c.a(bArr));
    }

    public b d(byte[] bArr, int i4, int i10) throws IOException {
        return a(new c.a(bArr, i4, i10));
    }

    public a e(int i4) {
        return i4 == this.f13868d ? this : new a(this.f13865a, this.f13866b, this.f13867c, i4);
    }

    public a f(MatchStrength matchStrength) {
        return matchStrength == this.f13867c ? this : new a(this.f13865a, this.f13866b, matchStrength, this.f13868d);
    }

    public a g(MatchStrength matchStrength) {
        return matchStrength == this.f13866b ? this : new a(this.f13865a, matchStrength, this.f13867c, this.f13868d);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        JsonFactory[] jsonFactoryArr = this.f13865a;
        int length = jsonFactoryArr.length;
        if (length > 0) {
            sb.append(jsonFactoryArr[0].getFormatName());
            for (int i4 = 1; i4 < length; i4++) {
                sb.append(", ");
                sb.append(this.f13865a[i4].getFormatName());
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public a(Collection<JsonFactory> collection) {
        this((JsonFactory[]) collection.toArray(new JsonFactory[0]));
    }

    private a(JsonFactory[] jsonFactoryArr, MatchStrength matchStrength, MatchStrength matchStrength2, int i4) {
        this.f13865a = jsonFactoryArr;
        this.f13866b = matchStrength;
        this.f13867c = matchStrength2;
        this.f13868d = i4;
    }
}
