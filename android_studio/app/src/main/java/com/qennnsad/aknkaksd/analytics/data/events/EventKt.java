package com.qennnsad.aknkaksd.analytics.data.events;

import com.coremedia.iso.boxes.t;
import com.posthog.android.s;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Event.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0003¨\u0006\u0006"}, d2 = {"", "", "roomTypeToName", "Lcom/qennnsad/aknkaksd/analytics/data/events/Event;", "Lcom/posthog/android/s;", "mapToPostHogProps", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class EventKt {
    @g
    public static final s mapToPostHogProps(@g Event event) {
        Intrinsics.checkNotNullParameter(event, "<this>");
        s sVar = new s();
        sVar.o("UserAgent", event.getUserAgent());
        sVar.o("HttpHost", event.getHttpHost());
        sVar.o("UserId", event.getUserId());
        sVar.o("AppBuildTime", event.getAppBuildTime());
        sVar.o("AppReleaseChannel", event.getAppReleaseChannel());
        sVar.o("SystemLanguage", event.getSysLang());
        sVar.o("EventStatus", event.getStatus());
        sVar.putAll(event.getParams());
        return sVar;
    }

    @g
    public static final String roomTypeToName(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? t.f10382e : "time_charge" : "level" : "ticket" : "password";
    }
}
