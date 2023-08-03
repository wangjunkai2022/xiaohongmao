.class final Lio/sentry/transport/c0$b;
.super Lio/sentry/transport/c0;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/transport/c0;-><init>(Lio/sentry/transport/c0$a;)V

    .line 2
    iput p1, p0, Lio/sentry/transport/c0$b;->a:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lio/sentry/transport/c0$b;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
