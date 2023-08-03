package com.google.android.exoplayer2.text.dvb;

import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.h0;
import java.util.List;

/* compiled from: DvbDecoder.java */
/* loaded from: classes2.dex */
public final class a extends com.google.android.exoplayer2.text.c {

    /* renamed from: o  reason: collision with root package name */
    private final b f25486o;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        h0 h0Var = new h0(list.get(0));
        this.f25486o = new b(h0Var.M(), h0Var.M());
    }

    @Override // com.google.android.exoplayer2.text.c
    protected e z(byte[] bArr, int i4, boolean z9) {
        if (z9) {
            this.f25486o.r();
        }
        return new c(this.f25486o.b(bArr, i4));
    }
}
