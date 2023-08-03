package com.squareup.moshi;

import java.io.IOException;
import java.util.Date;

/* compiled from: Rfc3339DateJsonAdapter.java */
/* loaded from: classes3.dex */
public final class w extends h<Date> {

    /* renamed from: a  reason: collision with root package name */
    private final com.squareup.moshi.adapters.d f55744a = new com.squareup.moshi.adapters.d();

    @Override // com.squareup.moshi.h
    /* renamed from: a */
    public Date fromJson(JsonReader jsonReader) throws IOException {
        return this.f55744a.fromJson(jsonReader);
    }

    @Override // com.squareup.moshi.h
    /* renamed from: b */
    public void toJson(q qVar, Date date) throws IOException {
        this.f55744a.toJson(qVar, date);
    }
}
