.class public Lcom/facebook/cache/common/i;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheEventListener;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Lcom/facebook/cache/common/i;
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

.method public static declared-synchronized i()Lcom/facebook/cache/common/i;
    .locals 2

    const-class v0, Lcom/facebook/cache/common/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/cache/common/i;->a:Lcom/facebook/cache/common/i;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/cache/common/i;

    invoke-direct {v1}, Lcom/facebook/cache/common/i;-><init>()V

    sput-object v1, Lcom/facebook/cache/common/i;->a:Lcom/facebook/cache/common/i;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/cache/common/i;->a:Lcom/facebook/cache/common/i;
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

.method public b(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method

.method public c(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method

.method public d(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method

.method public f(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method

.method public g(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method

.method public h(Lcom/facebook/cache/common/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEvent"
        }
    .end annotation

    return-void
.end method
