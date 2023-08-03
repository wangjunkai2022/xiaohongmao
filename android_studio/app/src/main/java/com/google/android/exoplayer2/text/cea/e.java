package com.google.android.exoplayer2.text.cea;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.f;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.cea.e;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CeaDecoder.java */
/* loaded from: classes2.dex */
public abstract class e implements com.google.android.exoplayer2.text.f {

    /* renamed from: g  reason: collision with root package name */
    private static final int f25474g = 10;

    /* renamed from: h  reason: collision with root package name */
    private static final int f25475h = 2;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<b> f25476a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<i> f25477b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue<b> f25478c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f25479d;

    /* renamed from: e  reason: collision with root package name */
    private long f25480e;

    /* renamed from: f  reason: collision with root package name */
    private long f25481f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CeaDecoder.java */
    /* loaded from: classes2.dex */
    public static final class b extends h implements Comparable<b> {

        /* renamed from: m  reason: collision with root package name */
        private long f25482m;

        private b() {
        }

        @Override // java.lang.Comparable
        /* renamed from: v */
        public int compareTo(b bVar) {
            if (l() != bVar.l()) {
                return l() ? 1 : -1;
            }
            long j4 = this.f21574e - bVar.f21574e;
            if (j4 == 0) {
                j4 = this.f25482m - bVar.f25482m;
                if (j4 == 0) {
                    return 0;
                }
            }
            return j4 > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CeaDecoder.java */
    /* loaded from: classes2.dex */
    public static final class c extends i {

        /* renamed from: f  reason: collision with root package name */
        private f.a<c> f25483f;

        public c(f.a<c> aVar) {
            this.f25483f = aVar;
        }

        @Override // com.google.android.exoplayer2.decoder.f
        public final void o() {
            this.f25483f.a(this);
        }
    }

    public e() {
        for (int i4 = 0; i4 < 10; i4++) {
            this.f25476a.add(new b());
        }
        this.f25477b = new ArrayDeque<>();
        for (int i10 = 0; i10 < 2; i10++) {
            this.f25477b.add(new c(new f.a() { // from class: com.google.android.exoplayer2.text.cea.d
                @Override // com.google.android.exoplayer2.decoder.f.a
                public final void a(com.google.android.exoplayer2.decoder.f fVar) {
                    e.this.n((e.c) fVar);
                }
            }));
        }
        this.f25478c = new PriorityQueue<>();
    }

    private void m(b bVar) {
        bVar.f();
        this.f25476a.add(bVar);
    }

    @Override // com.google.android.exoplayer2.text.f
    public void a(long j4) {
        this.f25480e = j4;
    }

    protected abstract com.google.android.exoplayer2.text.e e();

    protected abstract void f(h hVar);

    @Override // com.google.android.exoplayer2.decoder.c
    public void flush() {
        this.f25481f = 0L;
        this.f25480e = 0L;
        while (!this.f25478c.isEmpty()) {
            m((b) z0.k(this.f25478c.poll()));
        }
        b bVar = this.f25479d;
        if (bVar != null) {
            m(bVar);
            this.f25479d = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.c
    @Nullable
    /* renamed from: g */
    public h d() throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.i(this.f25479d == null);
        if (this.f25476a.isEmpty()) {
            return null;
        }
        b pollFirst = this.f25476a.pollFirst();
        this.f25479d = pollFirst;
        return pollFirst;
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public abstract String getName();

    @Override // com.google.android.exoplayer2.decoder.c
    @Nullable
    /* renamed from: h */
    public i b() throws SubtitleDecoderException {
        if (this.f25477b.isEmpty()) {
            return null;
        }
        while (!this.f25478c.isEmpty() && ((b) z0.k(this.f25478c.peek())).f21574e <= this.f25480e) {
            b bVar = (b) z0.k(this.f25478c.poll());
            if (bVar.l()) {
                i iVar = (i) z0.k(this.f25477b.pollFirst());
                iVar.e(4);
                m(bVar);
                return iVar;
            }
            f(bVar);
            if (k()) {
                com.google.android.exoplayer2.text.e e4 = e();
                i iVar2 = (i) z0.k(this.f25477b.pollFirst());
                iVar2.p(bVar.f21574e, e4, Long.MAX_VALUE);
                m(bVar);
                return iVar2;
            }
            m(bVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final i i() {
        return this.f25477b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long j() {
        return this.f25480e;
    }

    protected abstract boolean k();

    @Override // com.google.android.exoplayer2.decoder.c
    /* renamed from: l */
    public void c(h hVar) throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.a(hVar == this.f25479d);
        b bVar = (b) hVar;
        if (bVar.k()) {
            m(bVar);
        } else {
            long j4 = this.f25481f;
            this.f25481f = 1 + j4;
            bVar.f25482m = j4;
            this.f25478c.add(bVar);
        }
        this.f25479d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n(i iVar) {
        iVar.f();
        this.f25477b.add(iVar);
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public void release() {
    }
}
