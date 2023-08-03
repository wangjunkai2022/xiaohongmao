package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;

/* compiled from: Decoder.java */
/* loaded from: classes2.dex */
public interface c<I, O, E extends DecoderException> {
    @Nullable
    O b() throws DecoderException;

    void c(I i4) throws DecoderException;

    @Nullable
    I d() throws DecoderException;

    void flush();

    String getName();

    void release();
}
