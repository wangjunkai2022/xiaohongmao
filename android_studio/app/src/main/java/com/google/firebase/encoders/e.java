package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: ObjectEncoderContext.java */
/* loaded from: classes2.dex */
public interface e {
    @NonNull
    e b(@NonNull c cVar, boolean z9) throws IOException;

    @NonNull
    e c(@NonNull c cVar, long j4) throws IOException;

    @NonNull
    e d(@NonNull c cVar, int i4) throws IOException;

    @NonNull
    e f(@NonNull c cVar, float f10) throws IOException;

    @NonNull
    e g(@NonNull c cVar) throws IOException;

    @NonNull
    e h(@NonNull c cVar, double d4) throws IOException;

    @NonNull
    @Deprecated
    e i(@NonNull String str, boolean z9) throws IOException;

    @NonNull
    @Deprecated
    e j(@NonNull String str, double d4) throws IOException;

    @NonNull
    @Deprecated
    e k(@NonNull String str, long j4) throws IOException;

    @NonNull
    @Deprecated
    e l(@NonNull String str, int i4) throws IOException;

    @NonNull
    e m(@NonNull c cVar, @Nullable Object obj) throws IOException;

    @NonNull
    e n(@Nullable Object obj) throws IOException;

    @NonNull
    @Deprecated
    e p(@NonNull String str, @Nullable Object obj) throws IOException;

    @NonNull
    e s(@NonNull String str) throws IOException;
}
