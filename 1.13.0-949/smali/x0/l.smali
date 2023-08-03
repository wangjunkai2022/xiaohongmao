.class public Lx0/l;
.super Ljava/lang/Object;
.source "ImagePerfState.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private B:Li1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private C:Li1/c$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/image/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:I

.field private q:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/lang/Throwable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lx0/l;->i:J

    .line 3
    iput-wide v0, p0, Lx0/l;->j:J

    .line 4
    iput-wide v0, p0, Lx0/l;->k:J

    .line 5
    iput-wide v0, p0, Lx0/l;->l:J

    .line 6
    iput-wide v0, p0, Lx0/l;->m:J

    .line 7
    iput-wide v0, p0, Lx0/l;->n:J

    .line 8
    iput-wide v0, p0, Lx0/l;->o:J

    const/4 v2, 0x1

    .line 9
    iput v2, p0, Lx0/l;->p:I

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lx0/l;->s:I

    .line 11
    iput v2, p0, Lx0/l;->t:I

    .line 12
    iput v2, p0, Lx0/l;->v:I

    .line 13
    iput v2, p0, Lx0/l;->w:I

    .line 14
    iput-wide v0, p0, Lx0/l;->x:J

    .line 15
    iput-wide v0, p0, Lx0/l;->y:J

    .line 16
    iput-wide v0, p0, Lx0/l;->z:J

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScreenHeightPx"
        }
    .end annotation

    iput p1, p0, Lx0/l;->t:I

    return-void
.end method

.method public B(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScreenWidthPx"
        }
    .end annotation

    iput p1, p0, Lx0/l;->s:I

    return-void
.end method

.method public C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefetch"
        }
    .end annotation

    iput-boolean p1, p0, Lx0/l;->r:Z

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->b:Ljava/lang/String;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ultimateProducerName"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->q:Ljava/lang/String;

    return-void
.end method

