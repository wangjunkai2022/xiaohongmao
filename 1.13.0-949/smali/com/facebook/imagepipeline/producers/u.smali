.class public Lcom/facebook/imagepipeline/producers/u;
.super Ljava/lang/Object;
.source "EncodedProbeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "EncodedProbeProducer"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/f;

.field private final b:Lcom/facebook/imagepipeline/cache/f;

.field private final c:Lcom/facebook/imagepipeline/cache/g;

.field private final d:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "encodedMemoryCacheHistory",
            "diskCacheHistory",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/g;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/u;->a:Lcom/facebook/imagepipeline/cache/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/u;->c:Lcom/facebook/imagepipeline/cache/g;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/u;->e:Lcom/facebook/imagepipeline/cache/e;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/u;->f:Lcom/facebook/imagepipeline/cache/e;

    .line 7
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/u;->d:Lcom/facebook/imagepipeline/producers/q0;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EncodedProbeProducer#produceResults"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/facebook/imagepipeline/producers/u$a;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/u;->a:Lcom/facebook/imagepipeline/cache/f;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/cache/f;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/u;->c:Lcom/facebook/imagepipeline/cache/g;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/u;->e:Lcom/facebook/imagepipeline/cache/e;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/u;->f:Lcom/facebook/imagepipeline/cache/e;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/imagepipeline/producers/u$a;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;)V

    const-string p1, "EncodedProbeProducer"

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, p2, p1, v2}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "mInputProducer.produceResult"

    .line 8
    invoke-static {p1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/u;->d:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 16
    :cond_4
    throw p1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "EncodedProbeProducer"

    return-object v0
.end method
