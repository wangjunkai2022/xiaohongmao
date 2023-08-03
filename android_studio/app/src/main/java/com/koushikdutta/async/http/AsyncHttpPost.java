package com.koushikdutta.async.http;

import android.net.Uri;

/* loaded from: classes3.dex */
public class AsyncHttpPost extends AsyncHttpRequest {

    /* renamed from: o  reason: collision with root package name */
    public static final String f44556o = "POST";

    public AsyncHttpPost(String str) {
        this(Uri.parse(str));
    }

    public AsyncHttpPost(Uri uri) {
        super(uri, f44556o);
    }
}
