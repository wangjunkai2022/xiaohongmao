package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.JSONArrayParser;
import org.json.JSONArray;

/* loaded from: classes3.dex */
public class JSONArrayBody implements AsyncHttpRequestBody<JSONArray> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f44716c = "application/json";

    /* renamed from: a  reason: collision with root package name */
    byte[] f44717a;

    /* renamed from: b  reason: collision with root package name */
    JSONArray f44718b;

    public JSONArrayBody() {
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new JSONArrayParser().a(dataEmitter).B(new FutureCallback<JSONArray>() { // from class: com.koushikdutta.async.http.body.JSONArrayBody.1
            @Override // com.koushikdutta.async.future.FutureCallback
            /* renamed from: a */
            public void c(Exception exc, JSONArray jSONArray) {
                JSONArrayBody.this.f44718b = jSONArray;
                completedCallback.g(exc);
            }
        });
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public JSONArray get() {
        return this.f44718b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return "application/json";
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        byte[] bytes = this.f44718b.toString().getBytes();
        this.f44717a = bytes;
        return bytes.length;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.n(dataSink, this.f44717a, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return true;
    }

    public JSONArrayBody(JSONArray jSONArray) {
        this();
        this.f44718b = jSONArray;
    }
}
