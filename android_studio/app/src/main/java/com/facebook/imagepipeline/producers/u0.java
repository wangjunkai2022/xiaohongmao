package com.facebook.imagepipeline.producers;

import androidx.annotation.NonNull;
import java.util.Map;

/* compiled from: ProducerListener2.java */
/* loaded from: classes.dex */
public interface u0 {
    void b(@NonNull s0 producerContext, @NonNull String producerName, boolean successful);

    void c(@NonNull s0 producerContext, @NonNull String producerName, @r7.h Map<String, String> extraMap);

    void d(@NonNull s0 producerContext, @NonNull String producerName);

    boolean f(@NonNull s0 producerContext, @NonNull String producerName);

    void h(@NonNull s0 producerContext, @NonNull String producerName, @NonNull String eventName);

    void j(@NonNull s0 producerContext, @NonNull String producerName, @r7.h Map<String, String> extraMap);

    void k(@NonNull s0 producerContext, String producerName, Throwable t9, @r7.h Map<String, String> extraMap);
}
