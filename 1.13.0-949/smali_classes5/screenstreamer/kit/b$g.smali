.class Lscreenstreamer/kit/b$g;
.super Ljava/lang/Object;
.source "KSYScreenStreamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/kit/b;->q()V
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

    iput-object p1, p0, Lscreenstreamer/kit/b$g;->a:Lscreenstreamer/kit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b$g;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->f(Lscreenstreamer/kit/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lscreenstreamer/kit/b$g;->a:Lscreenstreamer/kit/b;

    invoke-static {v1}, Lscreenstreamer/kit/b;->g(Lscreenstreamer/kit/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lscreenstreamer/kit/b$g;->a:Lscreenstreamer/kit/b;

    invoke-virtual {v1}, Lscreenstreamer/kit/b;->c1()Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
