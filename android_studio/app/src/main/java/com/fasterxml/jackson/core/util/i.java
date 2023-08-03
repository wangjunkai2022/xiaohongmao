package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonParserSequence.java */
/* loaded from: classes.dex */
public class i extends h {

    /* renamed from: i  reason: collision with root package name */
    protected final JsonParser[] f14287i;

    /* renamed from: j  reason: collision with root package name */
    protected final boolean f14288j;

    /* renamed from: k  reason: collision with root package name */
    protected int f14289k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f14290l;

    @Deprecated
    protected i(JsonParser[] jsonParserArr) {
        this(false, jsonParserArr);
    }

    @Deprecated
    public static i Y1(JsonParser jsonParser, JsonParser jsonParser2) {
        return Z1(false, jsonParser, jsonParser2);
    }

    public static i Z1(boolean z9, JsonParser jsonParser, JsonParser jsonParser2) {
        boolean z10 = jsonParser instanceof i;
        if (!z10 && !(jsonParser2 instanceof i)) {
            return new i(z9, new JsonParser[]{jsonParser, jsonParser2});
        }
        ArrayList arrayList = new ArrayList();
        if (z10) {
            ((i) jsonParser).W1(arrayList);
        } else {
            arrayList.add(jsonParser);
        }
        if (jsonParser2 instanceof i) {
            ((i) jsonParser2).W1(arrayList);
        } else {
            arrayList.add(jsonParser2);
        }
        return new i(z9, (JsonParser[]) arrayList.toArray(new JsonParser[arrayList.size()]));
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonParser U1() throws IOException {
        if (this.f14286h.W() != JsonToken.START_OBJECT && this.f14286h.W() != JsonToken.START_ARRAY) {
            return this;
        }
        int i4 = 1;
        while (true) {
            JsonToken y12 = y1();
            if (y12 == null) {
                return this;
            }
            if (y12.isStructStart()) {
                i4++;
            } else if (y12.isStructEnd() && i4 - 1 == 0) {
                return this;
            }
        }
    }

    protected void W1(List<JsonParser> list) {
        int length = this.f14287i.length;
        for (int i4 = this.f14289k - 1; i4 < length; i4++) {
            JsonParser jsonParser = this.f14287i[i4];
            if (jsonParser instanceof i) {
                ((i) jsonParser).W1(list);
            } else {
                list.add(jsonParser);
            }
        }
    }

    public int X1() {
        return this.f14287i.length;
    }

    protected JsonToken a2() throws IOException {
        JsonToken y12;
        do {
            int i4 = this.f14289k;
            JsonParser[] jsonParserArr = this.f14287i;
            if (i4 >= jsonParserArr.length) {
                return null;
            }
            this.f14289k = i4 + 1;
            JsonParser jsonParser = jsonParserArr[i4];
            this.f14286h = jsonParser;
            if (this.f14288j && jsonParser.i1()) {
                return this.f14286h.v0();
            }
            y12 = this.f14286h.y1();
        } while (y12 == null);
        return y12;
    }

    protected boolean b2() {
        int i4 = this.f14289k;
        JsonParser[] jsonParserArr = this.f14287i;
        if (i4 < jsonParserArr.length) {
            this.f14289k = i4 + 1;
            this.f14286h = jsonParserArr[i4];
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        do {
            this.f14286h.close();
        } while (b2());
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        JsonParser jsonParser = this.f14286h;
        if (jsonParser == null) {
            return null;
        }
        if (this.f14290l) {
            this.f14290l = false;
            return jsonParser.W();
        }
        JsonToken y12 = jsonParser.y1();
        return y12 == null ? a2() : y12;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected i(boolean z9, JsonParser[] jsonParserArr) {
        super(jsonParserArr[0]);
        boolean z10 = false;
        this.f14288j = z9;
        if (z9 && this.f14286h.i1()) {
            z10 = true;
        }
        this.f14290l = z10;
        this.f14287i = jsonParserArr;
        this.f14289k = 1;
    }
}
