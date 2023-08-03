.class Lcom/google/common/util/concurrent/j0$h;
.super Lcom/google/common/util/concurrent/b;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/b<",
        "TV;TX;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field final b:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;",
            "Lcom/google/common/base/q<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/b;-><init>(Lcom/google/common/util/concurrent/q0;)V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/q;

    iput-object p1, p0, Lcom/google/common/util/concurrent/j0$h;->b:Lcom/google/common/base/q;

    return-void
.end method


# virtual methods
.method protected O(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/j0$h;->b:Lcom/google/common/base/q;

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    return-object p1
.end method
