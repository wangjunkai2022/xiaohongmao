package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v0;
import java.util.Collections;
import java.util.List;

/* compiled from: TextRenderer.java */
/* loaded from: classes2.dex */
public final class k extends com.google.android.exoplayer2.f implements Handler.Callback {
    private static final String B = "TextRenderer";
    private static final int C = 0;
    private static final int D = 1;
    private static final int E = 2;
    private static final int F = 0;
    private long A;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final Handler f25564m;

    /* renamed from: n  reason: collision with root package name */
    private final j f25565n;

    /* renamed from: o  reason: collision with root package name */
    private final g f25566o;

    /* renamed from: p  reason: collision with root package name */
    private final v0 f25567p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f25568q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f25569r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f25570s;

    /* renamed from: t  reason: collision with root package name */
    private int f25571t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Format f25572u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private f f25573v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private h f25574w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private i f25575x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private i f25576y;

    /* renamed from: z  reason: collision with root package name */
    private int f25577z;

    public k(j jVar, @Nullable Looper looper) {
        this(jVar, looper, g.f25560a);
    }

    private void O() {
        X(Collections.emptyList());
    }

    private long P() {
        if (this.f25577z == -1) {
            return Long.MAX_VALUE;
        }
        com.google.android.exoplayer2.util.a.g(this.f25575x);
        if (this.f25577z >= this.f25575x.d()) {
            return Long.MAX_VALUE;
        }
        return this.f25575x.c(this.f25577z);
    }

    private void Q(SubtitleDecoderException subtitleDecoderException) {
        String valueOf = String.valueOf(this.f25572u);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39);
        sb.append("Subtitle decoding failed. streamFormat=");
        sb.append(valueOf);
        w.e(B, sb.toString(), subtitleDecoderException);
        O();
        V();
    }

    private void R() {
        this.f25570s = true;
        this.f25573v = this.f25566o.b((Format) com.google.android.exoplayer2.util.a.g(this.f25572u));
    }

    private void S(List<a> list) {
        this.f25565n.r(list);
    }

    private void T() {
        this.f25574w = null;
        this.f25577z = -1;
        i iVar = this.f25575x;
        if (iVar != null) {
            iVar.o();
            this.f25575x = null;
        }
        i iVar2 = this.f25576y;
        if (iVar2 != null) {
            iVar2.o();
            this.f25576y = null;
        }
    }

    private void U() {
        T();
        ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).release();
        this.f25573v = null;
        this.f25571t = 0;
    }

    private void V() {
        U();
        R();
    }

    private void X(List<a> list) {
        Handler handler = this.f25564m;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            S(list);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        this.f25572u = null;
        this.A = com.google.android.exoplayer2.i.f23649b;
        O();
        U();
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j4, boolean z9) {
        O();
        this.f25568q = false;
        this.f25569r = false;
        this.A = com.google.android.exoplayer2.i.f23649b;
        if (this.f25571t != 0) {
            V();
            return;
        }
        T();
        ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).flush();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void L(Format[] formatArr, long j4, long j10) {
        this.f25572u = formatArr[0];
        if (this.f25573v != null) {
            this.f25571t = 1;
        } else {
            R();
        }
    }

    public void W(long j4) {
        com.google.android.exoplayer2.util.a.i(l());
        this.A = j4;
    }

    @Override // com.google.android.exoplayer2.g2
    public int a(Format format) {
        if (this.f25566o.a(format)) {
            return f2.a(format.exoMediaCryptoType == null ? 4 : 2);
        } else if (a0.r(format.sampleMimeType)) {
            return f2.a(1);
        } else {
            return f2.a(0);
        }
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return this.f25569r;
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        return true;
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public String getName() {
        return B;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            S((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.e2
    public void s(long j4, long j10) {
        boolean z9;
        if (l()) {
            long j11 = this.A;
            if (j11 != com.google.android.exoplayer2.i.f23649b && j4 >= j11) {
                T();
                this.f25569r = true;
            }
        }
        if (this.f25569r) {
            return;
        }
        if (this.f25576y == null) {
            ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).a(j4);
            try {
                this.f25576y = ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).b();
            } catch (SubtitleDecoderException e4) {
                Q(e4);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f25575x != null) {
            long P = P();
            z9 = false;
            while (P <= j4) {
                this.f25577z++;
                P = P();
                z9 = true;
            }
        } else {
            z9 = false;
        }
        i iVar = this.f25576y;
        if (iVar != null) {
            if (iVar.l()) {
                if (!z9 && P() == Long.MAX_VALUE) {
                    if (this.f25571t == 2) {
                        V();
                    } else {
                        T();
                        this.f25569r = true;
                    }
                }
            } else if (iVar.f21626b <= j4) {
                i iVar2 = this.f25575x;
                if (iVar2 != null) {
                    iVar2.o();
                }
                this.f25577z = iVar.a(j4);
                this.f25575x = iVar;
                this.f25576y = null;
                z9 = true;
            }
        }
        if (z9) {
            com.google.android.exoplayer2.util.a.g(this.f25575x);
            X(this.f25575x.b(j4));
        }
        if (this.f25571t == 2) {
            return;
        }
        while (!this.f25568q) {
            try {
                h hVar = this.f25574w;
                if (hVar == null) {
                    hVar = ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).d();
                    if (hVar == null) {
                        return;
                    }
                    this.f25574w = hVar;
                }
                if (this.f25571t == 1) {
                    hVar.n(4);
                    ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).c(hVar);
                    this.f25574w = null;
                    this.f25571t = 2;
                    return;
                }
                int M = M(this.f25567p, hVar, 0);
                if (M == -4) {
                    if (hVar.l()) {
                        this.f25568q = true;
                        this.f25570s = false;
                    } else {
                        Format format = this.f25567p.f27763b;
                        if (format == null) {
                            return;
                        }
                        hVar.f25561l = format.subsampleOffsetUs;
                        hVar.q();
                        this.f25570s &= !hVar.m();
                    }
                    if (!this.f25570s) {
                        ((f) com.google.android.exoplayer2.util.a.g(this.f25573v)).c(hVar);
                        this.f25574w = null;
                    }
                } else if (M == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e10) {
                Q(e10);
                return;
            }
        }
    }

    public k(j jVar, @Nullable Looper looper, g gVar) {
        super(3);
        this.f25565n = (j) com.google.android.exoplayer2.util.a.g(jVar);
        this.f25564m = looper == null ? null : z0.y(looper, this);
        this.f25566o = gVar;
        this.f25567p = new v0();
        this.A = com.google.android.exoplayer2.i.f23649b;
    }
}
