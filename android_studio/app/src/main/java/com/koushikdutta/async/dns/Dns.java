package com.koushikdutta.async.dns;

import com.koushikdutta.async.AsyncDatagramSocket;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleFuture;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Random;

/* loaded from: classes3.dex */
public class Dns {
    private static void b(ByteBuffer byteBuffer, String str) {
        String[] split;
        for (String str2 : str.split("\\.")) {
            byteBuffer.put((byte) str2.length());
            byteBuffer.put(str2.getBytes());
        }
        byteBuffer.put((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(SimpleFuture simpleFuture, AsyncServer asyncServer, String str, boolean z9, FutureCallback futureCallback) {
        simpleFuture.Z(e(asyncServer, str, z9, futureCallback));
    }

    public static Future<DnsResponse> d(AsyncServer asyncServer, String str) {
        return e(asyncServer, str, false, null);
    }

    public static Future<DnsResponse> e(final AsyncServer asyncServer, final String str, final boolean z9, final FutureCallback<DnsResponse> futureCallback) {
        final AsyncDatagramSocket a02;
        if (!asyncServer.G()) {
            final SimpleFuture simpleFuture = new SimpleFuture();
            asyncServer.c0(new Runnable() { // from class: com.koushikdutta.async.dns.a
                @Override // java.lang.Runnable
                public final void run() {
                    Dns.c(SimpleFuture.this, asyncServer, str, z9, futureCallback);
                }
            });
            return simpleFuture;
        }
        ByteBuffer order = ByteBufferList.y(1024).order(ByteOrder.BIG_ENDIAN);
        short nextInt = (short) new Random().nextInt();
        short j4 = (short) j(0);
        if (!z9) {
            j4 = (short) k(j4);
        }
        order.putShort(nextInt);
        order.putShort(j4);
        order.putShort(z9 ? (short) 1 : (short) 2);
        order.putShort((short) 0);
        order.putShort((short) 0);
        order.putShort((short) 0);
        b(order, str);
        order.putShort(z9 ? (short) 12 : (short) 1);
        order.putShort((short) 1);
        if (!z9) {
            b(order, str);
            order.putShort((short) 28);
            order.putShort((short) 1);
        }
        order.flip();
        try {
            if (!z9) {
                a02 = asyncServer.r(new InetSocketAddress("8.8.8.8", 53));
            } else {
                a02 = AsyncServer.E().a0(null, 0, true);
                Field declaredField = DatagramSocket.class.getDeclaredField("impl");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(a02.O());
                Method declaredMethod = obj.getClass().getDeclaredMethod("join", InetAddress.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(obj, InetAddress.getByName("224.0.0.251"));
                ((DatagramSocket) a02.O()).setBroadcast(true);
            }
            final SimpleFuture<DnsResponse> simpleFuture2 = new SimpleFuture<DnsResponse>() { // from class: com.koushikdutta.async.dns.Dns.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.koushikdutta.async.future.SimpleCancellable
                public void f() {
                    super.f();
                    AsyncDatagramSocket.this.close();
                }
            };
            a02.b0(new DataCallback() { // from class: com.koushikdutta.async.dns.Dns.2
                @Override // com.koushikdutta.async.callback.DataCallback
                public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                    try {
                        DnsResponse a10 = DnsResponse.a(byteBufferList);
                        a10.f44363d = AsyncDatagramSocket.this.N();
                        if (!z9) {
                            AsyncDatagramSocket.this.close();
                            simpleFuture2.e0(a10);
                        } else {
                            futureCallback.c(null, a10);
                        }
                    } catch (Exception unused) {
                    }
                    byteBufferList.O();
                }
            });
            if (!z9) {
                a02.a0(new ByteBufferList(order));
            } else {
                a02.B0(new InetSocketAddress("224.0.0.251", 5353), order);
            }
            return simpleFuture2;
        } catch (Exception e4) {
            SimpleFuture simpleFuture3 = new SimpleFuture();
            simpleFuture3.b0(e4);
            if (z9) {
                futureCallback.c(e4, null);
            }
            return simpleFuture3;
        }
    }

    public static Future<DnsResponse> f(String str) {
        return e(AsyncServer.E(), str, false, null);
    }

    public static Cancellable g(AsyncServer asyncServer, String str, FutureCallback<DnsResponse> futureCallback) {
        return e(asyncServer, str, true, futureCallback);
    }

    public static Cancellable h(String str, FutureCallback<DnsResponse> futureCallback) {
        return g(AsyncServer.E(), str, futureCallback);
    }

    private static int i(int i4, int i10, int i11) {
        return i4 | (i10 << i11);
    }

    private static int j(int i4) {
        return i(i4, 0, 0);
    }

    private static int k(int i4) {
        return i(i4, 1, 8);
    }
}
