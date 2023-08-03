package com.facebook.imagepipeline.producers;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.w;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class PriorityNetworkFetcher<FETCH_STATE extends w> implements l0<c<FETCH_STATE>> {

    /* renamed from: s  reason: collision with root package name */
    public static final String f12841s = "PriorityNetworkFetcher";
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    static final int f12842t = -1;
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    static final int f12843u = -1;

    /* renamed from: a  reason: collision with root package name */
    private final l0<FETCH_STATE> f12844a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12845b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12846c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12847d;

    /* renamed from: e  reason: collision with root package name */
    private final s0.c f12848e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f12849f;

    /* renamed from: g  reason: collision with root package name */
    private final LinkedList<c<FETCH_STATE>> f12850g;

    /* renamed from: h  reason: collision with root package name */
    private final LinkedList<c<FETCH_STATE>> f12851h;

    /* renamed from: i  reason: collision with root package name */
    private final HashSet<c<FETCH_STATE>> f12852i;

    /* renamed from: j  reason: collision with root package name */
    private final LinkedList<c<FETCH_STATE>> f12853j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f12854k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12855l;

    /* renamed from: m  reason: collision with root package name */
    private final int f12856m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f12857n;

    /* renamed from: o  reason: collision with root package name */
    private long f12858o;

    /* renamed from: p  reason: collision with root package name */
    private final long f12859p;

    /* renamed from: q  reason: collision with root package name */
    private final int f12860q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f12861r;

    /* loaded from: classes.dex */
    public static class NonrecoverableException extends Throwable {
        public NonrecoverableException(@Nullable String message) {
            super(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f12862a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l0.a f12863b;

        a(final c val$callback, final l0.a val$fetchState) {
            this.f12862a = val$callback;
            this.f12863b = val$fetchState;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            if (PriorityNetworkFetcher.this.f12857n) {
                return;
            }
            if (PriorityNetworkFetcher.this.f12855l || !PriorityNetworkFetcher.this.f12852i.contains(this.f12862a)) {
                PriorityNetworkFetcher.this.C(this.f12862a, "CANCEL");
                this.f12863b.b();
            }
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void c() {
            PriorityNetworkFetcher priorityNetworkFetcher = PriorityNetworkFetcher.this;
            c cVar = this.f12862a;
            priorityNetworkFetcher.m(cVar, cVar.b().getPriority() == Priority.HIGH);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements l0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f12865a;

        b(final c val$fetchState) {
            this.f12865a = val$fetchState;
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void a(Throwable throwable) {
            if ((PriorityNetworkFetcher.this.f12856m == -1 || this.f12865a.f12874m < PriorityNetworkFetcher.this.f12856m) && !(throwable instanceof NonrecoverableException)) {
                PriorityNetworkFetcher.this.D(this.f12865a);
                return;
            }
            PriorityNetworkFetcher.this.C(this.f12865a, "FAIL");
            l0.a aVar = this.f12865a.f12872k;
            if (aVar != null) {
                aVar.a(throwable);
            }
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void b() {
            PriorityNetworkFetcher.this.C(this.f12865a, "CANCEL");
            l0.a aVar = this.f12865a.f12872k;
            if (aVar != null) {
                aVar.b();
            }
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void c(InputStream response, int responseLength) throws IOException {
            l0.a aVar = this.f12865a.f12872k;
            if (aVar != null) {
                aVar.c(response, responseLength);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c<FETCH_STATE extends w> extends w {

        /* renamed from: f  reason: collision with root package name */
        public FETCH_STATE f12867f;

        /* renamed from: g  reason: collision with root package name */
        final long f12868g;

        /* renamed from: h  reason: collision with root package name */
        final int f12869h;

        /* renamed from: i  reason: collision with root package name */
        final int f12870i;

        /* renamed from: j  reason: collision with root package name */
        final int f12871j;
        @r7.h

        /* renamed from: k  reason: collision with root package name */
        l0.a f12872k;

        /* renamed from: l  reason: collision with root package name */
        long f12873l;

        /* renamed from: m  reason: collision with root package name */
        int f12874m;

        /* renamed from: n  reason: collision with root package name */
        int f12875n;

        /* renamed from: o  reason: collision with root package name */
        int f12876o;

        /* renamed from: p  reason: collision with root package name */
        final boolean f12877p;

        /* synthetic */ c(l lVar, s0 s0Var, w wVar, long j4, int i4, int i10, int i11, a aVar) {
            this(lVar, s0Var, wVar, j4, i4, i10, i11);
        }

        private c(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext, FETCH_STATE delegatedState, long enqueuedTimestamp, int hiPriCountWhenCreated, int lowPriCountWhenCreated, int currentlyFetchingCountWhenCreated) {
            super(consumer, producerContext);
            this.f12874m = 0;
            this.f12875n = 0;
            this.f12876o = 0;
            this.f12867f = delegatedState;
            this.f12868g = enqueuedTimestamp;
            this.f12869h = hiPriCountWhenCreated;
            this.f12870i = lowPriCountWhenCreated;
            this.f12877p = producerContext.getPriority() == Priority.HIGH;
            this.f12871j = currentlyFetchingCountWhenCreated;
        }
    }

    public PriorityNetworkFetcher(l0<FETCH_STATE> delegate, boolean isHiPriFifo, int maxOutstandingHiPri, int maxOutstandingLowPri, boolean inflightFetchesCanBeCancelled, int maxNumberOfRequeue, boolean doNotCancelRequests, int immediateRequeueCount, int requeueDelayTimeInMillis, boolean multipleDequeue) {
        this(delegate, isHiPriFifo, maxOutstandingHiPri, maxOutstandingLowPri, inflightFetchesCanBeCancelled, maxNumberOfRequeue, doNotCancelRequests, immediateRequeueCount, requeueDelayTimeInMillis, multipleDequeue, RealtimeSinceBootClock.get());
    }

    private void A(c<FETCH_STATE> fetchState) {
        if (this.f12853j.isEmpty()) {
            this.f12858o = this.f12848e.now();
        }
        fetchState.f12875n++;
        this.f12853j.addLast(fetchState);
    }

    private void B(c<FETCH_STATE> entry, boolean isHiPri) {
        if (isHiPri) {
            if (this.f12845b) {
                this.f12850g.addLast(entry);
                return;
            } else {
                this.f12850g.addFirst(entry);
                return;
            }
        }
        this.f12851h.addLast(entry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(c<FETCH_STATE> fetchState, String reasonForLogging) {
        synchronized (this.f12849f) {
            p0.a.e0(f12841s, "remove: %s %s", reasonForLogging, fetchState.h());
            this.f12852i.remove(fetchState);
            if (!this.f12850g.remove(fetchState)) {
                this.f12851h.remove(fetchState);
            }
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(c<FETCH_STATE> fetchState) {
        synchronized (this.f12849f) {
            p0.a.d0(f12841s, "requeue: %s", fetchState.h());
            boolean z9 = true;
            fetchState.f12874m++;
            fetchState.f12867f = this.f12844a.e(fetchState.a(), fetchState.b());
            this.f12852i.remove(fetchState);
            if (!this.f12850g.remove(fetchState)) {
                this.f12851h.remove(fetchState);
            }
            int i4 = this.f12860q;
            if (i4 != -1 && fetchState.f12874m > i4) {
                A(fetchState);
            } else {
                if (fetchState.b().getPriority() != Priority.HIGH) {
                    z9 = false;
                }
                B(fetchState, z9);
            }
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(c<FETCH_STATE> fetchState, boolean isNewHiPri) {
        synchronized (this.f12849f) {
            if (!(isNewHiPri ? this.f12851h : this.f12850g).remove(fetchState)) {
                n(fetchState);
                return;
            }
            p0.a.e0(f12841s, "change-pri: %s %s", isNewHiPri ? "HIPRI" : "LOWPRI", fetchState.h());
            fetchState.f12876o++;
            B(fetchState, isNewHiPri);
            q();
        }
    }

    private void n(c<FETCH_STATE> fetchState) {
        if (this.f12853j.remove(fetchState)) {
            fetchState.f12876o++;
            this.f12853j.addLast(fetchState);
        }
    }

    private void p(final c<FETCH_STATE> fetchState) {
        try {
            this.f12844a.a(fetchState.f12867f, new b(fetchState));
        } catch (Exception unused) {
            C(fetchState, "FAIL");
        }
    }

    private void q() {
        if (this.f12854k) {
            synchronized (this.f12849f) {
                x();
                int size = this.f12852i.size();
                c<FETCH_STATE> pollFirst = size < this.f12846c ? this.f12850g.pollFirst() : null;
                if (pollFirst == null && size < this.f12847d) {
                    pollFirst = this.f12851h.pollFirst();
                }
                if (pollFirst == null) {
                    return;
                }
                pollFirst.f12873l = this.f12848e.now();
                this.f12852i.add(pollFirst);
                p0.a.g0(f12841s, "fetching: %s (concurrent: %s hi-pri queue: %s low-pri queue: %s)", pollFirst.h(), Integer.valueOf(size), Integer.valueOf(this.f12850g.size()), Integer.valueOf(this.f12851h.size()));
                p(pollFirst);
                if (this.f12861r) {
                    q();
                }
            }
        }
    }

    private void x() {
        if (this.f12853j.isEmpty() || this.f12848e.now() - this.f12858o <= this.f12859p) {
            return;
        }
        Iterator<c<FETCH_STATE>> it = this.f12853j.iterator();
        while (it.hasNext()) {
            c<FETCH_STATE> next = it.next();
            B(next, next.b().getPriority() == Priority.HIGH);
        }
        this.f12853j.clear();
    }

    public void E() {
        this.f12854k = true;
        q();
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: F */
    public boolean c(c<FETCH_STATE> fetchState) {
        return this.f12844a.c(fetchState.f12867f);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: o */
    public c<FETCH_STATE> e(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext) {
        return new c<>(consumer, producerContext, this.f12844a.e(consumer, producerContext), this.f12848e.now(), this.f12850g.size(), this.f12851h.size(), this.f12852i.size(), null);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: r */
    public void a(final c<FETCH_STATE> fetchState, final l0.a callback) {
        fetchState.b().f(new a(fetchState, callback));
        synchronized (this.f12849f) {
            if (this.f12852i.contains(fetchState)) {
                String str = f12841s;
                p0.a.u(str, "fetch state was enqueued twice: " + fetchState);
                return;
            }
            boolean z9 = fetchState.b().getPriority() == Priority.HIGH;
            p0.a.e0(f12841s, "enqueue: %s %s", z9 ? "HI-PRI" : "LOW-PRI", fetchState.h());
            fetchState.f12872k = callback;
            B(fetchState, z9);
            q();
        }
    }

    @VisibleForTesting
    HashSet<c<FETCH_STATE>> s() {
        return this.f12852i;
    }

    @VisibleForTesting
    List<c<FETCH_STATE>> t() {
        return this.f12853j;
    }

    @Override // com.facebook.imagepipeline.producers.l0
    @r7.h
    /* renamed from: u */
    public Map<String, String> d(c<FETCH_STATE> fetchState, int byteSize) {
        Map<String, String> d4 = this.f12844a.d(fetchState.f12867f, byteSize);
        HashMap hashMap = d4 != null ? new HashMap(d4) : new HashMap();
        hashMap.put("pri_queue_time", "" + (fetchState.f12873l - fetchState.f12868g));
        hashMap.put("hipri_queue_size", "" + fetchState.f12869h);
        hashMap.put("lowpri_queue_size", "" + fetchState.f12870i);
        hashMap.put("requeueCount", "" + fetchState.f12874m);
        hashMap.put("priority_changed_count", "" + fetchState.f12876o);
        hashMap.put("request_initial_priority_is_high", "" + fetchState.f12877p);
        hashMap.put("currently_fetching_size", "" + fetchState.f12871j);
        hashMap.put("delay_count", "" + fetchState.f12875n);
        return hashMap;
    }

    @VisibleForTesting
    List<c<FETCH_STATE>> v() {
        return this.f12850g;
    }

    @VisibleForTesting
    List<c<FETCH_STATE>> w() {
        return this.f12851h;
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: y */
    public void b(c<FETCH_STATE> fetchState, int byteSize) {
        C(fetchState, "SUCCESS");
        this.f12844a.b(fetchState.f12867f, byteSize);
    }

    public void z() {
        this.f12854k = false;
    }

    public PriorityNetworkFetcher(l0<FETCH_STATE> delegate, boolean isHiPriFifo, int maxOutstandingHiPri, int maxOutstandingLowPri, boolean inflightFetchesCanBeCancelled, boolean infiniteRequeue, boolean doNotCancelRequests) {
        this(delegate, isHiPriFifo, maxOutstandingHiPri, maxOutstandingLowPri, inflightFetchesCanBeCancelled, infiniteRequeue ? -1 : 0, doNotCancelRequests, -1, 0, false, RealtimeSinceBootClock.get());
    }

    @VisibleForTesting
    public PriorityNetworkFetcher(l0<FETCH_STATE> delegate, boolean isHiPriFifo, int maxOutstandingHiPri, int maxOutstandingLowPri, boolean inflightFetchesCanBeCancelled, int maxNumberOfRequeue, boolean doNotCancelRequests, int immediateRequeueCount, int requeueDelayTimeInMillis, boolean multipleDequeue, s0.c clock) {
        this.f12849f = new Object();
        this.f12850g = new LinkedList<>();
        this.f12851h = new LinkedList<>();
        this.f12852i = new HashSet<>();
        this.f12853j = new LinkedList<>();
        this.f12854k = true;
        this.f12844a = delegate;
        this.f12845b = isHiPriFifo;
        this.f12846c = maxOutstandingHiPri;
        this.f12847d = maxOutstandingLowPri;
        if (maxOutstandingHiPri > maxOutstandingLowPri) {
            this.f12855l = inflightFetchesCanBeCancelled;
            this.f12856m = maxNumberOfRequeue;
            this.f12857n = doNotCancelRequests;
            this.f12860q = immediateRequeueCount;
            this.f12859p = requeueDelayTimeInMillis;
            this.f12861r = multipleDequeue;
            this.f12848e = clock;
            return;
        }
        throw new IllegalArgumentException("maxOutstandingHiPri should be > maxOutstandingLowPri");
    }
}
