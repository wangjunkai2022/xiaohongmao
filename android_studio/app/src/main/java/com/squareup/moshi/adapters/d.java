package com.squareup.moshi.adapters;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import java.io.IOException;
import java.util.Date;

/* compiled from: Rfc3339DateJsonAdapter.java */
/* loaded from: classes3.dex */
public final class d extends h<Date> {
    @Override // com.squareup.moshi.h
    /* renamed from: a */
    public synchronized Date fromJson(JsonReader jsonReader) throws IOException {
        if (jsonReader.I() == JsonReader.Token.NULL) {
            return (Date) jsonReader.D();
        }
        return b.e(jsonReader.G());
    }

    @Override // com.squareup.moshi.h
    /* renamed from: b */
    public synchronized void toJson(q qVar, Date date) throws IOException {
        if (date == null) {
            qVar.D();
        } else {
            qVar.l0(b.b(date));
        }
    }
}
