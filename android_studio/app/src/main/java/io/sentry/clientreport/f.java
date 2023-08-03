package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.f4;
import io.sentry.l3;
import m8.a;

/* compiled from: IClientReportRecorder.java */
@a.c
/* loaded from: classes4.dex */
public interface f {
    void a(@m8.g DiscardReason discardReason, @m8.g DataCategory dataCategory);

    void b(@m8.g DiscardReason discardReason, @m8.h l3 l3Var);

    void c(@m8.g DiscardReason discardReason, @m8.h f4 f4Var);

    @m8.g
    l3 d(@m8.g l3 l3Var);
}
