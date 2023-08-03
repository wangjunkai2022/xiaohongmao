package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: ValueEncoderContext.java */
/* loaded from: classes2.dex */
public interface g {
    @NonNull
    g a(long j4) throws IOException;

    @NonNull
    g add(int i4) throws IOException;

    @NonNull
    g add(@Nullable String str) throws IOException;

    @NonNull
    g e(@NonNull byte[] bArr) throws IOException;

    @NonNull
    g o(boolean z9) throws IOException;

    @NonNull
    g q(double d4) throws IOException;

    @NonNull
    g r(float f10) throws IOException;
}
