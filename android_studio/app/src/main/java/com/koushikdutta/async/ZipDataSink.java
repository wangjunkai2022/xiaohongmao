package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes3.dex */
public class ZipDataSink extends FilteredDataSink {

    /* renamed from: g  reason: collision with root package name */
    ByteArrayOutputStream f44332g;

    /* renamed from: h  reason: collision with root package name */
    ZipOutputStream f44333h;

    public ZipDataSink(DataSink dataSink) {
        super(dataSink);
        this.f44332g = new ByteArrayOutputStream();
        this.f44333h = new ZipOutputStream(this.f44332g);
    }

    @Override // com.koushikdutta.async.FilteredDataSink
    public ByteBufferList E(ByteBufferList byteBufferList) {
        if (byteBufferList != null) {
            while (byteBufferList.T() > 0) {
                try {
                    try {
                        ByteBuffer Q = byteBufferList.Q();
                        ByteBufferList.X(this.f44333h, Q);
                        ByteBufferList.M(Q);
                    } catch (IOException e4) {
                        K(e4);
                        if (byteBufferList != null) {
                            byteBufferList.O();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    if (byteBufferList != null) {
                        byteBufferList.O();
                    }
                    throw th;
                }
            }
        }
        ByteBufferList byteBufferList2 = new ByteBufferList(this.f44332g.toByteArray());
        this.f44332g.reset();
        if (byteBufferList != null) {
            byteBufferList.O();
        }
        return byteBufferList2;
    }

    public void F() throws IOException {
        this.f44333h.closeEntry();
    }

    public void G(ZipEntry zipEntry) throws IOException {
        this.f44333h.putNextEntry(zipEntry);
    }

    protected void K(Exception exc) {
        CompletedCallback f02 = f0();
        if (f02 != null) {
            f02.g(exc);
        }
    }

    @Override // com.koushikdutta.async.BufferedDataSink, com.koushikdutta.async.DataSink
    public void j() {
        try {
            this.f44333h.close();
            B(Integer.MAX_VALUE);
            a0(new ByteBufferList());
            super.j();
        } catch (IOException e4) {
            K(e4);
        }
    }
}
