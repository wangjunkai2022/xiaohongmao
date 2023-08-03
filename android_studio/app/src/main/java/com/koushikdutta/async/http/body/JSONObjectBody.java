package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.JSONObjectParser;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class JSONObjectBody implements AsyncHttpRequestBody<JSONObject> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f44721c = "application/json";

    /* renamed from: a  reason: collision with root package name */
    byte[] f44722a;

    /* renamed from: b  reason: collision with root package name */
    JSONObject f44723b;

    public JSONObjectBody() {
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new JSONObjectParser().a(dataEmitter).B(new FutureCallback<JSONObject>() { // from class: com.koushikdutta.async.http.body.JSONObjectBody.1
            @Override // com.koushikdutta.async.future.FutureCallback
            /* renamed from: a */
            public void c(Exception exc, JSONObject jSONObject) {
                JSONObjectBody.this.f44723b = jSONObject;
                completedCallback.g(exc);
            }
        });
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public JSONObject get() {
        return this.f44723b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return "application/json";
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        byte[] bytes = this.f44723b.toString().getBytes();
        this.f44722a = bytes;
        return bytes.length;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.n(dataSink, this.f44722a, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return true;
    }

    public JSONObjectBody(JSONObject jSONObject) {
        this();
        this.f44723b = jSONObject;
    }
}
