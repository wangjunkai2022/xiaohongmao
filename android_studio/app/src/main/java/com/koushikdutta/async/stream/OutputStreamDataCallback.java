package com.koushikdutta.async.stream;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class OutputStreamDataCallback implements DataCallback, CompletedCallback {

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f45116a;

    public OutputStreamDataCallback(OutputStream outputStream) {
        this.f45116a = outputStream;
    }

    public void b() {
        try {
            this.f45116a.close();
        } catch (IOException e4) {
            g(e4);
        }
    }

    public OutputStream f() {
        return this.f45116a;
    }

    @Override // com.koushikdutta.async.callback.CompletedCallback
    public void g(Exception exc) {
        exc.printStackTrace();
    }

    @Override // com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        while (byteBufferList.T() > 0) {
            try {
                try {
                    ByteBuffer Q = byteBufferList.Q();
                    this.f45116a.write(Q.array(), Q.arrayOffset() + Q.position(), Q.remaining());
                    ByteBufferList.M(Q);
                } catch (Exception e4) {
                    g(e4);
                }
            } finally {
                byteBufferList.O();
            }
        }
    }
}
