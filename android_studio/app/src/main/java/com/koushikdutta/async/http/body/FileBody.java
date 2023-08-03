package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import java.io.File;

/* loaded from: classes3.dex */
public class FileBody implements AsyncHttpRequestBody<File> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f44711c = "application/binary";

    /* renamed from: a  reason: collision with root package name */
    File f44712a;

    /* renamed from: b  reason: collision with root package name */
    String f44713b;

    public FileBody(File file) {
        this.f44713b = "application/binary";
        this.f44712a = file;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        throw new AssertionError("not implemented");
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public File get() {
        return this.f44712a;
    }

    public void b(String str) {
        this.f44713b = str;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return this.f44713b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        return (int) this.f44712a.length();
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.g(this.f44712a, dataSink, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        throw new AssertionError("not implemented");
    }

    public FileBody(File file, String str) {
        this.f44712a = file;
        this.f44713b = str;
    }
}
