package com.giphy.sdk.analytics.models;

import io.sentry.cache.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: SessionsRequestData.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/giphy/sdk/analytics/models/SessionsRequestData;", "", d.f83059h, "Lcom/giphy/sdk/analytics/models/Session;", "(Lcom/giphy/sdk/analytics/models/Session;)V", "events", "", "Lcom/giphy/sdk/analytics/models/AnalyticsEvent;", "(Ljava/util/List;)V", "getEvents", "()Ljava/util/List;", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class SessionsRequestData {
    @g
    private final List<AnalyticsEvent> events;

    public SessionsRequestData(@g List<AnalyticsEvent> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        this.events = events;
    }

    @g
    public final List<AnalyticsEvent> getEvents() {
        return this.events;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionsRequestData(@g Session session) {
        this(session.getEvents());
        Intrinsics.checkNotNullParameter(session, "session");
    }
}
