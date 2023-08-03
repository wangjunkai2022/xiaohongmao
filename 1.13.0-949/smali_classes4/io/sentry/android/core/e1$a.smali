.class final Lio/sentry/android/core/e1$a;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/n0;)V
    .locals 0
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/android/core/e1$a;->a:Lio/sentry/n0;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    new-instance p1, Lio/sentry/f;

    invoke-direct {p1}, Lio/sentry/f;-><init>()V

    const-string p2, "system"

    .line 2
    invoke-virtual {p1, p2}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string p2, "device.event"

    .line 3
    invoke-virtual {p1, p2}, Lio/sentry/f;->u(Ljava/lang/String;)V

    const-string p2, "action"

    const-string v0, "CALL_STATE_RINGING"

    .line 4
    invoke-virtual {p1, p2, v0}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "Device ringing"

    .line 5
    invoke-virtual {p1, p2}, Lio/sentry/f;->x(Ljava/lang/String;)V

    .line 6
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p1, p2}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 7
    iget-object p2, p0, Lio/sentry/android/core/e1$a;->a:Lio/sentry/n0;

    invoke-interface {p2, p1}, Lio/sentry/n0;->g(Lio/sentry/f;)V

    :cond_0
    return-void
.end method
