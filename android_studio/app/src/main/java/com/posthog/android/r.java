package com.posthog.android;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.JsonWriter;
import com.giphy.sdk.core.network.api.GPHApiClient;
import com.posthog.android.c;
import com.posthog.android.g;
import com.posthog.android.internal.Utils;
import com.posthog.android.l;
import com.posthog.android.payloads.BasePayload;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PostHogIntegration.java */
/* loaded from: classes3.dex */
public class r extends g<Void> {

    /* renamed from: o  reason: collision with root package name */
    static final int f47591o = 1000;

    /* renamed from: p  reason: collision with root package name */
    static final int f47592p = 32000;

    /* renamed from: q  reason: collision with root package name */
    static final int f47593q = 475000;

    /* renamed from: s  reason: collision with root package name */
    private static final String f47595s = "PostHog-PostHogDispatcher";

    /* renamed from: t  reason: collision with root package name */
    static final String f47596t = "PostHog";

    /* renamed from: a  reason: collision with root package name */
    private final Context f47597a;

    /* renamed from: b  reason: collision with root package name */
    private final l f47598b;

    /* renamed from: c  reason: collision with root package name */
    private final com.posthog.android.c f47599c;

    /* renamed from: d  reason: collision with root package name */
    private final int f47600d;

    /* renamed from: e  reason: collision with root package name */
    private final v f47601e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f47602f;

    /* renamed from: g  reason: collision with root package name */
    private final HandlerThread f47603g;

    /* renamed from: h  reason: collision with root package name */
    private final i f47604h;

    /* renamed from: i  reason: collision with root package name */
    private final com.posthog.android.b f47605i;

    /* renamed from: j  reason: collision with root package name */
    private final ExecutorService f47606j;

    /* renamed from: k  reason: collision with root package name */
    private final ScheduledExecutorService f47607k;

    /* renamed from: l  reason: collision with root package name */
    final Object f47608l = new Object();

    /* renamed from: m  reason: collision with root package name */
    private final com.posthog.android.e f47609m;

    /* renamed from: n  reason: collision with root package name */
    static final g.a f47590n = new a();

    /* renamed from: r  reason: collision with root package name */
    static final Charset f47594r = Charset.forName("UTF-8");

    /* compiled from: PostHogIntegration.java */
    /* loaded from: classes3.dex */
    static class a implements g.a {
        a() {
        }

        @Override // com.posthog.android.g.a
        public String a() {
            return r.f47596t;
        }

        @Override // com.posthog.android.g.a
        public g<?> b(PostHog postHog) {
            return r.o(postHog.m(), postHog.f47394k, postHog.f47395l, postHog.f47385b, postHog.f47386c, postHog.f47393j, postHog.f47401r, postHog.f47400q, postHog.s(), postHog.f47396m);
        }
    }

    /* compiled from: PostHogIntegration.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostHogIntegration.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (r.this.f47608l) {
                r.this.s();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostHogIntegration.java */
    /* loaded from: classes3.dex */
    public static class d implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        private final JsonWriter f47612a;

        /* renamed from: b  reason: collision with root package name */
        private final BufferedWriter f47613b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f47614c = false;

