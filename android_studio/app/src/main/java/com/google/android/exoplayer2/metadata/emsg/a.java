package com.google.android.exoplayer2.metadata.emsg;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.h0;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: EventMessageDecoder.java */
/* loaded from: classes2.dex */
public final class a extends g {
    @Override // com.google.android.exoplayer2.metadata.g
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        return new Metadata(c(new h0(byteBuffer.array(), byteBuffer.limit())));
    }

    public EventMessage c(h0 h0Var) {
        return new EventMessage((String) com.google.android.exoplayer2.util.a.g(h0Var.A()), (String) com.google.android.exoplayer2.util.a.g(h0Var.A()), h0Var.z(), h0Var.z(), Arrays.copyOfRange(h0Var.d(), h0Var.e(), h0Var.f()));
    }
}
