.class public final Lcom/qennnsad/aknkaksd/analytics/data/events/EventKt;
.super Ljava/lang/Object;
.source "Event.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "",
        "",
        "roomTypeToName",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Event;",
        "Lcom/posthog/android/s;",
        "mapToPostHogProps",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final mapToPostHogProps(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)Lcom/posthog/android/s;
    .locals 3
    .param p0    # Lcom/qennnsad/aknkaksd/analytics/data/events/Event;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/posthog/android/s;

    invoke-direct {v0}, Lcom/posthog/android/s;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getHttpHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpHost"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserId"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getAppBuildTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBuildTime"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getAppReleaseChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppReleaseChannel"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getSysLang()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemLanguage"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventStatus"

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/posthog/android/x;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static final roomTypeToName(I)Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "free"

    goto :goto_0

    :cond_0
    const-string p0, "time_charge"

    goto :goto_0

    :cond_1
    const-string p0, "level"

    goto :goto_0

    :cond_2
    const-string p0, "ticket"

    goto :goto_0

    :cond_3
    const-string p0, "password"

    :goto_0
    return-object p0
.end method
