package com.koushikdutta.async.http.server;

import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import java.util.Map;
import java.util.regex.Matcher;

/* loaded from: classes3.dex */
public interface AsyncHttpServerRequest extends DataEmitter {
    Matcher C();

    AsyncSocket a();

    Headers d();

    String get(String str);

    String getMethod();

    String getPath();

    Map<String, Object> getState();

    String getUrl();

    <T extends AsyncHttpRequestBody> T i0();

    void m0(Matcher matcher);

    Multimap o();
}
