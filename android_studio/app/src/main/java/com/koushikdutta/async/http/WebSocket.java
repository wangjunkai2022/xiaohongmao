package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncSocket;

/* loaded from: classes3.dex */
public interface WebSocket extends AsyncSocket {

    /* loaded from: classes3.dex */
    public interface PingCallback {
        void a(String str);
    }

    /* loaded from: classes3.dex */
    public interface PongCallback {
        void a(String str);
    }

    /* loaded from: classes3.dex */
    public interface StringCallback {
        void a(String str);
    }

    void A(String str);

    void H(StringCallback stringCallback);

    void J(byte[] bArr);

    StringCallback M();

    void V(PingCallback pingCallback);

    String Y();

    PongCallback Z();

    AsyncSocket a();

    void n0(byte[] bArr, int i4, int i10);

    void ping(String str);

    boolean q0();

    void send(String str);

    void w(PongCallback pongCallback);
}
