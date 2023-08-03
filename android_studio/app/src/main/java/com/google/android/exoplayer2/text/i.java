package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import java.util.List;

/* compiled from: SubtitleOutputBuffer.java */
/* loaded from: classes2.dex */
public abstract class i extends com.google.android.exoplayer2.decoder.f implements e {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private e f25562d;

    /* renamed from: e  reason: collision with root package name */
    private long f25563e;

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        return ((e) com.google.android.exoplayer2.util.a.g(this.f25562d)).a(j4 - this.f25563e);
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<a> b(long j4) {
        return ((e) com.google.android.exoplayer2.util.a.g(this.f25562d)).b(j4 - this.f25563e);
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        return ((e) com.google.android.exoplayer2.util.a.g(this.f25562d)).c(i4) + this.f25563e;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return ((e) com.google.android.exoplayer2.util.a.g(this.f25562d)).d();
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void f() {
        super.f();
        this.f25562d = null;
    }

    public void p(long j4, e eVar, long j10) {
        this.f21626b = j4;
        this.f25562d = eVar;
        if (j10 != Long.MAX_VALUE) {
            j4 = j10;
        }
        this.f25563e = j4;
    }
}
