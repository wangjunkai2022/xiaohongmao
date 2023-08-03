package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;

/* loaded from: classes3.dex */
public class BufferedDataSink implements DataSink {

    /* renamed from: a  reason: collision with root package name */
    DataSink f44222a;

    /* renamed from: b  reason: collision with root package name */
    boolean f44223b;

    /* renamed from: d  reason: collision with root package name */
    WritableCallback f44225d;

    /* renamed from: f  reason: collision with root package name */
    boolean f44227f;

    /* renamed from: c  reason: collision with root package name */
    final ByteBufferList f44224c = new ByteBufferList();

    /* renamed from: e  reason: collision with root package name */
    int f44226e = Integer.MAX_VALUE;

    public BufferedDataSink(DataSink dataSink) {
        z(dataSink);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        boolean x9;
        WritableCallback writableCallback;
        if (this.f44223b) {
            return;
        }
        synchronized (this.f44224c) {
            this.f44222a.a0(this.f44224c);
            x9 = this.f44224c.x();
        }
        if (x9 && this.f44227f) {
            this.f44222a.j();
        }
        if (!x9 || (writableCallback = this.f44225d) == null) {
            return;
        }
        writableCallback.a();
    }

    public void B(int i4) {
        this.f44226e = i4;
    }

    @Override // com.koushikdutta.async.DataSink
    public void a0(ByteBufferList byteBufferList) {
        if (b().A() != Thread.currentThread()) {
            synchronized (this.f44224c) {
                if (this.f44224c.P() >= this.f44226e) {
                    return;
                }
                s(byteBufferList);
                byteBufferList.j(this.f44224c);
                b().c0(new Runnable() { // from class: com.koushikdutta.async.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        BufferedDataSink.this.C();
                    }
                });
                return;
            }
        }
        s(byteBufferList);
        if (!q0()) {
            this.f44222a.a0(byteBufferList);
        }
        synchronized (this.f44224c) {
            byteBufferList.j(this.f44224c);
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44222a.b();
    }

    @Override // com.koushikdutta.async.DataSink
    public void e0(WritableCallback writableCallback) {
        this.f44225d = writableCallback;
    }

    @Override // com.koushikdutta.async.DataSink
    public CompletedCallback f0() {
        return this.f44222a.f0();
    }

    @Override // com.koushikdutta.async.DataSink
    public boolean isOpen() {
        return this.f44222a.isOpen();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j() {
        if (b().A() != Thread.currentThread()) {
            b().c0(new Runnable() { // from class: com.koushikdutta.async.t
                @Override // java.lang.Runnable
                public final void run() {
                    BufferedDataSink.this.j();
                }
            });
            return;
        }
        synchronized (this.f44224c) {
            if (this.f44224c.w()) {
                this.f44227f = true;
            } else {
                this.f44222a.j();
            }
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public void j0(CompletedCallback completedCallback) {
        this.f44222a.j0(completedCallback);
    }

    public void k(boolean z9) {
        this.f44223b = z9;
        if (z9) {
            return;
        }
        C();
    }

    public DataSink n() {
        return this.f44222a;
    }

    public int o() {
        return this.f44226e;
    }

    public boolean q() {
        boolean z9;
        synchronized (this.f44224c) {
            z9 = this.f44224c.P() < this.f44226e;
        }
        return z9;
    }

    public boolean q0() {
        return this.f44224c.w() || this.f44223b;
    }

    protected void s(ByteBufferList byteBufferList) {
    }

    @Override // com.koushikdutta.async.DataSink
    public WritableCallback v() {
        return this.f44225d;
    }

    public int y() {
        return this.f44224c.P();
    }

    public void z(DataSink dataSink) {
        this.f44222a = dataSink;
        dataSink.e0(new WritableCallback() { // from class: com.koushikdutta.async.s
            @Override // com.koushikdutta.async.callback.WritableCallback
            public final void a() {
                BufferedDataSink.this.C();
            }
        });
    }
}
