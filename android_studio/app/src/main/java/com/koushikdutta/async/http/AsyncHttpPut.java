package com.koushikdutta.async.http;

import android.net.Uri;

/* loaded from: classes3.dex */
public class AsyncHttpPut extends AsyncHttpRequest {

    /* renamed from: o  reason: collision with root package name */
    public static final String f44557o = "PUT";

    public AsyncHttpPut(String str) {
        this(Uri.parse(str));
    }

    public AsyncHttpPut(Uri uri) {
        super(uri, f44557o);
    }
}
