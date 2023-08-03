.class public Lx0/h;
.super Ljava/lang/Object;
.source "ImagePerfData.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final C:I = -0x1


# instance fields
.field private final A:Li1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private B:Li1/c$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final a:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/image/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final h:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:J

.field private final m:J

.field private final n:J

.field private final o:J

.field private final p:I

.field private final q:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final r:Z

.field private final s:I

.field private final t:I

.field private final u:Ljava/lang/Throwable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final v:I

.field private final w:J

.field private final x:J

.field private final y:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/g;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;JJJJJJJILjava/lang/String;ZIILjava/lang/Throwable;IJJLjava/lang/String;JLi1/d;Li1/c$a;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p8    # [Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p28    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p37    # Li1/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p38    # Li1/c$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "requestId",
            "imageRequest",
            "callerContext",
            "imageInfo",
            "controllerImageRequest",
            "controllerLowResImageRequest",
            "controllerFirstAvailableImageRequests",
            "controllerSubmitTimeMs",
            "controllerIntermediateImageSetTimeMs",
            "controllerFinalImageSetTimeMs",
            "controllerFailureTimeMs",
            "controllerCancelTimeMs",
            "imageRequestStartTimeMs",
            "imageRequestEndTimeMs",
            "imageOrigin",
            "ultimateProducerName",
            "isPrefetch",
            "onScreenWidthPx",
            "onScreenHeightPx",
            "errorThrowable",
            "visibilityState",
            "visibilityEventTimeMs",
            "invisibilityEventTime",
            "componentTag",
            "imageDrawTimeMs",
            "dimensionsInfo",
            "extraData"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lx0/h;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lx0/h;->b:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lx0/h;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lx0/h;->c:Ljava/lang/Object;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lx0/h;->e:Lcom/facebook/imagepipeline/image/g;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lx0/h;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lx0/h;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lx0/h;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    move-wide v1, p9

    .line 10
    iput-wide v1, v0, Lx0/h;->i:J

    move-wide v1, p11

    .line 11
    iput-wide v1, v0, Lx0/h;->j:J

    move-wide/from16 v1, p13

    .line 12
    iput-wide v1, v0, Lx0/h;->k:J

    move-wide/from16 v1, p15

    .line 13
    iput-wide v1, v0, Lx0/h;->l:J

    move-wide/from16 v1, p17

    .line 14
    iput-wide v1, v0, Lx0/h;->m:J

    move-wide/from16 v1, p19

    .line 15
    iput-wide v1, v0, Lx0/h;->n:J

    move-wide/from16 v1, p21

    .line 16
    iput-wide v1, v0, Lx0/h;->o:J

    move/from16 v1, p23

    .line 17
    iput v1, v0, Lx0/h;->p:I

    move-object/from16 v1, p24

    .line 18
    iput-object v1, v0, Lx0/h;->q:Ljava/lang/String;

    move/from16 v1, p25

    .line 19
    iput-boolean v1, v0, Lx0/h;->r:Z

    move/from16 v1, p26

    .line 20
    iput v1, v0, Lx0/h;->s:I

    move/from16 v1, p27

    .line 21
    iput v1, v0, Lx0/h;->t:I

    move-object/from16 v1, p28

    .line 22
    iput-object v1, v0, Lx0/h;->u:Ljava/lang/Throwable;

    move/from16 v1, p29

    .line 23
    iput v1, v0, Lx0/h;->v:I

    move-wide/from16 v1, p30

    .line 24
    iput-wide v1, v0, Lx0/h;->w:J

    move-wide/from16 v1, p32

    .line 25
    iput-wide v1, v0, Lx0/h;->x:J

    move-object/from16 v1, p34

    .line 26
    iput-object v1, v0, Lx0/h;->y:Ljava/lang/String;

    move-wide/from16 v1, p35

    .line 27
    iput-wide v1, v0, Lx0/h;->z:J

    move-object/from16 v1, p37

    .line 28
    iput-object v1, v0, Lx0/h;->A:Li1/d;

    move-object/from16 v1, p38

    .line 29
    iput-object v1, v0, Lx0/h;->B:Li1/c$a;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->w:J

    return-wide v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lx0/h;->v:I

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lx0/h;->r:Z

    return v0
.end method

.method public E(Li1/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraData"
        }
    .end annotation

    iput-object p1, p0, Lx0/h;->B:Li1/c$a;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->a:Ljava/lang/String;

    const-string v2, "controller ID"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->b:Ljava/lang/String;

    const-string v2, "request ID"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v2, "controller image request"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v2, "controller low res image request"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v2, "controller first available image requests"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->i:J

    const-string v3, "controller submit"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->k:J

    const-string v3, "controller final image"

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->l:J

    const-string v3, "controller failure"

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->m:J

    const-string v3, "controller cancel"

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->n:J

    const-string v3, "start time"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->o:J

    const-string v3, "end time"

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lx0/h;->p:I

    .line 13
    invoke-static {v1}, Lx0/g;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->q:Ljava/lang/String;

    const-string v2, "ultimateProducerName"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lx0/h;->r:Z

    const-string v2, "prefetch"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->c:Ljava/lang/Object;

    const-string v2, "caller context"

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v2, "image request"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->e:Lcom/facebook/imagepipeline/image/g;

    const-string v2, "image info"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lx0/h;->s:I

    const-string v2, "on-screen width"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lx0/h;->t:I

    const-string v2, "on-screen height"

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lx0/h;->v:I

    const-string v2, "visibility state"

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->y:Ljava/lang/String;

    const-string v2, "component tag"

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->w:J

    const-string v3, "visibility event"

    .line 23
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->x:J

    const-string v3, "invisibility event"

    .line 24
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-wide v1, p0, Lx0/h;->z:J

    const-string v3, "image draw event"

    .line 25
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/i$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->A:Li1/d;

    const-string v2, "dimensions info"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lx0/h;->B:Li1/c$a;

    const-string v2, "extra data"

    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->y:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->l:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->k:J

    return-wide v0
.end method

.method public f()[Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->j:J

    return-wide v0
.end method

.method public j()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->i:J

    return-wide v0
.end method

.method public l()Li1/d;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->A:Li1/d;

    return-object v0
.end method

.method public m()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->u:Ljava/lang/Throwable;

    return-object v0
.end method

.method public n()Li1/c$a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->B:Li1/c$a;

    return-object v0
.end method

.method public o()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lx0/h;->t()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lx0/h;->u()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lx0/h;->t()J

    move-result-wide v0

    invoke-virtual {p0}, Lx0/h;->u()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->z:J

    return-wide v0
.end method

.method public q()Lcom/facebook/imagepipeline/image/g;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->e:Lcom/facebook/imagepipeline/image/g;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lx0/h;->p:I

    return v0
.end method

.method public s()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->o:J

    return-wide v0
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->n:J

    return-wide v0
.end method

.method public v()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lx0/h;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lx0/h;->k()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lx0/h;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lx0/h;->k()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Lx0/h;->x:J

    return-wide v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lx0/h;->t:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lx0/h;->s:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/h;->b:Ljava/lang/String;

    return-object v0
.end method
