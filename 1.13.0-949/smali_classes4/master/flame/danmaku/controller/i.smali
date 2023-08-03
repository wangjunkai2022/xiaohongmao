.class public Lmaster/flame/danmaku/controller/i;
.super Ljava/lang/Thread;
.source "UpdateThread.java"


# instance fields
.field volatile a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/i;->a:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/i;->a:Z

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
