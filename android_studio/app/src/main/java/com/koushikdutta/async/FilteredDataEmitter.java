package com.koushikdutta.async;

import com.koushikdutta.async.DataTrackingEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.wrapper.DataEmitterWrapper;

/* loaded from: classes3.dex */
public class FilteredDataEmitter extends DataEmitterBase implements DataEmitter, DataCallback, DataEmitterWrapper, DataTrackingEmitter {

    /* renamed from: d  reason: collision with root package name */
    private DataEmitter f44262d;

    /* renamed from: e  reason: collision with root package name */
    private DataTrackingEmitter.DataTracker f44263e;

    /* renamed from: f  reason: collision with root package name */
    private int f44264f;

    /* renamed from: g  reason: collision with root package name */
    boolean f44265g;

    @Override // com.koushikdutta.async.DataTrackingEmitter
    public int F() {
        return this.f44264f;
    }

    @Override // com.koushikdutta.async.DataTrackingEmitter
    public void G(DataEmitter dataEmitter) {
        DataEmitter dataEmitter2 = this.f44262d;
        if (dataEmitter2 != null) {
            dataEmitter2.b0(null);
        }
        this.f44262d = dataEmitter;
        dataEmitter.b0(this);
        this.f44262d.X(new CompletedCallback() { // from class: com.koushikdutta.async.FilteredDataEmitter.1
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                FilteredDataEmitter.this.v0(exc);
            }
        });
    }

    @Override // com.koushikdutta.async.DataTrackingEmitter
    public void S(DataTrackingEmitter.DataTracker dataTracker) {
        this.f44263e = dataTracker;
    }

    @Override // com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44262d.b();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void close() {
        this.f44265g = true;
        DataEmitter dataEmitter = this.f44262d;
        if (dataEmitter != null) {
            dataEmitter.close();
        }
    }

    @Override // com.koushikdutta.async.DataTrackingEmitter
    public DataTrackingEmitter.DataTracker g0() {
        return this.f44263e;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return this.f44262d.h0();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f44262d.i();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void k() {
        this.f44262d.k();
    }

    @Override // com.koushikdutta.async.wrapper.DataEmitterWrapper
    public DataEmitter l0() {
        return this.f44262d;
    }

    @Override // com.koushikdutta.async.DataEmitterBase, com.koushikdutta.async.DataEmitter
    public String n() {
        DataEmitter dataEmitter = this.f44262d;
        if (dataEmitter == null) {
            return null;
        }
        return dataEmitter.n();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void pause() {
        this.f44262d.pause();
    }

    @Override // com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        if (this.f44265g) {
            byteBufferList.O();
            return;
        }
        if (byteBufferList != null) {
            this.f44264f += byteBufferList.P();
        }
        Util.a(this, byteBufferList);
        if (byteBufferList != null) {
            this.f44264f -= byteBufferList.P();
        }
        DataTrackingEmitter.DataTracker dataTracker = this.f44263e;
        if (dataTracker == null || byteBufferList == null) {
            return;
        }
        dataTracker.a(this.f44264f);
    }
}
