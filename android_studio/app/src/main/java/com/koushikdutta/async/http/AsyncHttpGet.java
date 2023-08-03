package com.koushikdutta.async.http;

import android.net.Uri;

/* loaded from: classes3.dex */
public class AsyncHttpGet extends AsyncHttpRequest {

    /* renamed from: o  reason: collision with root package name */
    public static final String f44554o = "GET";

    public AsyncHttpGet(String str) {
        super(Uri.parse(str), f44554o);
    }

    public AsyncHttpGet(Uri uri) {
        super(uri, f44554o);
    }
}
