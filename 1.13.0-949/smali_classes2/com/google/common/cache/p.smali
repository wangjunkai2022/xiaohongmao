.class public final Lcom/google/common/cache/p;
.super Ljava/lang/Object;
.source "RemovalListeners.java"


# annotations
.annotation build Lh3/c;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/cache/o;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/o<",
            "TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/cache/o<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/cache/p$a;

    invoke-direct {v0, p1, p0}, Lcom/google/common/cache/p$a;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/cache/o;)V

    return-object v0
.end method
