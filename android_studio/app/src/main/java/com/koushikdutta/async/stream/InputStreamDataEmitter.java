package com.koushikdutta.async.stream;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class InputStreamDataEmitter implements DataEmitter {

    /* renamed from: a  reason: collision with root package name */
    AsyncServer f45103a;

    /* renamed from: b  reason: collision with root package name */
    InputStream f45104b;

    /* renamed from: c  reason: collision with root package name */
    DataCallback f45105c;

    /* renamed from: d  reason: collision with root package name */
    boolean f45106d;

    /* renamed from: e  reason: collision with root package name */
    int f45107e = 0;

    /* renamed from: f  reason: collision with root package name */
    ByteBufferList f45108f = new ByteBufferList();

    /* renamed from: g  reason: collision with root package name */
    Runnable f45109g = new Runnable() { // from class: com.koushikdutta.async.stream.InputStreamDataEmitter.2
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!InputStreamDataEmitter.this.f45108f.x()) {
                    InputStreamDataEmitter.this.b().i0(new Runnable() { // from class: com.koushikdutta.async.stream.InputStreamDataEmitter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            InputStreamDataEmitter inputStreamDataEmitter = InputStreamDataEmitter.this;
                            Util.a(inputStreamDataEmitter, inputStreamDataEmitter.f45108f);
                        }
                    });
                    if (!InputStreamDataEmitter.this.f45108f.x()) {
                        return;
                    }
                }
                do {
                    ByteBuffer y9 = ByteBufferList.y(Math.min(Math.max(InputStreamDataEmitter.this.f45107e, 4096), 262144));
                    int read = InputStreamDataEmitter.this.f45104b.read(y9.array());
                    if (-1 == read) {
                        InputStreamDataEmitter.this.j(null);
                        return;
                    }
                    InputStreamDataEmitter.this.f45107e = read * 2;
                    y9.limit(read);
                    InputStreamDataEmitter.this.f45108f.b(y9);
                    InputStreamDataEmitter.this.b().i0(new Runnable() { // from class: com.koushikdutta.async.stream.InputStreamDataEmitter.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            InputStreamDataEmitter inputStreamDataEmitter = InputStreamDataEmitter.this;
                            Util.a(inputStreamDataEmitter, inputStreamDataEmitter.f45108f);
                        }
                    });
                    if (InputStreamDataEmitter.this.f45108f.P() != 0) {
                        return;
                    }
                } while (!InputStreamDataEmitter.this.i());
            } catch (Exception e4) {
                InputStreamDataEmitter.this.j(e4);
            }
        }
    };

    /* renamed from: h  reason: collision with root package name */
    CompletedCallback f45110h;

    public InputStreamDataEmitter(AsyncServer asyncServer, InputStream inputStream) {
        this.f45103a = asyncServer;
        this.f45104b = inputStream;
        h();
    }

    private void h() {
        new Thread(this.f45109g).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(final Exception exc) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.stream.InputStreamDataEmitter.1
            @Override // java.lang.Runnable
            public void run() {
                Exception e4 = exc;
                try {
                    InputStreamDataEmitter.this.f45104b.close();
                } catch (Exception e10) {
                    e4 = e10;
                }
                CompletedCallback completedCallback = InputStreamDataEmitter.this.f45110h;
                if (completedCallback != null) {
                    completedCallback.g(e4);
                }
            }
        });
    }

    @Override // com.koushikdutta.async.DataEmitter
    public CompletedCallback B() {
        return this.f45110h;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void X(CompletedCallback completedCallback) {
        this.f45110h = completedCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f45103a;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f45105c = dataCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void close() {
        j(null);
        try {
            this.f45104b.close();
        } catch (Exception unused) {
        }
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return false;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f45106d;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void k() {
        this.f45106d = false;
        h();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public String n() {
        return null;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void pause() {
        this.f45106d = true;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f45105c;
    }
}
