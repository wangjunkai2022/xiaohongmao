.class public final synthetic Lio/sentry/android/core/internal/util/o;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"


# direct methods
.method public static a(Lio/sentry/android/core/internal/util/n$c;Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/view/Window;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window$OnFrameMetricsAvailableListener;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static b(Lio/sentry/android/core/internal/util/n$c;Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 0
    .param p1    # Landroid/view/Window;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window$OnFrameMetricsAvailableListener;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    return-void
.end method
