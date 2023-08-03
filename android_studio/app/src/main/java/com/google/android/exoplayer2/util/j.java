package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.w1;
import com.google.android.exoplayer2.x1;
import io.sentry.protocol.y;
import java.util.List;
import java.util.Locale;

/* compiled from: DebugTextViewHelper.java */
/* loaded from: classes2.dex */
public class j implements v1.h, Runnable {

    /* renamed from: d  reason: collision with root package name */
    private static final int f27562d = 1000;

    /* renamed from: a  reason: collision with root package name */
    private final k2 f27563a;

    /* renamed from: b  reason: collision with root package name */
    private final TextView f27564b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27565c;

    public j(k2 k2Var, TextView textView) {
        a.a(k2Var.B0() == Looper.getMainLooper());
        this.f27563a = k2Var;
        this.f27564b = textView;
    }

    private static String F(float f10) {
        if (f10 == -1.0f || f10 == 1.0f) {
            return "";
        }
        String valueOf = String.valueOf(String.format(Locale.US, "%.02f", Float.valueOf(f10)));
        return valueOf.length() != 0 ? " par:".concat(valueOf) : new String(" par:");
    }

    private static String I(long j4, int i4) {
        return i4 == 0 ? "N/A" : String.valueOf((long) (j4 / i4));
    }

