package com.facebook.imagepipeline.producers;

import java.util.Map;

/* compiled from: ProducerListener.java */
/* loaded from: classes.dex */
public interface v0 {
    void b(String requestId, String producerName);

    boolean d(String requestId);

    void e(String requestId, String producerName, @r7.h Map<String, String> extraMap);

    void f(String requestId, String producerName, Throwable t9, @r7.h Map<String, String> extraMap);

    void g(String requestId, String producerName, @r7.h Map<String, String> extraMap);

    void h(String requestId, String producerName, boolean successful);

    void j(String requestId, String producerName, String eventName);
}
