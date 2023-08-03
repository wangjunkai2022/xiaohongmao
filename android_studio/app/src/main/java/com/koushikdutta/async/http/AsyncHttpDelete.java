package com.koushikdutta.async.http;

import android.net.Uri;

/* loaded from: classes3.dex */
public class AsyncHttpDelete extends AsyncHttpRequest {

    /* renamed from: o  reason: collision with root package name */
    public static final String f44553o = "DELETE";

    public AsyncHttpDelete(String str) {
        this(Uri.parse(str));
    }

    public AsyncHttpDelete(Uri uri) {
        super(uri, f44553o);
    }
}
