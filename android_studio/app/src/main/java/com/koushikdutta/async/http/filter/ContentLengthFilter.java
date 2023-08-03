package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;

/* loaded from: classes3.dex */
public class ContentLengthFilter extends FilteredDataEmitter {

    /* renamed from: h  reason: collision with root package name */
    long f44918h;

    /* renamed from: i  reason: collision with root package name */
    long f44919i;

    /* renamed from: j  reason: collision with root package name */
    ByteBufferList f44920j = new ByteBufferList();

    public ContentLengthFilter(long j4) {
        this.f44918h = j4;
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        byteBufferList.k(this.f44920j, (int) Math.min(this.f44918h - this.f44919i, byteBufferList.P()));
        int P = this.f44920j.P();
        super.s(dataEmitter, this.f44920j);
        this.f44919i += P - this.f44920j.P();
        this.f44920j.j(byteBufferList);
        if (this.f44919i == this.f44918h) {
            v0(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.DataEmitterBase
    public void v0(Exception exc) {
        if (exc == null && this.f44919i != this.f44918h) {
            exc = new PrematureDataEndException("End of data reached before content length was read: " + this.f44919i + "/" + this.f44918h + " Paused: " + i());
        }
        super.v0(exc);
    }
}
