.class public interface abstract Lio/sentry/android/core/internal/util/n$c;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation build Lm8/a$c;
.end annotation


# virtual methods
.method public abstract a(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
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
.end method

.method public abstract b(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
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
.end method