        d(OutputStream outputStream) {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream));
            this.f47613b = bufferedWriter;
            this.f47612a = new JsonWriter(bufferedWriter);
        }

        d a() throws IOException {
            this.f47612a.name("batch").beginArray();
            this.f47614c = false;
            return this;
        }

        d b() throws IOException {
            this.f47612a.beginObject();
            return this;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f47612a.close();
        }

        d d(String str) throws IOException {
            if (this.f47614c) {
                this.f47613b.write(44);
            } else {
                this.f47614c = true;
            }
            this.f47613b.write(str);
            return this;
        }

        d h() throws IOException {
            if (this.f47614c) {
                this.f47612a.endArray();
                return this;
            }
            throw new IOException("At least one payload must be provided.");
        }

        d i() throws IOException {
            this.f47612a.name("sent_at").value(Utils.H(new Date())).endObject();
            return this;
        }

        d k(String str) throws IOException {
            this.f47612a.name(GPHApiClient.f16935d).value(str);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostHogIntegration.java */
    /* loaded from: classes3.dex */
    public static class e implements l.a {

        /* renamed from: a  reason: collision with root package name */
        final d f47615a;

        /* renamed from: b  reason: collision with root package name */
        final com.posthog.android.e f47616b;

        /* renamed from: c  reason: collision with root package name */
        int f47617c;

        /* renamed from: d  reason: collision with root package name */
        int f47618d;

        e(d dVar, com.posthog.android.e eVar) {
            this.f47615a = dVar;
            this.f47616b = eVar;
        }

        @Override // com.posthog.android.l.a
        public boolean d(InputStream inputStream, int i4) throws IOException {
            InputStream a10 = this.f47616b.a(inputStream);
            int i10 = this.f47617c + i4;
            if (i10 > r.f47593q) {
                return false;
            }
            this.f47617c = i10;
            byte[] bArr = new byte[i4];
            a10.read(bArr, 0, i4);
            this.f47615a.d(new String(bArr, r.f47594r).trim());
            this.f47618d++;
            return true;
        }
    }

    /* compiled from: PostHogIntegration.java */
    /* loaded from: classes3.dex */
    static class f extends Handler {

        /* renamed from: b  reason: collision with root package name */
        static final int f47619b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final int f47620c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final r f47621a;

        f(Looper looper, r rVar) {
            super(looper);
            this.f47621a = rVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 0) {
                this.f47621a.r((BasePayload) message.obj);
            } else if (i4 == 1) {
                this.f47621a.v();
            } else {
                throw new AssertionError("Unknown dispatcher message: " + message.what);
            }
        }
    }

    r(Context context, com.posthog.android.c cVar, com.posthog.android.b bVar, ExecutorService executorService, l lVar, v vVar, long j4, int i4, i iVar, com.posthog.android.e eVar) {
        this.f47597a = context;
        this.f47599c = cVar;
        this.f47606j = executorService;
        this.f47598b = lVar;
        this.f47601e = vVar;
        this.f47604h = iVar;
        this.f47605i = bVar;
        this.f47600d = i4;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new Utils.c());
        this.f47607k = newScheduledThreadPool;
        this.f47609m = eVar;
        HandlerThread handlerThread = new HandlerThread(f47595s, 10);
        this.f47603g = handlerThread;
        handlerThread.start();
        this.f47602f = new f(handlerThread.getLooper(), this);
        newScheduledThreadPool.scheduleAtFixedRate(new b(), lVar.size() >= i4 ? 0L : j4, j4, TimeUnit.MILLISECONDS);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:13:0x001e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    static synchronized com.posthog.android.r o(android.content.Context r15, com.posthog.android.c r16, com.posthog.android.b r17, java.util.concurrent.ExecutorService r18, com.posthog.android.v r19, java.lang.String r20, long r21, int r23, com.posthog.android.i r24, com.posthog.android.e r25) {
        /*
            java.lang.Class<com.posthog.android.r> r1 = com.posthog.android.r.class
            monitor-enter(r1)
            r2 = 0
            java.lang.String r0 = "posthog-disk-queue"
            r4 = r15
            java.io.File r0 = r15.getDir(r0, r2)     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L1c
            r3 = r20
            com.posthog.android.t r0 = p(r0, r3)     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L1c
            com.posthog.android.l$c r3 = new com.posthog.android.l$c     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L1c
            r3.<init>(r0)     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L1c
            r13 = r24
            r8 = r3
            goto L2f
        L1a:
            r0 = move-exception
            goto L20
        L1c:
            r0 = move-exception
            goto L48
        L1e:
            r0 = move-exception
            r4 = r15
        L20:
            java.lang.String r3 = "Could not create disk queue. Falling back to memory queue."
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L1c
            r13 = r24
            r13.b(r0, r3, r2)     // Catch: java.lang.Throwable -> L1c
            com.posthog.android.l$b r0 = new com.posthog.android.l$b     // Catch: java.lang.Throwable -> L1c
            r0.<init>()     // Catch: java.lang.Throwable -> L1c
            r8 = r0
        L2f:
            com.posthog.android.r r0 = new com.posthog.android.r     // Catch: java.lang.Throwable -> L1c
            r3 = r0
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r9 = r19
            r10 = r21
            r12 = r23
            r13 = r24
            r14 = r25
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r12, r13, r14)     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r1)
            return r0
        L48:
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.posthog.android.r.o(android.content.Context, com.posthog.android.c, com.posthog.android.b, java.util.concurrent.ExecutorService, com.posthog.android.v, java.lang.String, long, int, com.posthog.android.i, com.posthog.android.e):com.posthog.android.r");
    }

    static t p(File file, String str) throws IOException {
        Utils.h(file);
        File file2 = new File(file, str);
        try {
            return new t(file2);
        } catch (IOException unused) {
            if (file2.delete()) {
                return new t(file2);
            }
            throw new IOException("Could not create queue file (" + str + ") in " + file + ".");
        }
    }

    private void q(BasePayload basePayload) {
        Handler handler = this.f47602f;
        handler.sendMessage(handler.obtainMessage(0, basePayload));
    }

    private boolean t() {
        return this.f47598b.size() > 0 && Utils.u(this.f47597a);
    }

    @Override // com.posthog.android.g
    public void a(com.posthog.android.payloads.a aVar) {
        q(aVar);
    }

    @Override // com.posthog.android.g
    public void b(com.posthog.android.payloads.b bVar) {
        q(bVar);
    }

    @Override // com.posthog.android.g
    public void c() {
        Handler handler = this.f47602f;
        handler.sendMessage(handler.obtainMessage(1));
    }

    @Override // com.posthog.android.g
    public void e(com.posthog.android.payloads.d dVar) {
        q(dVar);
    }

    @Override // com.posthog.android.g
    public void n(com.posthog.android.payloads.e eVar) {
        q(eVar);
    }

    void r(BasePayload basePayload) {
        x xVar = new x();
        xVar.putAll(basePayload);
        if (this.f47598b.size() >= 1000) {
            synchronized (this.f47608l) {
                if (this.f47598b.size() >= 1000) {
                    this.f47604h.c("Queue is at max capacity (%s), removing oldest payload.", Integer.valueOf(this.f47598b.size()));
                    try {
                        this.f47598b.d(1);
                    } catch (IOException e4) {
                        this.f47604h.b(e4, "Unable to remove oldest payload from queue.", new Object[0]);
                        return;
                    }
                }
            }
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f47605i.j(xVar, new OutputStreamWriter(this.f47609m.b(byteArrayOutputStream)));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray != null && byteArray.length != 0 && byteArray.length <= f47592p) {
                this.f47598b.a(byteArray);
                this.f47604h.f("Enqueued %s payload. %s elements in the queue.", basePayload, Integer.valueOf(this.f47598b.size()));
                if (this.f47598b.size() >= this.f47600d) {
                    v();
                    return;
                }
                return;
            }
            throw new IOException("Could not serialize payload " + xVar);
        } catch (IOException e10) {
            this.f47604h.b(e10, "Could not add payload %s to queue: %s.", xVar, this.f47598b);
        }
    }

    void s() {
        int i4;
        if (t()) {
            this.f47604h.f("Uploading payloads in queue.", new Object[0]);
            c.AbstractC0398c abstractC0398c = null;
            try {
                try {
                    try {
                        abstractC0398c = this.f47599c.a();
                        d a10 = new d(abstractC0398c.f47467c).b().k(this.f47599c.f47463b).a();
                        e eVar = new e(a10, this.f47609m);
                        this.f47598b.b(eVar);
                        a10.h().i().close();
                        i4 = eVar.f47618d;
                    } catch (c.d e4) {
                        e = e4;
                        i4 = 0;
                    }
                    try {
                        abstractC0398c.close();
                        Utils.e(abstractC0398c);
                        try {
                            this.f47598b.d(i4);
                            this.f47604h.f("Uploaded %s payloads. %s remain in the queue.", Integer.valueOf(i4), Integer.valueOf(this.f47598b.size()));
                            this.f47601e.b(i4);
                            if (this.f47598b.size() > 0) {
                                s();
                            }
                        } catch (IOException e10) {
                            i iVar = this.f47604h;
                            iVar.b(e10, "Unable to remove " + i4 + " payload(s) from queue.", new Object[0]);
                        }
                    } catch (c.d e11) {
                        e = e11;
                        if (e.a() && e.f47468a != 429) {
                            this.f47604h.b(e, "Payloads were rejected by server. Marked for removal.", new Object[0]);
                            try {
                                this.f47598b.d(i4);
                            } catch (IOException unused) {
                                i iVar2 = this.f47604h;
                                iVar2.b(e, "Unable to remove " + i4 + " payload(s) from queue.", new Object[0]);
                            }
                            Utils.e(abstractC0398c);
                            return;
                        }
                        this.f47604h.b(e, "Error while uploading payloads", new Object[0]);
                        Utils.e(abstractC0398c);
                    }
                } catch (IOException e12) {
                    this.f47604h.b(e12, "Error while uploading payloads", new Object[0]);
                    Utils.e(abstractC0398c);
                }
            } catch (Throwable th) {
                Utils.e(abstractC0398c);
                throw th;
            }
        }
    }

    void u() {
        this.f47607k.shutdownNow();
        this.f47603g.quit();
        Utils.e(this.f47598b);
    }

    void v() {
        if (t()) {
            if (this.f47606j.isShutdown()) {
                this.f47604h.c("A call to flush() was made after shutdown() has been called.  In-flight events may not be uploaded right away.", new Object[0]);
            } else {
                this.f47606j.submit(new c());
            }
        }
    }
}
