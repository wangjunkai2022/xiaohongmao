.class public Lcom/facebook/imagepipeline/memory/a0;
.super Ljava/lang/Object;
.source "NoOpPoolStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/g0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static h:Lcom/facebook/imagepipeline/memory/a0;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized h()Lcom/facebook/imagepipeline/memory/a0;
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/memory/a0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/memory/a0;->h:Lcom/facebook/imagepipeline/memory/a0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/memory/a0;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/memory/a0;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/memory/a0;->h:Lcom/facebook/imagepipeline/memory/a0;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/memory/a0;->h:Lcom/facebook/imagepipeline/memory/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeInBytes"
        }
    .end annotation

    return-void
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeInBytes"
        }
    .end annotation

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    return-void
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation

    return-void
.end method

.method public f(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basePool"
        }
    .end annotation

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
