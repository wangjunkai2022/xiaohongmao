package com.koushikdutta.async.stream;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class OutputStreamDataSink implements DataSink {

    /* renamed from: a  reason: collision with root package name */
    AsyncServer f45117a;

    /* renamed from: b  reason: collision with root package name */
    OutputStream f45118b;

    /* renamed from: c  reason: collision with root package name */
    WritableCallback f45119c;

    /* renamed from: d  reason: collision with root package name */
    boolean f45120d;

    /* renamed from: e  reason: collision with root package name */
    Exception f45121e;

    /* renamed from: f  reason: collision with root package name */
    CompletedCallback f45122f;

    /* renamed from: g  reason: collision with root package name */
    WritableCallback f45123g;

    public OutputStreamDataSink(AsyncServer asyncServer) {
        this(asyncServer, null);
    }

    @Override // com.koushikdutta.async.DataSink
    public void a0(ByteBufferList byteBufferList) {
        while (byteBufferList.T() > 0) {
            try {
                try {
                    ByteBuffer Q = byteBufferList.Q();
                    f().write(Q.array(), Q.arrayOffset() + Q.position(), Q.remaining());
                    ByteBufferList.M(Q);
                } catch (IOException e4) {
                    i(e4);
                }
            } finally {
                byteBufferList.O();
            }
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f45117a;
    }

    @Override // com.koushikdutta.async.DataSink
    public void e0(WritableCallback writableCallback) {
        this.f45119c = writableCallback;
    }

    public OutputStream f() throws IOException {
        return this.f45118b;
    }

    @Override // com.koushikdutta.async.DataSink
    public CompletedCallback f0() {
        return this.f45122f;
    }

    public void i(Exception exc) {
        if (this.f45120d) {
            return;
        }
        this.f45120d = true;
        this.f45121e = exc;
        CompletedCallback completedCallback = this.f45122f;
        if (completedCallback != null) {
            completedCallback.g(exc);
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public boolean isOpen() {
        return this.f45120d;
    }

    @Override // com.koushikdutta.async.DataSink
    public void j() {
        try {
            OutputStream outputStream = this.f45118b;
            if (outputStream != null) {
                outputStream.close();
            }
            i(null);
        } catch (IOException e4) {
            i(e4);
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public void j0(CompletedCallback completedCallback) {
        this.f45122f = completedCallback;
    }

    public void k(OutputStream outputStream) {
        this.f45118b = outputStream;
    }

    public void n(WritableCallback writableCallback) {
        this.f45123g = writableCallback;
    }

    @Override // com.koushikdutta.async.DataSink
    public WritableCallback v() {
        return this.f45119c;
    }

    public OutputStreamDataSink(AsyncServer asyncServer, OutputStream outputStream) {
        this.f45117a = asyncServer;
        k(outputStream);
    }
}
