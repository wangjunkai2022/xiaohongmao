package com.koushikdutta.async.http;

import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;

/* loaded from: classes3.dex */
public class SimpleMiddleware implements AsyncHttpClientMiddleware {
    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public boolean a(AsyncHttpClientMiddleware.OnExchangeHeaderData onExchangeHeaderData) {
        return false;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void b(AsyncHttpClientMiddleware.OnRequestData onRequestData) {
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public AsyncHttpRequest c(AsyncHttpClientMiddleware.OnResponseReadyData onResponseReadyData) {
        return null;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void d(AsyncHttpClientMiddleware.OnHeadersReceivedData onHeadersReceivedData) {
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public Cancellable e(AsyncHttpClientMiddleware.GetSocketData getSocketData) {
        return null;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void f(AsyncHttpClientMiddleware.OnBodyDecoderData onBodyDecoderData) {
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void g(AsyncHttpClientMiddleware.OnRequestSentData onRequestSentData) {
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void h(AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData) {
    }
}
