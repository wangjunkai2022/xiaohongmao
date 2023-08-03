package io.sentry;

import com.ksyun.media.streamer.logstats.StatsConstant;
import m8.a;

@a.c
/* loaded from: classes4.dex */
public enum DataCategory {
    All("__all__"),
    Default(StatsConstant.BW_EST_STRATEGY_NORMAL),
    Error(com.qennnsad.aknkaksd.data.websocket.b.f47825n),
    Session(io.sentry.cache.d.f83059h),
    Attachment("attachment"),
    Transaction("transaction"),
    Security("security"),
    UserReport("user_report"),
    Unknown("unknown");
    
    private final String category;

    DataCategory(@m8.g String str) {
        this.category = str;
    }

    public String getCategory() {
        return this.category;
    }
}
