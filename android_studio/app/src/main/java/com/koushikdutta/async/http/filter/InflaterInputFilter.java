package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.Util;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
public class InflaterInputFilter extends FilteredDataEmitter {

    /* renamed from: h  reason: collision with root package name */
    private Inflater f44936h;

    /* renamed from: i  reason: collision with root package name */
    ByteBufferList f44937i;

    public InflaterInputFilter() {
        this(new Inflater());
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        try {
            ByteBuffer y9 = ByteBufferList.y(byteBufferList.P() * 2);
            while (byteBufferList.T() > 0) {
                ByteBuffer Q = byteBufferList.Q();
                if (Q.hasRemaining()) {
                    Q.remaining();
                    this.f44936h.setInput(Q.array(), Q.arrayOffset() + Q.position(), Q.remaining());
                    do {
                        y9.position(y9.position() + this.f44936h.inflate(y9.array(), y9.arrayOffset() + y9.position(), y9.remaining()));
                        if (!y9.hasRemaining()) {
                            y9.flip();
                            this.f44937i.b(y9);
                            y9 = ByteBufferList.y(y9.capacity() * 2);
                        }
                        if (!this.f44936h.needsInput()) {
                        }
                    } while (!this.f44936h.finished());
                }
                ByteBufferList.M(Q);
            }
            y9.flip();
            this.f44937i.b(y9);
            Util.a(this, this.f44937i);
        } catch (Exception e4) {
            v0(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.DataEmitterBase
    public void v0(Exception exc) {
        this.f44936h.end();
        if (exc != null && this.f44936h.getRemaining() > 0) {
            exc = new DataRemainingException("data still remaining in inflater", exc);
        }
        super.v0(exc);
    }

    public InflaterInputFilter(Inflater inflater) {
        this.f44937i = new ByteBufferList();
        this.f44936h = inflater;
    }
}
