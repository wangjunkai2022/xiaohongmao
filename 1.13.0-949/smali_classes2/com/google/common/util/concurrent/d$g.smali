.class final Lcom/google/common/util/concurrent/d$g;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/util/concurrent/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/d<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/d;Lcom/google/common/util/concurrent/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/d$g;->a:Lcom/google/common/util/concurrent/d;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/d$g;->b:Lcom/google/common/util/concurrent/q0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$g;->a:Lcom/google/common/util/concurrent/d;

    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->e(Lcom/google/common/util/concurrent/d;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$g;->b:Lcom/google/common/util/concurrent/q0;

    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->g(Lcom/google/common/util/concurrent/q0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/d;->b()Lcom/google/common/util/concurrent/d$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/d$g;->a:Lcom/google/common/util/concurrent/d;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/d$b;->b(Lcom/google/common/util/concurrent/d;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$g;->a:Lcom/google/common/util/concurrent/d;

    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->h(Lcom/google/common/util/concurrent/d;)V

    :cond_1
    return-void
.end method
