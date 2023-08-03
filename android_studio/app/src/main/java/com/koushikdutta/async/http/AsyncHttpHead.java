package com.koushikdutta.async.http;

import android.net.Uri;

/* loaded from: classes3.dex */
public class AsyncHttpHead extends AsyncHttpRequest {

    /* renamed from: o  reason: collision with root package name */
    public static final String f44555o = "HEAD";

    public AsyncHttpHead(Uri uri) {
        super(uri, f44555o);
    }

    @Override // com.koushikdutta.async.http.AsyncHttpRequest
    public boolean u() {
        return false;
    }
}
