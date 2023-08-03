package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;

/* loaded from: classes3.dex */
public interface DataEmitter {
    CompletedCallback B();

    void X(CompletedCallback completedCallback);

    AsyncServer b();

    void b0(DataCallback dataCallback);

    void close();

    boolean h0();

    boolean i();

    void k();

    String n();

    void pause();

    DataCallback r0();
}
