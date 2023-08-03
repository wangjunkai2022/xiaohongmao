package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;

/* loaded from: classes3.dex */
public interface DataSink {
    void a0(ByteBufferList byteBufferList);

    AsyncServer b();

    void e0(WritableCallback writableCallback);

    CompletedCallback f0();

    boolean isOpen();

    void j();

    void j0(CompletedCallback completedCallback);

    WritableCallback v();
}
