package com.koushikdutta.async.http.server;

import android.net.Uri;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.AsyncHttpResponse;
import com.koushikdutta.async.http.callback.HttpConnectCallback;

/* loaded from: classes3.dex */
public class AsyncProxyServer extends AsyncHttpServer {

    /* renamed from: i  reason: collision with root package name */
    AsyncHttpClient f45034i;

    public AsyncProxyServer(AsyncServer asyncServer) {
        this.f45034i = new AsyncHttpClient(asyncServer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.http.server.AsyncHttpServer
    public void K(HttpServerRequestCallback httpServerRequestCallback, AsyncHttpServerRequest asyncHttpServerRequest, final AsyncHttpServerResponse asyncHttpServerResponse) {
        Uri parse;
        super.K(httpServerRequestCallback, asyncHttpServerRequest, asyncHttpServerResponse);
        if (httpServerRequestCallback != null) {
            return;
        }
        try {
            try {
                parse = Uri.parse(asyncHttpServerRequest.getPath());
            } catch (Exception unused) {
                String g4 = asyncHttpServerRequest.d().g(com.google.common.net.b.f34653v);
                int i4 = 80;
                if (g4 != null) {
                    String[] split = g4.split(":", 2);
                    if (split.length == 2) {
                        g4 = split[0];
                        i4 = Integer.parseInt(split[1]);
                    }
                }
                parse = Uri.parse(c5.j.f4021a + g4 + ":" + i4 + asyncHttpServerRequest.getPath());
            }
            if (parse.getScheme() == null) {
                throw new Exception("no host or full uri provided");
            }
            this.f45034i.p(new AsyncHttpRequest(parse, asyncHttpServerRequest.getMethod(), asyncHttpServerRequest.d()), new HttpConnectCallback() { // from class: com.koushikdutta.async.http.server.AsyncProxyServer.1
                @Override // com.koushikdutta.async.http.callback.HttpConnectCallback
                public void a(Exception exc, AsyncHttpResponse asyncHttpResponse) {
                    if (exc != null) {
                        asyncHttpServerResponse.h(500);
                        asyncHttpServerResponse.send(exc.getMessage());
                        return;
                    }
                    asyncHttpServerResponse.I(asyncHttpResponse);
                }
            });
        } catch (Exception e4) {
            asyncHttpServerResponse.h(500);
            asyncHttpServerResponse.send(e4.getMessage());
        }
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServer
    protected boolean L(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        return true;
    }
}
