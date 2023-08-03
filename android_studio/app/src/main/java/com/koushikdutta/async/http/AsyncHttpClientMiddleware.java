package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.util.UntypedHashtable;

/* loaded from: classes3.dex */
public interface AsyncHttpClientMiddleware {

    /* loaded from: classes3.dex */
    public static class GetSocketData extends OnRequestData {

        /* renamed from: c  reason: collision with root package name */
        public ConnectCallback f44542c;

        /* renamed from: d  reason: collision with root package name */
        public Cancellable f44543d;

        /* renamed from: e  reason: collision with root package name */
        public String f44544e;
    }

    /* loaded from: classes3.dex */
    public static class OnBodyDecoderData extends OnHeadersReceivedData {

        /* renamed from: j  reason: collision with root package name */
        public DataEmitter f44545j;
    }

    /* loaded from: classes3.dex */
    public static class OnExchangeHeaderData extends GetSocketData {

        /* renamed from: f  reason: collision with root package name */
        public AsyncSocket f44546f;

        /* renamed from: g  reason: collision with root package name */
        public ResponseHead f44547g;

        /* renamed from: h  reason: collision with root package name */
        public CompletedCallback f44548h;

        /* renamed from: i  reason: collision with root package name */
        public CompletedCallback f44549i;
    }

    /* loaded from: classes3.dex */
    public static class OnHeadersReceivedData extends OnRequestSentData {
    }

    /* loaded from: classes3.dex */
    public static class OnRequestData {

        /* renamed from: a  reason: collision with root package name */
        public UntypedHashtable f44550a = new UntypedHashtable();

        /* renamed from: b  reason: collision with root package name */
        public AsyncHttpRequest f44551b;
    }

    /* loaded from: classes3.dex */
    public static class OnRequestSentData extends OnExchangeHeaderData {
    }

    /* loaded from: classes3.dex */
    public static class OnResponseCompleteData extends OnResponseReadyData {

        /* renamed from: k  reason: collision with root package name */
        public Exception f44552k;
    }

    /* loaded from: classes3.dex */
    public static class OnResponseReadyData extends OnBodyDecoderData {
    }

    /* loaded from: classes3.dex */
    public interface ResponseHead {
        DataEmitter N();

        ResponseHead O(String str);

        ResponseHead P(Headers headers);

        int c();

        Headers f();

        ResponseHead h(int i4);

        String message();

        ResponseHead o0(DataSink dataSink);

        DataSink p0();

        String protocol();

        AsyncSocket socket();

        ResponseHead y(String str);

        ResponseHead z(DataEmitter dataEmitter);
    }

    boolean a(OnExchangeHeaderData onExchangeHeaderData);

    void b(OnRequestData onRequestData);

    AsyncHttpRequest c(OnResponseReadyData onResponseReadyData);

    void d(OnHeadersReceivedData onHeadersReceivedData);

    Cancellable e(GetSocketData getSocketData);

    void f(OnBodyDecoderData onBodyDecoderData);

    void g(OnRequestSentData onRequestSentData);

    void h(OnResponseCompleteData onResponseCompleteData);
}
