package com.koushikdutta.async.http.body;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.NameValuePair;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class UrlEncodedFormBody implements AsyncHttpRequestBody<Multimap> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f44766c = "application/x-www-form-urlencoded";

    /* renamed from: a  reason: collision with root package name */
    private Multimap f44767a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f44768b;

    public UrlEncodedFormBody(Multimap multimap) {
        this.f44767a = multimap;
    }

    private void b() {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<NameValuePair> it = this.f44767a.iterator();
            boolean z9 = true;
            while (it.hasNext()) {
                NameValuePair next = it.next();
                if (next.getValue() != null) {
                    if (!z9) {
                        sb.append(Typography.amp);
                    }
                    z9 = false;
                    sb.append(URLEncoder.encode(next.getName(), "UTF-8"));
                    sb.append('=');
                    sb.append(URLEncoder.encode(next.getValue(), "UTF-8"));
                }
            }
            this.f44768b = sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e4) {
            throw new AssertionError(e4);
        }
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        final ByteBufferList byteBufferList = new ByteBufferList();
        dataEmitter.b0(new DataCallback() { // from class: com.koushikdutta.async.http.body.UrlEncodedFormBody.1
            @Override // com.koushikdutta.async.callback.DataCallback
            public void s(DataEmitter dataEmitter2, ByteBufferList byteBufferList2) {
                byteBufferList2.j(byteBufferList);
            }
        });
        dataEmitter.X(new CompletedCallback() { // from class: com.koushikdutta.async.http.body.UrlEncodedFormBody.2
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                try {
                    if (exc == null) {
                        UrlEncodedFormBody.this.f44767a = Multimap.parseUrlEncoded(byteBufferList.K());
                        completedCallback.g(null);
                        return;
                    }
                    throw exc;
                } catch (Exception e4) {
                    completedCallback.g(e4);
                }
            }
        });
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: c */
    public Multimap get() {
        return this.f44767a;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return "application/x-www-form-urlencoded; charset=utf-8";
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        if (this.f44768b == null) {
            b();
        }
        return this.f44768b.length;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        if (this.f44768b == null) {
            b();
        }
        Util.n(dataSink, this.f44768b, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return true;
    }

    public UrlEncodedFormBody(List<NameValuePair> list) {
        this.f44767a = new Multimap(list);
    }

    public UrlEncodedFormBody() {
    }
}
