package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.f;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: DataFormatMatcher.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    protected final InputStream f13869a;

    /* renamed from: b  reason: collision with root package name */
    protected final byte[] f13870b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f13871c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f13872d;

    /* renamed from: e  reason: collision with root package name */
    protected final JsonFactory f13873e;

    /* renamed from: f  reason: collision with root package name */
    protected final MatchStrength f13874f;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(InputStream inputStream, byte[] bArr, int i4, int i10, JsonFactory jsonFactory, MatchStrength matchStrength) {
        this.f13869a = inputStream;
        this.f13870b = bArr;
        this.f13871c = i4;
        this.f13872d = i10;
        this.f13873e = jsonFactory;
        this.f13874f = matchStrength;
        if ((i4 | i10) < 0 || i4 + i10 > bArr.length) {
            throw new IllegalArgumentException(String.format("Illegal start/length (%d/%d) wrt input array of %d bytes", Integer.valueOf(i4), Integer.valueOf(i10), Integer.valueOf(bArr.length)));
        }
    }

    public JsonParser a() throws IOException {
        JsonFactory jsonFactory = this.f13873e;
        if (jsonFactory == null) {
            return null;
        }
        if (this.f13869a == null) {
            return jsonFactory.createParser(this.f13870b, this.f13871c, this.f13872d);
        }
        return jsonFactory.createParser(b());
    }

    public InputStream b() {
        if (this.f13869a == null) {
            return new ByteArrayInputStream(this.f13870b, this.f13871c, this.f13872d);
        }
        return new f(null, this.f13869a, this.f13870b, this.f13871c, this.f13872d);
    }

    public JsonFactory c() {
        return this.f13873e;
    }

    public MatchStrength d() {
        MatchStrength matchStrength = this.f13874f;
        return matchStrength == null ? MatchStrength.INCONCLUSIVE : matchStrength;
    }

    public String e() {
        if (f()) {
            return c().getFormatName();
        }
        return null;
    }

    public boolean f() {
        return this.f13873e != null;
    }
}