    private static String y(com.google.android.exoplayer2.decoder.d dVar) {
        if (dVar == null) {
            return "";
        }
        dVar.c();
        int i4 = dVar.f21594d;
        int i10 = dVar.f21596f;
        int i11 = dVar.f21595e;
        int i12 = dVar.f21597g;
        int i13 = dVar.f21598h;
        int i14 = dVar.f21599i;
        StringBuilder sb = new StringBuilder(93);
        sb.append(" sib:");
        sb.append(i4);
        sb.append(" sb:");
        sb.append(i10);
        sb.append(" rb:");
        sb.append(i11);
        sb.append(" db:");
        sb.append(i12);
        sb.append(" mcdb:");
        sb.append(i13);
        sb.append(" dk:");
        sb.append(i14);
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public /* synthetic */ void A(com.google.android.exoplayer2.audio.e eVar) {
        x1.a(this, eVar);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void B(com.google.android.exoplayer2.b1 b1Var, int i4) {
        x1.j(this, b1Var, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void C(boolean z9, int i4) {
        M();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
    public /* synthetic */ void D(com.google.android.exoplayer2.device.b bVar) {
        x1.e(this, bVar);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void E(boolean z9) {
        x1.i(this, z9);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void G(boolean z9) {
        w1.e(this, z9);
    }

    protected String H() {
        int c10 = this.f27563a.c();
        return String.format("playWhenReady:%s playbackState:%s window:%s", Boolean.valueOf(this.f27563a.Q0()), c10 != 1 ? c10 != 2 ? c10 != 3 ? c10 != 4 ? "unknown" : "ended" : "ready" : "buffering" : "idle", Integer.valueOf(this.f27563a.j0()));
    }

    protected String J() {
        Format C2 = this.f27563a.C2();
        com.google.android.exoplayer2.decoder.d B2 = this.f27563a.B2();
        if (C2 == null || B2 == null) {
            return "";
        }
        String str = C2.sampleMimeType;
        String str2 = C2.id;
        int i4 = C2.width;
        int i10 = C2.height;
        String F = F(C2.pixelWidthHeightRatio);
        String y9 = y(B2);
        String I = I(B2.f21600j, B2.f21601k);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length() + String.valueOf(F).length() + String.valueOf(y9).length() + String.valueOf(I).length());
        sb.append("\n");
        sb.append(str);
        sb.append("(id:");
        sb.append(str2);
        sb.append(" r:");
        sb.append(i4);
        sb.append(y.b.f83919g);
        sb.append(i10);
        sb.append(F);
        sb.append(y9);
        sb.append(" vfpo: ");
        sb.append(I);
        sb.append(")");
        return sb.toString();
    }

    public final void K() {
        if (this.f27565c) {
            return;
        }
        this.f27565c = true;
        this.f27563a.p1(this);
        M();
    }

    public final void L() {
        if (this.f27565c) {
            this.f27565c = false;
            this.f27563a.W(this);
            this.f27564b.removeCallbacks(this);
        }
    }

    @SuppressLint({"SetTextI18n"})
    protected final void M() {
        this.f27564b.setText(x());
        this.f27564b.removeCallbacks(this);
        this.f27564b.postDelayed(this, 1000L);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void U(int i4) {
        w1.n(this, i4);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void X() {
        w1.q(this);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i, com.google.android.exoplayer2.audio.u
    public /* synthetic */ void a(boolean z9) {
        x1.v(this, z9);
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void a0(boolean z9, int i4) {
        w1.m(this, z9, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n, com.google.android.exoplayer2.video.z
    public /* synthetic */ void b(com.google.android.exoplayer2.video.b0 b0Var) {
        x1.A(this, b0Var);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void c(t1 t1Var) {
        x1.n(this, t1Var);
    }

    @Override // com.google.android.exoplayer2.video.n
    public /* synthetic */ void c0(int i4, int i10, int i11, float f10) {
        com.google.android.exoplayer2.video.m.c(this, i4, i10, i11, f10);
    }

    protected String d() {
        Format z22 = this.f27563a.z2();
        com.google.android.exoplayer2.decoder.d y22 = this.f27563a.y2();
        if (z22 == null || y22 == null) {
            return "";
        }
        String str = z22.sampleMimeType;
        String str2 = z22.id;
        int i4 = z22.sampleRate;
        int i10 = z22.channelCount;
        String y9 = y(y22);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(y9).length());
        sb.append("\n");
        sb.append(str);
        sb.append("(id:");
        sb.append(str2);
        sb.append(" hz:");
        sb.append(i4);
        sb.append(" ch:");
        sb.append(i10);
        sb.append(y9);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void e(v1.l lVar, v1.l lVar2, int i4) {
        M();
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void e0(s2 s2Var, Object obj, int i4) {
        w1.u(this, s2Var, obj, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void f(int i4) {
        x1.p(this, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void g(List list) {
        x1.w(this, list);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void h(v1.c cVar) {
        x1.c(this, cVar);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void i(int i4) {
        x1.t(this, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void j(s2 s2Var, int i4) {
        x1.y(this, s2Var, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public /* synthetic */ void k(int i4) {
        x1.b(this, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void l(int i4) {
        M();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void m(f1 f1Var) {
        x1.k(this, f1Var);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void n(boolean z9) {
        x1.u(this, z9);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.metadata.e
    public /* synthetic */ void o(Metadata metadata) {
        x1.l(this, metadata);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
    public /* synthetic */ void p(int i4, boolean z9) {
        x1.f(this, i4, z9);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
    public /* synthetic */ void q() {
        x1.s(this);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.text.j
    public /* synthetic */ void r(List list) {
        x1.d(this, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        M();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
        x1.z(this, trackGroupArray, mVar);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
    public /* synthetic */ void t(int i4, int i10) {
        x1.x(this, i4, i10);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void u(ExoPlaybackException exoPlaybackException) {
        x1.q(this, exoPlaybackException);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void v(boolean z9) {
        x1.h(this, z9);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public /* synthetic */ void w(float f10) {
        x1.B(this, f10);
    }

    protected String x() {
        String H = H();
        String J = J();
        String d4 = d();
        StringBuilder sb = new StringBuilder(String.valueOf(H).length() + String.valueOf(J).length() + String.valueOf(d4).length());
        sb.append(H);
        sb.append(J);
        sb.append(d4);
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void z(v1 v1Var, v1.g gVar) {
        x1.g(this, v1Var, gVar);
    }
}
