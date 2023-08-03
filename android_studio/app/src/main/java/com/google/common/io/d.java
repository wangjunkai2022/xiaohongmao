package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;

/* compiled from: ByteProcessor.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public interface d<T> {
    T a();

    @CanIgnoreReturnValue
    boolean b(byte[] bArr, int i4, int i10) throws IOException;
}
