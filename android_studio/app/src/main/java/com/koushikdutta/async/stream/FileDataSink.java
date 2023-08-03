package com.koushikdutta.async.stream;

import com.koushikdutta.async.AsyncServer;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class FileDataSink extends OutputStreamDataSink {

    /* renamed from: h  reason: collision with root package name */
    File f45102h;

    public FileDataSink(AsyncServer asyncServer, File file) {
        super(asyncServer);
        this.f45102h = file;
    }

    @Override // com.koushikdutta.async.stream.OutputStreamDataSink
    public OutputStream f() throws IOException {
        OutputStream f10 = super.f();
        if (f10 == null) {
            this.f45102h.getParentFile().mkdirs();
            File file = this.f45102h;
            FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
            k(a10);
            return a10;
        }
        return f10;
    }
}
