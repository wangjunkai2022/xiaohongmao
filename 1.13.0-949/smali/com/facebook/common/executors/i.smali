.class public Lcom/facebook/common/executors/i;
.super Lcom/facebook/common/executors/e;
.source "UiThreadImmediateExecutorService.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static b:Lcom/facebook/common/executors/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/facebook/common/executors/e;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static f()Lcom/facebook/common/executors/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/common/executors/i;->b:Lcom/facebook/common/executors/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/common/executors/i;

    invoke-direct {v0}, Lcom/facebook/common/executors/i;-><init>()V

    sput-object v0, Lcom/facebook/common/executors/i;->b:Lcom/facebook/common/executors/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/facebook/common/executors/i;->b:Lcom/facebook/common/executors/i;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/common/executors/e;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/common/executors/e;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
