.class Lscreenstreamer/kit/b$c;
.super Ljava/lang/Object;
.source "KSYScreenStreamer.java"

# interfaces
.implements Lscreenstreamer/capture/ScreenCapture$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/kit/b;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lscreenstreamer/kit/b;


# direct methods
.method constructor <init>(Lscreenstreamer/kit/b;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/kit/b$c;->a:Lscreenstreamer/kit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b$c;->a:Lscreenstreamer/kit/b;

    invoke-virtual {v0}, Lscreenstreamer/kit/b;->g1()Z

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, -0x7d7

    goto :goto_0

    :cond_2
    const/16 p1, -0x7d8

    .line 2
    :goto_0
    iget-object v0, p0, Lscreenstreamer/kit/b$c;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lscreenstreamer/kit/b$c;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lscreenstreamer/kit/b$h;->onError(III)V

    :cond_3
    return-void
.end method

.method public onStarted()V
    .locals 2

    const-string v0, "KSYScreenStreamer"

    const-string v1, "Screen Record Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
