package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.util.Allocator;
import com.koushikdutta.async.util.StreamUtility;
import com.koushikdutta.async.wrapper.AsyncSocketWrapper;
import com.koushikdutta.async.wrapper.DataEmitterWrapper;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class Util {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f44310a = false;

    public static void a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        int P;
        DataCallback dataCallback = null;
        while (!dataEmitter.i() && (dataCallback = dataEmitter.r0()) != null && (P = byteBufferList.P()) > 0) {
            dataCallback.s(dataEmitter, byteBufferList);
            if (P == byteBufferList.P() && dataCallback == dataEmitter.r0() && !dataEmitter.i()) {
                PrintStream printStream = System.out;
                printStream.println("handler: " + dataCallback);
                byteBufferList.O();
                if (!f44310a) {
                    throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
                }
                return;
            }
        }
        if (byteBufferList.P() == 0 || dataEmitter.i()) {
            return;
        }
        PrintStream printStream2 = System.out;
        printStream2.println("handler: " + dataCallback);
        PrintStream printStream3 = System.out;
        printStream3.println("emitter: " + dataEmitter);
        byteBufferList.O();
    }

    public static void b(DataEmitter dataEmitter, Exception exc) {
        if (dataEmitter == null) {
            return;
        }
        c(dataEmitter.B(), exc);
    }

    public static void c(CompletedCallback completedCallback, Exception exc) {
        if (completedCallback != null) {
            completedCallback.g(exc);
        }
    }

    public static DataEmitter d(DataEmitter dataEmitter, Class cls) {
        if (cls.isInstance(dataEmitter)) {
            return dataEmitter;
        }
        while (dataEmitter instanceof DataEmitterWrapper) {
            dataEmitter = ((AsyncSocketWrapper) dataEmitter).a();
            if (cls.isInstance(dataEmitter)) {
                return dataEmitter;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends AsyncSocket> T e(AsyncSocket asyncSocket, Class<T> cls) {
        boolean isInstance = cls.isInstance(asyncSocket);
        AsyncSocketWrapper asyncSocketWrapper = asyncSocket;
        if (isInstance) {
            return asyncSocket;
        }
        while (asyncSocketWrapper instanceof AsyncSocketWrapper) {
            T t9 = (T) asyncSocketWrapper.a();
            boolean isInstance2 = cls.isInstance(t9);
            asyncSocketWrapper = t9;
            if (isInstance2) {
                return t9;
            }
        }
        return null;
    }

    public static void f(final DataEmitter dataEmitter, final DataSink dataSink, final CompletedCallback completedCallback) {
        dataEmitter.b0(new DataCallback() { // from class: com.koushikdutta.async.Util.3
            @Override // com.koushikdutta.async.callback.DataCallback
            public void s(DataEmitter dataEmitter2, ByteBufferList byteBufferList) {
                DataSink.this.a0(byteBufferList);
                if (byteBufferList.P() > 0) {
                    dataEmitter2.pause();
                }
            }
        });
        dataSink.e0(new WritableCallback() { // from class: com.koushikdutta.async.Util.4
            @Override // com.koushikdutta.async.callback.WritableCallback
            public void a() {
                DataEmitter.this.k();
            }
        });
        final CompletedCallback completedCallback2 = new CompletedCallback() { // from class: com.koushikdutta.async.Util.5

            /* renamed from: a  reason: collision with root package name */
            boolean f44322a;

            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (this.f44322a) {
                    return;
                }
                this.f44322a = true;
                DataEmitter.this.b0(null);
                DataEmitter.this.X(null);
                dataSink.j0(null);
                dataSink.e0(null);
                completedCallback.g(exc);
            }
        };
        dataEmitter.X(completedCallback2);
        dataSink.j0(new CompletedCallback() { // from class: com.koushikdutta.async.Util.6
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (exc == null) {
                    exc = new IOException("sink was closed before emitter ended");
                }
                CompletedCallback.this.g(exc);
            }
        });
    }

    public static void g(File file, DataSink dataSink, final CompletedCallback completedCallback) {
        try {
            if (file != null && dataSink != null) {
                final FileInputStream a10 = h.b.a(new FileInputStream(file), file);
                i(a10, dataSink, new CompletedCallback() { // from class: com.koushikdutta.async.Util.7
                    @Override // com.koushikdutta.async.callback.CompletedCallback
                    public void g(Exception exc) {
                        try {
                            a10.close();
                            completedCallback.g(exc);
                        } catch (IOException e4) {
                            completedCallback.g(e4);
                        }
                    }
                });
                return;
            }
            completedCallback.g(null);
        } catch (Exception e4) {
            completedCallback.g(e4);
        }
    }

    public static void h(InputStream inputStream, long j4, DataSink dataSink, final CompletedCallback completedCallback) {
        CompletedCallback completedCallback2 = new CompletedCallback() { // from class: com.koushikdutta.async.Util.1

            /* renamed from: a  reason: collision with root package name */
            boolean f44311a;

            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (this.f44311a) {
                    return;
                }
                this.f44311a = true;
                CompletedCallback.this.g(exc);
            }
        };
        WritableCallback writableCallback = new WritableCallback(inputStream, j4, completedCallback2) { // from class: com.koushikdutta.async.Util.2

            /* renamed from: a  reason: collision with root package name */
            int f44313a = 0;

            /* renamed from: b  reason: collision with root package name */
            ByteBufferList f44314b = new ByteBufferList();

            /* renamed from: c  reason: collision with root package name */
            Allocator f44315c;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ InputStream f44317e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ long f44318f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ CompletedCallback f44319g;

            {
                this.f44318f = j4;
                this.f44319g = completedCallback2;
                this.f44315c = new Allocator().f((int) Math.min(1048576L, j4));
            }

            private void b() {
                DataSink.this.j0(null);
                DataSink.this.e0(null);
                this.f44314b.O();
                StreamUtility.a(this.f44317e);
            }

            @Override // com.koushikdutta.async.callback.WritableCallback
            public void a() {
                do {
                    try {
                        if (!this.f44314b.w()) {
                            ByteBuffer a10 = this.f44315c.a();
                            int read = this.f44317e.read(a10.array(), 0, (int) Math.min(this.f44318f - this.f44313a, a10.capacity()));
                            if (read != -1 && this.f44313a != this.f44318f) {
                                this.f44315c.g(read);
                                this.f44313a += read;
                                a10.position(0);
                                a10.limit(read);
                                this.f44314b.b(a10);
                            }
                            b();
                            this.f44319g.g(null);
                            return;
                        }
                        DataSink.this.a0(this.f44314b);
                    } catch (Exception e4) {
                        b();
                        this.f44319g.g(e4);
                        return;
                    }
                } while (!this.f44314b.w());
            }
        };
        dataSink.e0(writableCallback);
        dataSink.j0(completedCallback2);
        writableCallback.a();
    }

    public static void i(InputStream inputStream, DataSink dataSink, CompletedCallback completedCallback) {
        h(inputStream, 2147483647L, dataSink, completedCallback);
    }

    public static void j(AsyncSocket asyncSocket, AsyncSocket asyncSocket2, CompletedCallback completedCallback) {
        f(asyncSocket, asyncSocket2, completedCallback);
        f(asyncSocket2, asyncSocket, completedCallback);
    }

    public static void k(DataSink dataSink) {
        if (dataSink == null) {
            return;
        }
        l(dataSink.v());
    }

    public static void l(WritableCallback writableCallback) {
        if (writableCallback != null) {
            writableCallback.a();
        }
    }

    public static void m(final DataSink dataSink, final ByteBufferList byteBufferList, final CompletedCallback completedCallback) {
        WritableCallback writableCallback = new WritableCallback() { // from class: com.koushikdutta.async.Util.8
            @Override // com.koushikdutta.async.callback.WritableCallback
            public void a() {
                DataSink.this.a0(byteBufferList);
                if (byteBufferList.P() != 0 || completedCallback == null) {
                    return;
                }
                DataSink.this.e0(null);
                completedCallback.g(null);
            }
        };
        dataSink.e0(writableCallback);
        writableCallback.a();
    }

    public static void n(DataSink dataSink, byte[] bArr, CompletedCallback completedCallback) {
        ByteBuffer y9 = ByteBufferList.y(bArr.length);
        y9.put(bArr);
        y9.flip();
        ByteBufferList byteBufferList = new ByteBufferList();
        byteBufferList.b(y9);
        m(dataSink, byteBufferList, completedCallback);
    }
}
