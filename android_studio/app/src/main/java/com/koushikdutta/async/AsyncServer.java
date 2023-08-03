package com.koushikdutta.async;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.ListenCallback;
import com.koushikdutta.async.callback.SocketCreateCallback;
import com.koushikdutta.async.callback.ValueFunction;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.util.StreamUtility;
import java.io.Closeable;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class AsyncServer {

    /* renamed from: g  reason: collision with root package name */
    public static final String f44156g = "NIO";

    /* renamed from: h  reason: collision with root package name */
    static AsyncServer f44157h = new AsyncServer();

    /* renamed from: i  reason: collision with root package name */
    private static ExecutorService f44158i = W("AsyncServer-worker-");

    /* renamed from: j  reason: collision with root package name */
    private static final Comparator<InetAddress> f44159j = new Comparator<InetAddress>() { // from class: com.koushikdutta.async.AsyncServer.5
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(InetAddress inetAddress, InetAddress inetAddress2) {
            boolean z9 = inetAddress instanceof Inet4Address;
            if (z9 && (inetAddress2 instanceof Inet4Address)) {
                return 0;
            }
            if ((inetAddress instanceof Inet6Address) && (inetAddress2 instanceof Inet6Address)) {
                return 0;
            }
            return (z9 && (inetAddress2 instanceof Inet6Address)) ? -1 : 1;
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private static ExecutorService f44160k = W("AsyncServer-resolver-");

    /* renamed from: l  reason: collision with root package name */
    private static final ThreadLocal<AsyncServer> f44161l = new ThreadLocal<>();

    /* renamed from: m  reason: collision with root package name */
    private static final long f44162m = Long.MAX_VALUE;

    /* renamed from: a  reason: collision with root package name */
    private SelectorWrapper f44163a;

    /* renamed from: b  reason: collision with root package name */
    String f44164b;

    /* renamed from: c  reason: collision with root package name */
    boolean f44165c;

    /* renamed from: d  reason: collision with root package name */
    int f44166d;

    /* renamed from: e  reason: collision with root package name */
    PriorityQueue<Scheduled> f44167e;

    /* renamed from: f  reason: collision with root package name */
    Thread f44168f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class AsyncSelectorException extends IOException {
        public AsyncSelectorException(Exception exc) {
            super(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ConnectFuture extends SimpleFuture<AsyncNetworkSocket> {

        /* renamed from: k  reason: collision with root package name */
        SocketChannel f44206k;

        /* renamed from: l  reason: collision with root package name */
        ConnectCallback f44207l;

        private ConnectFuture() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.future.SimpleCancellable
        public void e() {
            super.e();
            try {
                SocketChannel socketChannel = this.f44206k;
                if (socketChannel != null) {
                    socketChannel.close();
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class NamedThreadFactory implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadGroup f44209a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f44210b = new AtomicInteger(1);

        /* renamed from: c  reason: collision with root package name */
        private final String f44211c;

        NamedThreadFactory(String str) {
            ThreadGroup threadGroup;
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                threadGroup = securityManager.getThreadGroup();
            } else {
                threadGroup = Thread.currentThread().getThreadGroup();
            }
            this.f44209a = threadGroup;
            this.f44211c = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f44209a;
            Thread thread = new Thread(threadGroup, runnable, this.f44211c + this.f44210b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    /* loaded from: classes3.dex */
    private static class ObjectHolder<T> {

        /* renamed from: a  reason: collision with root package name */
        T f44212a;

        private ObjectHolder() {
        }
    }

    /* loaded from: classes3.dex */
    private static class RunnableWrapper implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        boolean f44213a;

        /* renamed from: b  reason: collision with root package name */
        Runnable f44214b;

        /* renamed from: c  reason: collision with root package name */
        ThreadQueue f44215c;

        /* renamed from: d  reason: collision with root package name */
        Handler f44216d;

        private RunnableWrapper() {
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [com.koushikdutta.async.ThreadQueue, android.os.Handler, java.lang.Runnable] */
        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f44213a) {
                    return;
                }
                this.f44213a = true;
                try {
                    this.f44214b.run();
                } finally {
                    this.f44215c.remove(this);
                    this.f44216d.removeCallbacks(this);
                    this.f44215c = null;
                    this.f44216d = null;
                    this.f44214b = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class Scheduled implements Cancellable, Runnable {

        /* renamed from: a  reason: collision with root package name */
        public AsyncServer f44217a;

        /* renamed from: b  reason: collision with root package name */
        public Runnable f44218b;

        /* renamed from: c  reason: collision with root package name */
        public long f44219c;

        /* renamed from: d  reason: collision with root package name */
        boolean f44220d;

        public Scheduled(AsyncServer asyncServer, Runnable runnable, long j4) {
            this.f44217a = asyncServer;
            this.f44218b = runnable;
            this.f44219c = j4;
        }

        @Override // com.koushikdutta.async.future.Cancellable
        public boolean cancel() {
            boolean remove;
            synchronized (this.f44217a) {
                remove = this.f44217a.f44167e.remove(this);
                this.f44220d = remove;
            }
            return remove;
        }

        @Override // com.koushikdutta.async.future.Cancellable
        public boolean isCancelled() {
            return this.f44220d;
        }

        @Override // com.koushikdutta.async.future.Cancellable
        public boolean isDone() {
            boolean z9;
            synchronized (this.f44217a) {
                z9 = (this.f44220d || this.f44217a.f44167e.contains(this)) ? false : true;
            }
            return z9;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f44218b.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Scheduler implements Comparator<Scheduled> {

        /* renamed from: a  reason: collision with root package name */
        public static Scheduler f44221a = new Scheduler();

        private Scheduler() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Scheduled scheduled, Scheduled scheduled2) {
            long j4 = scheduled.f44219c;
            long j10 = scheduled2.f44219c;
            if (j4 == j10) {
                return 0;
            }
            return j4 > j10 ? 1 : -1;
        }
    }

    public AsyncServer() {
        this(null);
    }

    public static AsyncServer D() {
        return f44161l.get();
    }

    public static AsyncServer E() {
        return f44157h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(AsyncNetworkSocket asyncNetworkSocket) throws ClosedChannelException {
        SelectionKey k10 = asyncNetworkSocket.z().k(this.f44163a.a());
        k10.attach(asyncNetworkSocket);
        asyncNetworkSocket.w0(this, k10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(AsyncDatagramSocket asyncDatagramSocket, DatagramChannel datagramChannel, SocketAddress socketAddress) {
        try {
            F(asyncDatagramSocket);
            datagramChannel.connect(socketAddress);
        } catch (IOException unused) {
            StreamUtility.a(datagramChannel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InetAddress M(InetAddress inetAddress) throws Exception {
        return inetAddress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(ValueFunction valueFunction, int i4, boolean z9, SimpleFuture simpleFuture) {
        DatagramChannel datagramChannel;
        InetSocketAddress inetSocketAddress;
        try {
            datagramChannel = DatagramChannel.open();
            try {
                AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
                asyncDatagramSocket.q(datagramChannel);
                if (valueFunction == null) {
                    inetSocketAddress = new InetSocketAddress(i4);
                } else {
                    inetSocketAddress = new InetSocketAddress((InetAddress) valueFunction.getValue(), i4);
                }
                if (z9) {
                    datagramChannel.socket().setReuseAddress(z9);
                }
                datagramChannel.socket().bind(inetSocketAddress);
                F(asyncDatagramSocket);
                if (simpleFuture.e0(asyncDatagramSocket)) {
                    return;
                }
                datagramChannel.close();
            } catch (Exception e4) {
                e = e4;
                StreamUtility.a(datagramChannel);
                simpleFuture.b0(e);
            }
        } catch (Exception e10) {
            e = e10;
            datagramChannel = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InetAddress O(InetAddress[] inetAddressArr) throws Exception {
        return inetAddressArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(AsyncDatagramSocket asyncDatagramSocket, InetAddress inetAddress, int i4, boolean z9) {
        InetSocketAddress inetSocketAddress;
        try {
            DatagramChannel open = DatagramChannel.open();
            try {
                asyncDatagramSocket.q(open);
                if (inetAddress == null) {
                    inetSocketAddress = new InetSocketAddress(i4);
                } else {
                    inetSocketAddress = new InetSocketAddress(inetAddress, i4);
                }
                if (z9) {
                    open.socket().setReuseAddress(z9);
                }
                open.socket().bind(inetSocketAddress);
                F(asyncDatagramSocket);
            } catch (IOException e4) {
                Log.e(f44156g, "Datagram error", e4);
                StreamUtility.a(open);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R(Runnable runnable, Semaphore semaphore) {
        runnable.run();
        semaphore.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void S(SelectorWrapper selectorWrapper) {
        try {
            selectorWrapper.q();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T(SelectorWrapper selectorWrapper) {
        try {
            selectorWrapper.q();
        } catch (Exception unused) {
        }
    }

    private static long V(AsyncServer asyncServer, PriorityQueue<Scheduled> priorityQueue) {
        long j4 = Long.MAX_VALUE;
        while (true) {
            Scheduled scheduled = null;
            synchronized (asyncServer) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (priorityQueue.size() > 0) {
                    Scheduled remove = priorityQueue.remove();
                    long j10 = remove.f44219c;
                    if (j10 <= elapsedRealtime) {
                        scheduled = remove;
                    } else {
                        priorityQueue.add(remove);
                        j4 = j10 - elapsedRealtime;
                    }
                }
            }
            if (scheduled == null) {
                asyncServer.f44166d = 0;
                return j4;
            }
            scheduled.run();
        }
    }

    private static ExecutorService W(String str) {
        return new ThreadPoolExecutor(0, 4, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory(str));
    }

    public static void d0(Handler handler, Runnable runnable) {
        RunnableWrapper runnableWrapper = new RunnableWrapper();
        ThreadQueue b10 = ThreadQueue.b(handler.getLooper().getThread());
        runnableWrapper.f44215c = b10;
        runnableWrapper.f44216d = handler;
        runnableWrapper.f44214b = runnable;
        b10.add(runnableWrapper);
        handler.post(runnableWrapper);
        b10.f44309b.release();
    }

    private void g0() {
        synchronized (this) {
            SelectorWrapper selectorWrapper = this.f44163a;
            if (selectorWrapper == null) {
                try {
                    final SelectorWrapper selectorWrapper2 = new SelectorWrapper(SelectorProvider.provider().openSelector());
                    this.f44163a = selectorWrapper2;
                    final PriorityQueue<Scheduled> priorityQueue = this.f44167e;
                    Thread thread = new Thread(this.f44164b) { // from class: com.koushikdutta.async.AsyncServer.8
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                AsyncServer.f44161l.set(AsyncServer.this);
                                AsyncServer.h0(AsyncServer.this, selectorWrapper2, priorityQueue);
                            } finally {
                                AsyncServer.f44161l.remove();
                            }
                        }
                    };
                    this.f44168f = thread;
                    thread.start();
                    return;
                } catch (IOException e4) {
                    throw new RuntimeException("unable to create selector?", e4);
                }
            }
            PriorityQueue<Scheduled> priorityQueue2 = this.f44167e;
            try {
                j0(this, selectorWrapper, priorityQueue2);
            } catch (AsyncSelectorException e10) {
                Log.i(f44156g, "Selector closed", e10);
                try {
                    selectorWrapper.a().close();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h0(AsyncServer asyncServer, SelectorWrapper selectorWrapper, PriorityQueue<Scheduled> priorityQueue) {
        while (true) {
            try {
                j0(asyncServer, selectorWrapper, priorityQueue);
            } catch (AsyncSelectorException e4) {
                if (!(e4.getCause() instanceof ClosedSelectorException)) {
                    Log.i(f44156g, "Selector exception, shutting down", e4);
                }
                StreamUtility.a(selectorWrapper);
            }
            synchronized (asyncServer) {
                if (!selectorWrapper.isOpen() || (selectorWrapper.b().size() <= 0 && priorityQueue.size() <= 0)) {
                    break;
                }
            }
        }
        k0(selectorWrapper);
        if (asyncServer.f44163a == selectorWrapper) {
            asyncServer.f44167e = new PriorityQueue<>(1, Scheduler.f44221a);
            asyncServer.f44163a = null;
            asyncServer.f44168f = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.koushikdutta.async.callback.ConnectCallback] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.koushikdutta.async.AsyncNetworkSocket, java.lang.Object, com.koushikdutta.async.AsyncSocket] */
    private static void j0(AsyncServer asyncServer, SelectorWrapper selectorWrapper, PriorityQueue<Scheduled> priorityQueue) throws AsyncSelectorException {
        boolean z9;
        SelectionKey selectionKey;
        SelectionKey selectionKey2;
        long V = V(asyncServer, priorityQueue);
        try {
            synchronized (asyncServer) {
                if (selectorWrapper.i() != 0) {
                    z9 = false;
                } else if (selectorWrapper.b().size() == 0 && V == Long.MAX_VALUE) {
                    return;
                } else {
                    z9 = true;
                }
                if (z9) {
                    if (V == Long.MAX_VALUE) {
                        selectorWrapper.d();
                    } else {
                        selectorWrapper.h(V);
                    }
                }
                Set<SelectionKey> k10 = selectorWrapper.k();
                for (SelectionKey selectionKey3 : k10) {
                    try {
                        selectionKey = 0;
                    } catch (CancelledKeyException unused) {
                    }
                    if (selectionKey3.isAcceptable()) {
                        try {
                            SocketChannel accept = ((ServerSocketChannel) selectionKey3.channel()).accept();
                            if (accept != null) {
                                try {
                                    accept.configureBlocking(false);
                                    selectionKey = accept.register(selectorWrapper.a(), 1);
                                    AsyncNetworkSocket asyncNetworkSocket = new AsyncNetworkSocket();
                                    asyncNetworkSocket.s(accept, (InetSocketAddress) accept.socket().getRemoteSocketAddress());
                                    asyncNetworkSocket.w0(asyncServer, selectionKey);
                                    selectionKey.attach(asyncNetworkSocket);
                                    ((ListenCallback) selectionKey3.attachment()).d0(asyncNetworkSocket);
                                } catch (IOException unused2) {
                                    selectionKey2 = selectionKey;
                                    selectionKey = accept;
                                    StreamUtility.a(new Closeable[]{selectionKey});
                                    if (selectionKey2 != null) {
                                        selectionKey2.cancel();
                                    }
                                }
                            }
                        } catch (IOException unused3) {
                            selectionKey2 = null;
                        }
                    } else if (selectionKey3.isReadable()) {
                        asyncServer.X(((AsyncNetworkSocket) selectionKey3.attachment()).o0());
                    } else if (selectionKey3.isWritable()) {
                        ((AsyncNetworkSocket) selectionKey3.attachment()).d0();
                    } else if (selectionKey3.isConnectable()) {
                        ConnectFuture connectFuture = (ConnectFuture) selectionKey3.attachment();
                        SocketChannel socketChannel = (SocketChannel) selectionKey3.channel();
                        selectionKey3.interestOps(1);
                        try {
                            socketChannel.finishConnect();
                            ?? asyncNetworkSocket2 = new AsyncNetworkSocket();
                            asyncNetworkSocket2.w0(asyncServer, selectionKey3);
                            asyncNetworkSocket2.s(socketChannel, (InetSocketAddress) socketChannel.socket().getRemoteSocketAddress());
                            selectionKey3.attach(asyncNetworkSocket2);
                            if (connectFuture.e0(asyncNetworkSocket2)) {
                                connectFuture.f44207l.a(null, asyncNetworkSocket2);
                            }
                        } catch (IOException e4) {
                            selectionKey3.cancel();
                            StreamUtility.a(socketChannel);
                            if (connectFuture.b0(e4)) {
                                connectFuture.f44207l.a(e4, null);
                            }
                        }
                    } else {
                        Log.i(f44156g, "wtf");
                        throw new RuntimeException("Unknown key state.");
                        break;
                    }
                }
                k10.clear();
            }
        } catch (Exception e10) {
            throw new AsyncSelectorException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k0(SelectorWrapper selectorWrapper) {
        l0(selectorWrapper);
        StreamUtility.a(selectorWrapper);
    }

    private static void l0(SelectorWrapper selectorWrapper) {
        try {
            for (SelectionKey selectionKey : selectorWrapper.b()) {
                StreamUtility.a(selectionKey.channel());
                try {
                    selectionKey.cancel();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    private static void o0(final SelectorWrapper selectorWrapper) {
        f44158i.execute(new Runnable() { // from class: com.koushikdutta.async.n
            @Override // java.lang.Runnable
            public final void run() {
                AsyncServer.T(SelectorWrapper.this);
            }
        });
    }

    private Cancellable w(final ValueFunction<InetAddress> valueFunction, final int i4, final boolean z9, FutureCallback<AsyncDatagramSocket> futureCallback) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.B(futureCallback);
        c0(new Runnable() { // from class: com.koushikdutta.async.m
            @Override // java.lang.Runnable
            public final void run() {
                AsyncServer.this.N(valueFunction, i4, z9, simpleFuture);
            }
        });
        return simpleFuture;
    }

    public Thread A() {
        return this.f44168f;
    }

    public Future<InetAddress[]> B(final String str) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        f44160k.execute(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final InetAddress[] allByName = InetAddress.getAllByName(str);
                    Arrays.sort(allByName, AsyncServer.f44159j);
                    if (allByName != null && allByName.length != 0) {
                        AsyncServer.this.c0(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                simpleFuture.c0(null, allByName);
                            }
                        });
                        return;
                    }
                    throw new HostnameResolutionException("no addresses for host");
                } catch (Exception e4) {
                    AsyncServer.this.c0(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            simpleFuture.c0(e4, null);
                        }
                    });
                }
            }
        });
        return simpleFuture;
    }

    public Future<InetAddress> C(String str) {
        return B(str).F(j.f45067a);
    }

    public boolean G() {
        return this.f44168f == Thread.currentThread();
    }

    public boolean H() {
        Thread thread = this.f44168f;
        return thread == null || thread == Thread.currentThread();
    }

    public boolean I() {
        return this.f44163a != null;
    }

    public void J() {
        synchronized (this) {
            this.f44165c = true;
        }
        n0(false);
    }

    public AsyncServerSocket U(final InetAddress inetAddress, final int i4, final ListenCallback listenCallback) {
        final ObjectHolder objectHolder = new ObjectHolder();
        i0(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v0, types: [com.koushikdutta.async.AsyncServer$2$1, T, com.koushikdutta.async.AsyncServerSocket] */
            @Override // java.lang.Runnable
            public void run() {
                final ServerSocketChannelWrapper serverSocketChannelWrapper;
                IOException e4;
                final ServerSocketChannel serverSocketChannel;
                InetSocketAddress inetSocketAddress;
                try {
                    serverSocketChannel = ServerSocketChannel.open();
                    try {
                        serverSocketChannelWrapper = new ServerSocketChannelWrapper(serverSocketChannel);
                        try {
                            if (inetAddress == null) {
                                inetSocketAddress = new InetSocketAddress(i4);
                            } else {
                                inetSocketAddress = new InetSocketAddress(inetAddress, i4);
                            }
                            serverSocketChannel.socket().bind(inetSocketAddress);
                            final SelectionKey k10 = serverSocketChannelWrapper.k(AsyncServer.this.f44163a.a());
                            k10.attach(listenCallback);
                            ListenCallback listenCallback2 = listenCallback;
                            ObjectHolder objectHolder2 = objectHolder;
                            ?? r52 = new AsyncServerSocket() { // from class: com.koushikdutta.async.AsyncServer.2.1
                                @Override // com.koushikdutta.async.AsyncServerSocket
                                public int b() {
                                    return serverSocketChannel.socket().getLocalPort();
                                }

                                @Override // com.koushikdutta.async.AsyncServerSocket
                                public void stop() {
                                    StreamUtility.a(serverSocketChannelWrapper);
                                    try {
                                        k10.cancel();
                                    } catch (Exception unused) {
                                    }
                                }
                            };
                            objectHolder2.f44212a = r52;
                            listenCallback2.E(r52);
                        } catch (IOException e10) {
                            e4 = e10;
                            Log.e(AsyncServer.f44156g, "wtf", e4);
                            StreamUtility.a(serverSocketChannelWrapper, serverSocketChannel);
                            listenCallback.g(e4);
                        }
                    } catch (IOException e11) {
                        serverSocketChannelWrapper = null;
                        e4 = e11;
                    }
                } catch (IOException e12) {
                    serverSocketChannelWrapper = null;
                    e4 = e12;
                    serverSocketChannel = null;
                }
            }
        });
        return (AsyncServerSocket) objectHolder.f44212a;
    }

    protected void X(int i4) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Y(int i4) {
    }

    public AsyncDatagramSocket Z() {
        return a0(null, 0, false);
    }

    public AsyncDatagramSocket a0(final InetAddress inetAddress, final int i4, final boolean z9) {
        final AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
        Runnable runnable = new Runnable() { // from class: com.koushikdutta.async.k
            @Override // java.lang.Runnable
            public final void run() {
                AsyncServer.this.P(asyncDatagramSocket, inetAddress, i4, z9);
            }
        };
        if (A() != Thread.currentThread()) {
            i0(runnable);
            return asyncDatagramSocket;
        }
        runnable.run();
        return asyncDatagramSocket;
    }

    public Cancellable b0(final CompletedCallback completedCallback, final Exception exc) {
        return c0(new Runnable() { // from class: com.koushikdutta.async.p
            @Override // java.lang.Runnable
            public final void run() {
                CompletedCallback.this.g(exc);
            }
        });
    }

    public Cancellable c0(Runnable runnable) {
        return e0(runnable, 0L);
    }

    public Cancellable e0(Runnable runnable, long j4) {
        synchronized (this) {
            if (this.f44165c) {
                return SimpleCancellable.f44426e;
            }
            long j10 = 0;
            int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
            if (i4 > 0) {
                j10 = SystemClock.elapsedRealtime() + j4;
            } else if (i4 == 0) {
                int i10 = this.f44166d;
                this.f44166d = i10 + 1;
                j10 = i10;
            } else if (this.f44167e.size() > 0) {
                j10 = Math.min(0L, this.f44167e.peek().f44219c - 1);
            }
            PriorityQueue<Scheduled> priorityQueue = this.f44167e;
            Scheduled scheduled = new Scheduled(this, runnable, j10);
            priorityQueue.add(scheduled);
            if (this.f44163a == null) {
                g0();
            }
            if (!G()) {
                o0(this.f44163a);
            }
            return scheduled;
        }
    }

    public Cancellable f0(Runnable runnable) {
        if (Thread.currentThread() == A()) {
            runnable.run();
            return null;
        }
        return e0(runnable, -1L);
    }

    public void i0(final Runnable runnable) {
        if (Thread.currentThread() == this.f44168f) {
            c0(runnable);
            V(this, this.f44167e);
            return;
        }
        synchronized (this) {
            if (this.f44165c) {
                return;
            }
            final Semaphore semaphore = new Semaphore(0);
            c0(new Runnable() { // from class: com.koushikdutta.async.q
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncServer.R(runnable, semaphore);
                }
            });
            try {
                semaphore.acquire();
            } catch (InterruptedException e4) {
                Log.e(f44156g, "run", e4);
            }
        }
    }

    public void m0() {
        n0(false);
    }

    public void n0(boolean z9) {
        synchronized (this) {
            boolean G = G();
            final SelectorWrapper selectorWrapper = this.f44163a;
            if (selectorWrapper == null) {
                return;
            }
            final Semaphore semaphore = new Semaphore(0);
            this.f44167e.add(new Scheduled(this, new Runnable() { // from class: com.koushikdutta.async.AsyncServer.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncServer.k0(selectorWrapper);
                    semaphore.release();
                }
            }, 0L));
            f44158i.execute(new Runnable() { // from class: com.koushikdutta.async.o
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncServer.S(SelectorWrapper.this);
                }
            });
            l0(selectorWrapper);
            this.f44167e = new PriorityQueue<>(1, Scheduler.f44221a);
            this.f44163a = null;
            this.f44168f = null;
            if (G || !z9) {
                return;
            }
            try {
                semaphore.acquire();
            } catch (Exception unused) {
            }
        }
    }

    public AsyncDatagramSocket q(final String str, final int i4) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        final AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
        asyncDatagramSocket.q(open);
        i0(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i4);
                    AsyncServer.this.F(asyncDatagramSocket);
                    open.connect(inetSocketAddress);
                } catch (IOException e4) {
                    Log.e(AsyncServer.f44156g, "Datagram error", e4);
                    StreamUtility.a(open);
                }
            }
        });
        return asyncDatagramSocket;
    }

    public AsyncDatagramSocket r(final SocketAddress socketAddress) throws IOException {
        final AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
        final DatagramChannel open = DatagramChannel.open();
        asyncDatagramSocket.q(open);
        Runnable runnable = new Runnable() { // from class: com.koushikdutta.async.l
            @Override // java.lang.Runnable
            public final void run() {
                AsyncServer.this.K(asyncDatagramSocket, open, socketAddress);
            }
        };
        if (A() != Thread.currentThread()) {
            i0(runnable);
            return asyncDatagramSocket;
        }
        runnable.run();
        return asyncDatagramSocket;
    }

    public ConnectFuture s(final InetSocketAddress inetSocketAddress, final ConnectCallback connectCallback, final SocketCreateCallback socketCreateCallback) {
        final ConnectFuture connectFuture = new ConnectFuture();
        c0(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.3
            @Override // java.lang.Runnable
            public void run() {
                SocketChannel socketChannel;
                if (connectFuture.isCancelled()) {
                    return;
                }
                ConnectFuture connectFuture2 = connectFuture;
                connectFuture2.f44207l = connectCallback;
                SelectionKey selectionKey = null;
                try {
                    socketChannel = SocketChannel.open();
                    connectFuture2.f44206k = socketChannel;
                } catch (Throwable th) {
                    th = th;
                    socketChannel = null;
                }
                try {
                    socketChannel.configureBlocking(false);
                    selectionKey = socketChannel.register(AsyncServer.this.f44163a.a(), 8);
                    selectionKey.attach(connectFuture);
                    SocketCreateCallback socketCreateCallback2 = socketCreateCallback;
                    if (socketCreateCallback2 != null) {
                        socketCreateCallback2.a(socketChannel.socket().getLocalPort());
                    }
                    socketChannel.connect(inetSocketAddress);
                } catch (Throwable th2) {
                    th = th2;
                    if (selectionKey != null) {
                        selectionKey.cancel();
                    }
                    StreamUtility.a(socketChannel);
                    connectFuture.b0(new RuntimeException(th));
                }
            }
        });
        return connectFuture;
    }

    public Cancellable t(InetSocketAddress inetSocketAddress, ConnectCallback connectCallback) {
        return s(inetSocketAddress, connectCallback, null);
    }

    public Cancellable u(String str, int i4, ConnectCallback connectCallback) {
        return v(InetSocketAddress.createUnresolved(str, i4), connectCallback);
    }

    public Cancellable v(final InetSocketAddress inetSocketAddress, final ConnectCallback connectCallback) {
        if (!inetSocketAddress.isUnresolved()) {
            return t(inetSocketAddress, connectCallback);
        }
        final SimpleFuture simpleFuture = new SimpleFuture();
        Future<InetAddress> C = C(inetSocketAddress.getHostName());
        simpleFuture.b(C);
        C.B(new FutureCallback<InetAddress>() { // from class: com.koushikdutta.async.AsyncServer.4
            @Override // com.koushikdutta.async.future.FutureCallback
            /* renamed from: a */
            public void c(Exception exc, InetAddress inetAddress) {
                if (exc != null) {
                    connectCallback.a(exc, null);
                    simpleFuture.b0(exc);
                    return;
                }
                simpleFuture.Z((ConnectFuture) AsyncServer.this.t(new InetSocketAddress(inetAddress, inetSocketAddress.getPort()), connectCallback));
            }
        });
        return simpleFuture;
    }

    public Cancellable x(final String str, int i4, boolean z9, FutureCallback<AsyncDatagramSocket> futureCallback) {
        return w(new ValueFunction() { // from class: com.koushikdutta.async.h
            @Override // com.koushikdutta.async.callback.ValueFunction
            public final Object getValue() {
                InetAddress byName;
                byName = InetAddress.getByName(str);
                return byName;
            }
        }, i4, z9, futureCallback);
    }

    public Cancellable y(final InetAddress inetAddress, int i4, boolean z9, FutureCallback<AsyncDatagramSocket> futureCallback) {
        return w(new ValueFunction() { // from class: com.koushikdutta.async.i
            @Override // com.koushikdutta.async.callback.ValueFunction
            public final Object getValue() {
                InetAddress M;
                M = AsyncServer.M(inetAddress);
                return M;
            }
        }, i4, z9, futureCallback);
    }

    public void z() {
        c0(new Runnable() { // from class: com.koushikdutta.async.AsyncServer.9
            @Override // java.lang.Runnable
            public void run() {
                if (AsyncServer.this.f44163a == null) {
                    Log.i(AsyncServer.f44156g, "Server dump not possible. No selector?");
                    return;
                }
                Log.i(AsyncServer.f44156g, "Key Count: " + AsyncServer.this.f44163a.b().size());
                Iterator<SelectionKey> it = AsyncServer.this.f44163a.b().iterator();
                while (it.hasNext()) {
                    Log.i(AsyncServer.f44156g, "Key: " + it.next());
                }
            }
        });
    }

    public AsyncServer(String str) {
        this.f44166d = 0;
        this.f44167e = new PriorityQueue<>(1, Scheduler.f44221a);
        this.f44164b = str == null ? "AsyncServer" : str;
    }
}
