package com.koushikdutta.async;

import com.koushikdutta.async.callback.DataCallback;

/* loaded from: classes3.dex */
public class DataEmitterReader implements DataCallback {

    /* renamed from: a  reason: collision with root package name */
    DataCallback f44249a;

    /* renamed from: b  reason: collision with root package name */
    int f44250b;

    /* renamed from: c  reason: collision with root package name */
    ByteBufferList f44251c = new ByteBufferList();

    private boolean a(DataEmitter dataEmitter) {
        if (this.f44250b > this.f44251c.P()) {
            return false;
        }
        DataCallback dataCallback = this.f44249a;
        this.f44249a = null;
        dataCallback.s(dataEmitter, this.f44251c);
        return true;
    }

    public void b(int i4, DataCallback dataCallback) {
        this.f44250b = i4;
        this.f44249a = dataCallback;
        this.f44251c.O();
    }

    @Override // com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        do {
            byteBufferList.k(this.f44251c, Math.min(byteBufferList.P(), this.f44250b - this.f44251c.P()));
            byteBufferList.P();
            if (!a(dataEmitter)) {
                break;
            }
        } while (this.f44249a != null);
        byteBufferList.P();
    }
}
