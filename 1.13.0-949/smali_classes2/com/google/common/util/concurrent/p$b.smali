.class final Lcom/google/common/util/concurrent/p$b;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/p;->b(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/u0;)Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/u0;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/u0;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/p$b;->a:Lcom/google/common/util/concurrent/u0;

    iput-object p2, p0, Lcom/google/common/util/concurrent/p$b;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/q0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/p$b;->a:Lcom/google/common/util/concurrent/u0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/p$b;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/u0;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    return-object v0
.end method
