package com.qennnsad.aknkaksd.data.converter;

import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* compiled from: StringResponseBodyConverter.java */
/* loaded from: classes3.dex */
public class e implements Converter<ResponseBody, String> {
    @Override // retrofit2.Converter
    /* renamed from: a */
    public String convert(ResponseBody responseBody) throws IOException {
        try {
            return responseBody.string();
        } finally {
            responseBody.close();
        }
    }
}
