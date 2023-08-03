.class public final Lio/sentry/clientreport/h;
.super Ljava/lang/Object;
.source "NoOpClientReportRecorder.java"

# interfaces
.implements Lio/sentry/clientreport/f;


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V
    .locals 0
    .param p1    # Lio/sentry/clientreport/DiscardReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/DataCategory;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/l3;)V
    .locals 0
    .param p1    # Lio/sentry/clientreport/DiscardReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/l3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/f4;)V
    .locals 0
    .param p1    # Lio/sentry/clientreport/DiscardReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/f4;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public d(Lio/sentry/l3;)Lio/sentry/l3;
    .locals 0
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    return-object p1
.end method
