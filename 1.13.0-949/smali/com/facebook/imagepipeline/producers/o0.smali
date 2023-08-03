.class public Lcom/facebook/imagepipeline/producers/o0;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/o0$c;,
        Lcom/facebook/imagepipeline/producers/o0$d;,
        Lcom/facebook/imagepipeline/producers/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "PostprocessorProducer"

.field static final e:Ljava/lang/String; = "Postprocessor"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/bitmaps/f;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputProducer",
            "platformBitmapFactory",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/q0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0;->a:Lcom/facebook/imagepipeline/producers/q0;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o0;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/o0;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/o0;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/o0;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/o0;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v3

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/d;

    move-result-object v6

    .line 3
    invoke-static {v6}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v9, Lcom/facebook/imagepipeline/producers/o0$b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/o0$b;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/request/d;Lcom/facebook/imagepipeline/producers/s0;)V

    .line 5
    instance-of p1, v6, Lcom/facebook/imagepipeline/request/e;

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/facebook/imagepipeline/producers/o0$c;

    move-object v10, v6

    check-cast v10, Lcom/facebook/imagepipeline/request/e;

    const/4 v12, 0x0

    move-object v7, p1

    move-object v8, p0

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/imagepipeline/producers/o0$c;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/imagepipeline/request/e;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/o0$a;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/producers/o0$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v9, v0}, Lcom/facebook/imagepipeline/producers/o0$d;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/imagepipeline/producers/o0$a;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0;->a:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method
