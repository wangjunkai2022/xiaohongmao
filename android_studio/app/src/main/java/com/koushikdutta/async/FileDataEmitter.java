package com.koushikdutta.async;

import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.util.StreamUtility;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* loaded from: classes3.dex */
public class FileDataEmitter extends DataEmitterBase {

    /* renamed from: d  reason: collision with root package name */
    AsyncServer f44254d;

    /* renamed from: e  reason: collision with root package name */
    File f44255e;

    /* renamed from: f  reason: collision with root package name */
    DataCallback f44256f;

    /* renamed from: g  reason: collision with root package name */
    boolean f44257g;

    /* renamed from: i  reason: collision with root package name */
    FileChannel f44259i;

    /* renamed from: h  reason: collision with root package name */
    ByteBufferList f44258h = new ByteBufferList();

    /* renamed from: j  reason: collision with root package name */
    Runnable f44260j = new Runnable() { // from class: com.koushikdutta.async.FileDataEmitter.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                FileDataEmitter fileDataEmitter = FileDataEmitter.this;
                if (fileDataEmitter.f44259i == null) {
                    File file = FileDataEmitter.this.f44255e;
                    fileDataEmitter.f44259i = h.b.a(new FileInputStream(file), file).getChannel();
                }
                if (!FileDataEmitter.this.f44258h.x()) {
                    FileDataEmitter fileDataEmitter2 = FileDataEmitter.this;
                    Util.a(fileDataEmitter2, fileDataEmitter2.f44258h);
                    if (!FileDataEmitter.this.f44258h.x()) {
                        return;
                    }
                }
                do {
                    ByteBuffer y9 = ByteBufferList.y(8192);
                    if (-1 == FileDataEmitter.this.f44259i.read(y9)) {
                        FileDataEmitter.this.v0(null);
                        return;
                    }
                    y9.flip();
                    FileDataEmitter.this.f44258h.b(y9);
                    FileDataEmitter fileDataEmitter3 = FileDataEmitter.this;
                    Util.a(fileDataEmitter3, fileDataEmitter3.f44258h);
                    if (FileDataEmitter.this.f44258h.P() != 0) {
                        return;
                    }
                } while (!FileDataEmitter.this.i());
            } catch (Exception e4) {
                FileDataEmitter.this.v0(e4);
            }
        }
    };

    public FileDataEmitter(AsyncServer asyncServer, File file) {
        this.f44254d = asyncServer;
        this.f44255e = file;
        boolean z9 = !asyncServer.G();
        this.f44257g = z9;
        if (z9) {
            return;
        }
        w0();
    }

    private void w0() {
        this.f44254d.c0(this.f44260j);
    }

    @Override // com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44254d;
    }

    @Override // com.koushikdutta.async.DataEmitterBase, com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f44256f = dataCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void close() {
        try {
            this.f44259i.close();
        } catch (Exception unused) {
        }
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return false;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f44257g;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void k() {
        this.f44257g = false;
        w0();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void pause() {
        this.f44257g = true;
    }

    @Override // com.koushikdutta.async.DataEmitterBase, com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f44256f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.DataEmitterBase
    public void v0(Exception exc) {
        StreamUtility.a(this.f44259i);
        super.v0(exc);
    }
}
