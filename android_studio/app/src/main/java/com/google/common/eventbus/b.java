package com.google.common.eventbus;

import com.google.common.eventbus.e;
import com.ksyun.media.streamer.logstats.StatsConstant;
import java.util.concurrent.Executor;

/* compiled from: AsyncEventBus.java */
@h3.a
/* loaded from: classes2.dex */
public class b extends e {
    public b(String str, Executor executor) {
        super(str, executor, d.c(), e.a.f34056a);
    }

    public b(Executor executor, i iVar) {
        super(StatsConstant.BW_EST_STRATEGY_NORMAL, executor, d.c(), iVar);
    }

    public b(Executor executor) {
        super(StatsConstant.BW_EST_STRATEGY_NORMAL, executor, d.c(), e.a.f34056a);
    }
}
