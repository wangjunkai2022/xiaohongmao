package com.qennnsad.aknkaksd.data.converter;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;

/* compiled from: StringRequestBodyConverter.java */
/* loaded from: classes3.dex */
public class d implements Converter<String, RequestBody> {

    /* renamed from: a  reason: collision with root package name */
    private static final MediaType f47688a = MediaType.parse("application/json; charset=UTF-8");

    @Override // retrofit2.Converter
    /* renamed from: a */
    public RequestBody convert(String str) throws IOException {
        return RequestBody.create(str.getBytes(StandardCharsets.UTF_8), f47688a);
    }
}
