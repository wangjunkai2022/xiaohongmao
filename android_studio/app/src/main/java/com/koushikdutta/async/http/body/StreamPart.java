package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.NameValuePair;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class StreamPart extends Part {
    public StreamPart(String str, long j4, List<NameValuePair> list) {
        super(str, j4, list);
    }

    @Override // com.koushikdutta.async.http.body.Part
    public void h(DataSink dataSink, CompletedCallback completedCallback) {
        try {
            Util.i(i(), dataSink, completedCallback);
        } catch (Exception e4) {
            completedCallback.g(e4);
        }
    }

    protected abstract InputStream i() throws IOException;
}