.method public F(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibilityEventTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->x:J

    return-void
.end method

.method public G(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lx0/l;->w:I

    return-void
.end method

.method public H()Lx0/h;
    .locals 43

    move-object/from16 v0, p0

    new-instance v40, Lx0/h;

    move-object/from16 v1, v40

    iget-object v2, v0, Lx0/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lx0/l;->b:Ljava/lang/String;

    iget-object v4, v0, Lx0/l;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v5, v0, Lx0/l;->d:Ljava/lang/Object;

    iget-object v6, v0, Lx0/l;->e:Lcom/facebook/imagepipeline/image/g;

    iget-object v7, v0, Lx0/l;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v8, v0, Lx0/l;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v9, v0, Lx0/l;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-wide v10, v0, Lx0/l;->i:J

    iget-wide v12, v0, Lx0/l;->j:J

    iget-wide v14, v0, Lx0/l;->k:J

    move-object/from16 v41, v1

    move-object/from16 v42, v2

    iget-wide v1, v0, Lx0/l;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lx0/l;->m:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lx0/l;->n:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lx0/l;->o:J

    move-wide/from16 v22, v1

    iget v1, v0, Lx0/l;->p:I

    move/from16 v24, v1

    iget-object v1, v0, Lx0/l;->q:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-boolean v1, v0, Lx0/l;->r:Z

    move/from16 v26, v1

    iget v1, v0, Lx0/l;->s:I

    move/from16 v27, v1

    iget v1, v0, Lx0/l;->t:I

    move/from16 v28, v1

    iget-object v1, v0, Lx0/l;->u:Ljava/lang/Throwable;

    move-object/from16 v29, v1

    iget v1, v0, Lx0/l;->w:I

    move/from16 v30, v1

    iget-wide v1, v0, Lx0/l;->x:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, Lx0/l;->y:J

    move-wide/from16 v33, v1

    iget-object v1, v0, Lx0/l;->A:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-wide v1, v0, Lx0/l;->z:J

    move-wide/from16 v36, v1

    iget-object v1, v0, Lx0/l;->B:Li1/d;

    move-object/from16 v38, v1

    iget-object v1, v0, Lx0/l;->C:Li1/c$a;

    move-object/from16 v39, v1

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct/range {v1 .. v39}, Lx0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/g;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;JJJJJJJILjava/lang/String;ZIILjava/lang/Throwable;IJJLjava/lang/String;JLi1/d;Li1/c$a;)V

    return-object v40
.end method

.method public a()Li1/d;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/l;->B:Li1/d;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lx0/l;->C:Li1/c$a;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lx0/l;->z:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lx0/l;->v:I

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx0/l;->b:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lx0/l;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    iput-object v0, p0, Lx0/l;->d:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lx0/l;->e:Lcom/facebook/imagepipeline/image/g;

    .line 5
    iput-object v0, p0, Lx0/l;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    iput-object v0, p0, Lx0/l;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 7
    iput-object v0, p0, Lx0/l;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lx0/l;->p:I

    .line 9
    iput-object v0, p0, Lx0/l;->q:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lx0/l;->r:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lx0/l;->s:I

    .line 12
    iput v1, p0, Lx0/l;->t:I

    .line 13
    iput-object v0, p0, Lx0/l;->u:Ljava/lang/Throwable;

    .line 14
    iput v1, p0, Lx0/l;->v:I

    .line 15
    iput v1, p0, Lx0/l;->w:I

    .line 16
    iput-object v0, p0, Lx0/l;->A:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lx0/l;->B:Li1/d;

    .line 18
    iput-object v0, p0, Lx0/l;->C:Li1/c$a;

    .line 19
    invoke-virtual {p0}, Lx0/l;->f()V

    return-void
.end method

.method public f()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lx0/l;->n:J

    .line 2
    iput-wide v0, p0, Lx0/l;->o:J

    .line 3
    iput-wide v0, p0, Lx0/l;->i:J

    .line 4
    iput-wide v0, p0, Lx0/l;->k:J

    .line 5
    iput-wide v0, p0, Lx0/l;->l:J

    .line 6
    iput-wide v0, p0, Lx0/l;->m:J

    .line 7
    iput-wide v0, p0, Lx0/l;->x:J

    .line 8
    iput-wide v0, p0, Lx0/l;->y:J

    .line 9
    iput-wide v0, p0, Lx0/l;->z:J

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callerContext"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentTag"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->A:Ljava/lang/String;

    return-void
.end method

.method public i(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerCancelTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->m:J

    return-void
.end method

.method public j(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerFailureTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->l:J

    return-void
.end method

.method public k(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerFinalImageSetTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->k:J

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerId"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->a:Ljava/lang/String;

    return-void
.end method

.method public m(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # [Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "lowResImageRequest",
            "firstAvailableImageRequests"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lx0/l;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    iput-object p2, p0, Lx0/l;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    iput-object p3, p0, Lx0/l;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    return-void
.end method

.method public n(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerIntermediateImageSetTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->j:J

    return-void
.end method

.method public o(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerSubmitTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->i:J

    return-void
.end method

.method public p(Li1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dimensionsInfo"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->B:Li1/d;

    return-void
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorThrowable"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->u:Ljava/lang/Throwable;

    return-void
.end method

.method public r(Li1/c$a;)V
    .locals 0
    .param p1    # Li1/c$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraData"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->C:Li1/c$a;

    return-void
.end method

.method public s(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDrawTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->z:J

    return-void
.end method

.method public t(Lcom/facebook/imagepipeline/image/g;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInfo"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->e:Lcom/facebook/imagepipeline/image/g;

    return-void
.end method

.method public u(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageLoadStatus"
        }
    .end annotation

    iput p1, p0, Lx0/l;->v:I

    return-void
.end method

.method public v(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOrigin"
        }
    .end annotation

    iput p1, p0, Lx0/l;->p:I

    return-void
.end method

.method public w(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequest"
        }
    .end annotation

    iput-object p1, p0, Lx0/l;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-void
.end method

.method public x(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequestEndTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->o:J

    return-void
.end method

.method public y(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequestStartTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->n:J

    return-void
.end method

.method public z(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invisibilityEventTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lx0/l;->y:J

    return-void
.end method
