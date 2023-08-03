package com.koushikdutta.async.http;

import android.text.TextUtils;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.BufferedDataSink;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import com.koushikdutta.async.http.filter.ChunkedOutputFilter;
import java.io.IOException;

/* loaded from: classes3.dex */
public class HttpTransportMiddleware extends SimpleMiddleware {
    static boolean i(int i4) {
        return (i4 >= 100 && i4 <= 199) || i4 == 204 || i4 == 304;
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public boolean a(final AsyncHttpClientMiddleware.OnExchangeHeaderData onExchangeHeaderData) {
        final BufferedDataSink bufferedDataSink;
        BufferedDataSink bufferedDataSink2;
        Protocol protocol = Protocol.get(onExchangeHeaderData.f44544e);
        if (protocol != null && protocol != Protocol.HTTP_1_0 && protocol != Protocol.HTTP_1_1) {
            return super.a(onExchangeHeaderData);
        }
        AsyncHttpRequest asyncHttpRequest = onExchangeHeaderData.f44551b;
        AsyncHttpRequestBody f10 = asyncHttpRequest.f();
        if (f10 != null) {
            if (f10.length() >= 0) {
                asyncHttpRequest.i().n(com.google.common.net.b.f34609b, String.valueOf(f10.length()));
                onExchangeHeaderData.f44547g.o0(onExchangeHeaderData.f44546f);
            } else if ("close".equals(asyncHttpRequest.i().g(com.google.common.net.b.f34639o))) {
                onExchangeHeaderData.f44547g.o0(onExchangeHeaderData.f44546f);
            } else {
                asyncHttpRequest.i().n(com.google.common.net.b.C0, "Chunked");
                onExchangeHeaderData.f44547g.o0(new ChunkedOutputFilter(onExchangeHeaderData.f44546f));
            }
        }
        String o9 = asyncHttpRequest.i().o(asyncHttpRequest.q().toString());
        byte[] bytes = o9.getBytes();
        if (f10 != null && f10.length() >= 0 && f10.length() + bytes.length < 1024) {
            BufferedDataSink bufferedDataSink3 = new BufferedDataSink(onExchangeHeaderData.f44547g.p0());
            bufferedDataSink3.k(true);
            onExchangeHeaderData.f44547g.o0(bufferedDataSink3);
            bufferedDataSink = bufferedDataSink3;
            bufferedDataSink2 = bufferedDataSink3;
        } else {
            bufferedDataSink = null;
            bufferedDataSink2 = onExchangeHeaderData.f44546f;
        }
        asyncHttpRequest.A("\n" + o9);
        final CompletedCallback completedCallback = onExchangeHeaderData.f44548h;
        Util.n(bufferedDataSink2, bytes, new CompletedCallback() { // from class: com.koushikdutta.async.http.HttpTransportMiddleware.1
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                Util.c(completedCallback, exc);
                BufferedDataSink bufferedDataSink4 = bufferedDataSink;
                if (bufferedDataSink4 != null) {
                    bufferedDataSink4.k(false);
                    bufferedDataSink.B(0);
                }
            }
        });
        LineEmitter.StringCallback stringCallback = new LineEmitter.StringCallback() { // from class: com.koushikdutta.async.http.HttpTransportMiddleware.2

            /* renamed from: a  reason: collision with root package name */
            Headers f44636a = new Headers();

            /* renamed from: b  reason: collision with root package name */
            String f44637b;

            @Override // com.koushikdutta.async.LineEmitter.StringCallback
            public void a(String str) {
                DataEmitter c10;
                try {
                    String trim = str.trim();
                    if (this.f44637b == null) {
                        this.f44637b = trim;
                    } else if (!TextUtils.isEmpty(trim)) {
                        this.f44636a.f(trim);
                    } else {
                        String[] split = this.f44637b.split(" ", 3);
                        if (split.length >= 2) {
                            onExchangeHeaderData.f44547g.P(this.f44636a);
                            String str2 = split[0];
                            onExchangeHeaderData.f44547g.y(str2);
                            onExchangeHeaderData.f44547g.h(Integer.parseInt(split[1]));
                            onExchangeHeaderData.f44547g.O(split.length == 3 ? split[2] : "");
                            onExchangeHeaderData.f44549i.g(null);
                            AsyncSocket socket = onExchangeHeaderData.f44547g.socket();
                            if (socket == null) {
                                return;
                            }
                            if (!onExchangeHeaderData.f44551b.u()) {
                                c10 = HttpUtil.EndEmitter.x0(socket.b(), null);
                            } else if (HttpTransportMiddleware.i(onExchangeHeaderData.f44547g.c())) {
                                c10 = HttpUtil.EndEmitter.x0(socket.b(), null);
                            } else {
                                c10 = HttpUtil.c(socket, Protocol.get(str2), this.f44636a, false);
                            }
                            onExchangeHeaderData.f44547g.z(c10);
                            return;
                        }
                        throw new Exception(new IOException("Not HTTP"));
                    }
                } catch (Exception e4) {
                    onExchangeHeaderData.f44549i.g(e4);
                }
            }
        };
        LineEmitter lineEmitter = new LineEmitter();
        onExchangeHeaderData.f44546f.b0(lineEmitter);
        lineEmitter.b(stringCallback);
        return true;
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void g(AsyncHttpClientMiddleware.OnRequestSentData onRequestSentData) {
        Protocol protocol = Protocol.get(onRequestSentData.f44544e);
        if ((protocol == null || protocol == Protocol.HTTP_1_0 || protocol == Protocol.HTTP_1_1) && (onRequestSentData.f44547g.p0() instanceof ChunkedOutputFilter)) {
            onRequestSentData.f44547g.p0().j();
        }
    }
}
