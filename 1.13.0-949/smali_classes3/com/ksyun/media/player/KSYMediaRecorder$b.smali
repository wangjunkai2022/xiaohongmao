.class Lcom/ksyun/media/player/KSYMediaRecorder$b;
.super Ljava/lang/Object;
.source "KSYMediaRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYMediaRecorder;

.field private b:Lcom/ksyun/media/player/KSYMediaRecorder;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->b:Lcom/ksyun/media/player/KSYMediaRecorder;

    .line 3
    iput-boolean p3, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->c:Z

    .line 4
    iput-boolean p4, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->d:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->b:Lcom/ksyun/media/player/KSYMediaRecorder;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->d:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->c:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->c(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->d(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$b;->c:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->e(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->f(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    :cond_3
    :goto_0
    return-void
.end method
