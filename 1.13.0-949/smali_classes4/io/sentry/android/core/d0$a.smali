.class final Lio/sentry/android/core/d0$a;
.super Ljava/lang/Object;
.source "AnrIntegration.java"

# interfaces
.implements Lio/sentry/hints/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/sentry/android/core/d0$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/d0$a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "anr_background"

    goto :goto_0

    :cond_0
    const-string v0, "anr_foreground"

    :goto_0
    return-object v0
.end method
