package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MetadataRenderer.java */
/* loaded from: classes2.dex */
public final class f extends com.google.android.exoplayer2.f implements Handler.Callback {

    /* renamed from: w  reason: collision with root package name */
    private static final String f24108w = "MetadataRenderer";

    /* renamed from: x  reason: collision with root package name */
    private static final int f24109x = 0;

    /* renamed from: m  reason: collision with root package name */
    private final c f24110m;

    /* renamed from: n  reason: collision with root package name */
    private final e f24111n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final Handler f24112o;

    /* renamed from: p  reason: collision with root package name */
    private final d f24113p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private b f24114q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f24115r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f24116s;

    /* renamed from: t  reason: collision with root package name */
    private long f24117t;

    /* renamed from: u  reason: collision with root package name */
    private long f24118u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private Metadata f24119v;

    public f(e eVar, @Nullable Looper looper) {
        this(eVar, looper, c.f24100a);
    }

    private void O(Metadata metadata, List<Metadata.Entry> list) {
        for (int i4 = 0; i4 < metadata.length(); i4++) {
            Format wrappedMetadataFormat = metadata.get(i4).getWrappedMetadataFormat();
            if (wrappedMetadataFormat != null && this.f24110m.a(wrappedMetadataFormat)) {
                b b10 = this.f24110m.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.g(metadata.get(i4).getWrappedMetadataBytes());
                this.f24113p.f();
                this.f24113p.p(bArr.length);
                ((ByteBuffer) z0.k(this.f24113p.f21572c)).put(bArr);
                this.f24113p.q();
                Metadata a10 = b10.a(this.f24113p);
                if (a10 != null) {
                    O(a10, list);
                }
            } else {
                list.add(metadata.get(i4));
            }
        }
    }

    private void P(Metadata metadata) {
        Handler handler = this.f24112o;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            Q(metadata);
        }
    }

    private void Q(Metadata metadata) {
        this.f24111n.o(metadata);
    }

    private boolean R(long j4) {
        boolean z9;
        Metadata metadata = this.f24119v;
        if (metadata == null || this.f24118u > j4) {
            z9 = false;
        } else {
            P(metadata);
            this.f24119v = null;
            this.f24118u = i.f23649b;
            z9 = true;
        }
        if (this.f24115r && this.f24119v == null) {
            this.f24116s = true;
        }
        return z9;
    }

    private void S() {
        if (this.f24115r || this.f24119v != null) {
            return;
        }
        this.f24113p.f();
        v0 A = A();
        int M = M(A, this.f24113p, 0);
        if (M != -4) {
            if (M == -5) {
                this.f24117t = ((Format) com.google.android.exoplayer2.util.a.g(A.f27763b)).subsampleOffsetUs;
            }
        } else if (this.f24113p.l()) {
            this.f24115r = true;
        } else {
            d dVar = this.f24113p;
            dVar.f24101l = this.f24117t;
            dVar.q();
            Metadata a10 = ((b) z0.k(this.f24114q)).a(this.f24113p);
            if (a10 != null) {
                ArrayList arrayList = new ArrayList(a10.length());
                O(a10, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.f24119v = new Metadata(arrayList);
                this.f24118u = this.f24113p.f21574e;
            }
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        this.f24119v = null;
        this.f24118u = i.f23649b;
        this.f24114q = null;
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j4, boolean z9) {
        this.f24119v = null;
        this.f24118u = i.f23649b;
        this.f24115r = false;
        this.f24116s = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void L(Format[] formatArr, long j4, long j10) {
        this.f24114q = this.f24110m.b(formatArr[0]);
    }

    @Override // com.google.android.exoplayer2.g2
    public int a(Format format) {
        if (this.f24110m.a(format)) {
            return f2.a(format.exoMediaCryptoType == null ? 4 : 2);
        }
        return f2.a(0);
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return this.f24116s;
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        return true;
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public String getName() {
        return f24108w;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            Q((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.e2
    public void s(long j4, long j10) {
        boolean z9 = true;
        while (z9) {
            S();
            z9 = R(j4);
        }
    }

    public f(e eVar, @Nullable Looper looper, c cVar) {
        super(5);
        this.f24111n = (e) com.google.android.exoplayer2.util.a.g(eVar);
        this.f24112o = looper == null ? null : z0.y(looper, this);
        this.f24110m = (c) com.google.android.exoplayer2.util.a.g(cVar);
        this.f24113p = new d();
        this.f24118u = i.f23649b;
    }
}
