package com.koushikdutta.async.parser;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.f;
import java.lang.reflect.Type;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class JSONObjectParser implements AsyncParser<JSONObject> {
    @Override // com.koushikdutta.async.parser.AsyncParser
    public Future<JSONObject> a(DataEmitter dataEmitter) {
        return new StringParser().a(dataEmitter).F(f.f44452a);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public String b() {
        return "application/json";
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    /* renamed from: d */
    public void c(DataSink dataSink, JSONObject jSONObject, CompletedCallback completedCallback) {
        new StringParser().c(dataSink, jSONObject.toString(), completedCallback);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Type getType() {
        return JSONObject.class;
    }
}
