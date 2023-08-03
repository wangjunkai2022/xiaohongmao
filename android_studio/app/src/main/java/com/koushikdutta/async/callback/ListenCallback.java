package com.koushikdutta.async.callback;

import com.koushikdutta.async.AsyncServerSocket;
import com.koushikdutta.async.AsyncSocket;

/* loaded from: classes3.dex */
public interface ListenCallback extends CompletedCallback {
    void E(AsyncServerSocket asyncServerSocket);

    void d0(AsyncSocket asyncSocket);
}
