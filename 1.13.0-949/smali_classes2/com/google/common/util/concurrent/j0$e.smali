.class public final Lcom/google/common/util/concurrent/j0$e;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/j0$e;->a:Z

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/j0$e;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/j0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/j0$e;-><init>(ZLcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/s;

    iget-object v1, p0, Lcom/google/common/util/concurrent/j0$e;->b:Lcom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/j0$e;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/s;-><init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public b(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/s;

    iget-object v1, p0, Lcom/google/common/util/concurrent/j0$e;->b:Lcom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/j0$e;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/s;-><init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/m;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j0$e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/j0$e$a;-><init>(Lcom/google/common/util/concurrent/j0$e;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/j0$e;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method
