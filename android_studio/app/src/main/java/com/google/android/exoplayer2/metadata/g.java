package com.google.android.exoplayer2.metadata;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* compiled from: SimpleMetadataDecoder.java */
/* loaded from: classes2.dex */
public abstract class g implements b {
    @Override // com.google.android.exoplayer2.metadata.b
    @Nullable
    public final Metadata a(d dVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.g(dVar.f21572c);
        com.google.android.exoplayer2.util.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (dVar.k()) {
            return null;
        }
        return b(dVar, byteBuffer);
    }

    @Nullable
    protected abstract Metadata b(d dVar, ByteBuffer byteBuffer);
}
