.class public Lcom/facebook/cache/common/h;
.super Ljava/lang/Object;
.source "NoOpCacheErrorLogger.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheErrorLogger;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Lcom/facebook/cache/common/h;
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

.method public static declared-synchronized b()Lcom/facebook/cache/common/h;
    .locals 2

    const-class v0, Lcom/facebook/cache/common/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/cache/common/h;->a:Lcom/facebook/cache/common/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/cache/common/h;

    invoke-direct {v1}, Lcom/facebook/cache/common/h;-><init>()V

    sput-object v1, Lcom/facebook/cache/common/h;->a:Lcom/facebook/cache/common/h;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/cache/common/h;->a:Lcom/facebook/cache/common/h;
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
.method public a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "clazz",
            "message",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method
