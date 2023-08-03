package com.koushikdutta.async.parser;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import java.lang.reflect.Type;
import org.json.JSONArray;

/* loaded from: classes3.dex */
public class JSONArrayParser implements AsyncParser<JSONArray> {
    @Override // com.koushikdutta.async.parser.AsyncParser
    public Future<JSONArray> a(DataEmitter dataEmitter) {
        return new StringParser().a(dataEmitter).F(b.f45095a);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public String b() {
        return "application/json";
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    /* renamed from: d */
    public void c(DataSink dataSink, JSONArray jSONArray, CompletedCallback completedCallback) {
        new StringParser().c(dataSink, jSONArray.toString(), completedCallback);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Type getType() {
        return JSONArray.class;
    }
}
