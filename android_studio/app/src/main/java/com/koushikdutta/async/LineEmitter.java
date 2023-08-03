package com.koushikdutta.async;

import com.koushikdutta.async.callback.DataCallback;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public class LineEmitter implements DataCallback {

    /* renamed from: a  reason: collision with root package name */
    Charset f44267a;

    /* renamed from: b  reason: collision with root package name */
    ByteBufferList f44268b;

    /* renamed from: c  reason: collision with root package name */
    StringCallback f44269c;

    /* loaded from: classes3.dex */
    public interface StringCallback {
        void a(String str);
    }

    public LineEmitter() {
        this(null);
    }

    public StringCallback a() {
        return this.f44269c;
    }

    public void b(StringCallback stringCallback) {
        this.f44269c = stringCallback;
    }

    @Override // com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBufferList.P());
        while (byteBufferList.P() > 0) {
            byte h4 = byteBufferList.h();
            if (h4 == 10) {
                allocate.flip();
                this.f44268b.b(allocate);
                this.f44269c.a(this.f44268b.L(this.f44267a));
                this.f44268b = new ByteBufferList();
                return;
            }
            allocate.put(h4);
        }
        allocate.flip();
        this.f44268b.b(allocate);
    }

    public LineEmitter(Charset charset) {
        this.f44268b = new ByteBufferList();
        this.f44267a = charset;
    }
}
