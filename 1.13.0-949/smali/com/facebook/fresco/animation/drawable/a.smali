.class public Lcom/facebook/fresco/animation/drawable/a;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable2.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lu0/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/a$b;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final s:Lcom/facebook/fresco/animation/drawable/c;

.field private static final t:I = 0x8

.field private static final u:I


# instance fields
.field private a:Lcom/facebook/fresco/animation/backend/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lcom/facebook/fresco/animation/frame/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private volatile c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:J

.field private i:J

.field private j:I

.field private k:J

.field private l:J

.field private m:I

.field private volatile n:Lcom/facebook/fresco/animation/drawable/c;

.field private volatile o:Lcom/facebook/fresco/animation/drawable/a$b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private p:Lcom/facebook/drawee/drawable/e;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/drawable/a;

    sput-object v0, Lcom/facebook/fresco/animation/drawable/a;->r:Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/drawable/d;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/d;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/drawable/a;->s:Lcom/facebook/fresco/animation/drawable/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/drawable/a;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationBackend"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x8

    .line 3
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->k:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->l:J

    .line 5
    sget-object v0, Lcom/facebook/fresco/animation/drawable/a;->s:Lcom/facebook/fresco/animation/drawable/c;

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/a$b;

    .line 7
    new-instance v0, Lcom/facebook/fresco/animation/drawable/a$a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/drawable/a$a;-><init>(Lcom/facebook/fresco/animation/drawable/a;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    .line 9
    invoke-static {p1}, Lcom/facebook/fresco/animation/drawable/a;->b(Lcom/facebook/fresco/animation/backend/a;)Lcom/facebook/fresco/animation/frame/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    return-void
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/drawable/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static b(Lcom/facebook/fresco/animation/backend/a;)Lcom/facebook/fresco/animation/frame/b;
    .locals 1
    .param p0    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationBackend"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/facebook/fresco/animation/frame/a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/frame/a;-><init>(Lcom/facebook/fresco/animation/backend/d;)V

    return-object v0
.end method

.method private l()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->m:I

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/facebook/fresco/animation/drawable/a;->r:Ljava/lang/Class;

    iget v1, p0, Lcom/facebook/fresco/animation/drawable/a;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dropped a frame. Count: %s"

    invoke-static {v0, v2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private n(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetAnimationTimeMs"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 2
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public c()Lcom/facebook/fresco/animation/backend/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->clear()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v14, p0

    .line 1
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_9

    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    move-result-wide v12

    .line 3
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    if-eqz v0, :cond_1

    iget-wide v0, v14, Lcom/facebook/fresco/animation/drawable/a;->d:J

    sub-long v0, v12, v0

    iget-wide v2, v14, Lcom/facebook/fresco/animation/drawable/a;->l:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, v14, Lcom/facebook/fresco/animation/drawable/a;->e:J

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 5
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    iget-wide v1, v14, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 6
    invoke-interface {v0, v8, v9, v1, v2}, Lcom/facebook/fresco/animation/frame/b;->c(JJ)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 8
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    invoke-interface {v2, v14}, Lcom/facebook/fresco/animation/drawable/c;->b(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 9
    iput-boolean v1, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 10
    iget v3, v14, Lcom/facebook/fresco/animation/drawable/a;->g:I

    if-eq v3, v2, :cond_3

    iget-wide v2, v14, Lcom/facebook/fresco/animation/drawable/a;->f:J

    cmp-long v4, v12, v2

    if-ltz v4, :cond_3

    .line 11
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    invoke-interface {v2, v14}, Lcom/facebook/fresco/animation/drawable/c;->e(Lcom/facebook/fresco/animation/drawable/a;)V

    :cond_3
    :goto_1
    move v3, v0

    .line 12
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    move-object/from16 v2, p1

    invoke-interface {v0, v14, v2, v3}, Lcom/facebook/fresco/animation/backend/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    invoke-interface {v0, v14, v3}, Lcom/facebook/fresco/animation/drawable/c;->c(Lcom/facebook/fresco/animation/drawable/a;I)V

    .line 14
    iput v3, v14, Lcom/facebook/fresco/animation/drawable/a;->g:I

    :cond_4
    if-nez v4, :cond_5

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/a;->m()V

    .line 16
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    move-result-wide v15

    .line 17
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    const-wide/16 v5, -0x1

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    iget-wide v10, v14, Lcom/facebook/fresco/animation/drawable/a;->d:J

    sub-long v10, v15, v10

    .line 19
    invoke-interface {v0, v10, v11}, Lcom/facebook/fresco/animation/frame/b;->b(J)J

    move-result-wide v10

    cmp-long v0, v10, v5

    if-eqz v0, :cond_6

    .line 20
    iget-wide v0, v14, Lcom/facebook/fresco/animation/drawable/a;->k:J

    add-long/2addr v0, v10

    .line 21
    invoke-direct {v14, v0, v1}, Lcom/facebook/fresco/animation/drawable/a;->n(J)V

    move-wide/from16 v19, v0

    goto :goto_2

    .line 22
    :cond_6
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    invoke-interface {v0, v14}, Lcom/facebook/fresco/animation/drawable/c;->b(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 23
    iput-boolean v1, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    move-wide/from16 v19, v5

    :goto_2
    move-wide/from16 v17, v10

    goto :goto_3

    :cond_7
    move-wide/from16 v17, v5

    move-wide/from16 v19, v17

    .line 24
    :goto_3
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/a$b;

    if-eqz v0, :cond_8

    .line 25
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    iget-boolean v5, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    iget-wide v6, v14, Lcom/facebook/fresco/animation/drawable/a;->d:J

    iget-wide v10, v14, Lcom/facebook/fresco/animation/drawable/a;->e:J

    move-object/from16 v1, p0

    move-wide/from16 v21, v8

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    invoke-interface/range {v0 .. v19}, Lcom/facebook/fresco/animation/drawable/a$b;->a(Lcom/facebook/fresco/animation/drawable/a;Lcom/facebook/fresco/animation/frame/b;IZZJJJJJJJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    move-wide v1, v8

    .line 26
    :goto_4
    iput-wide v1, v0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    return-void

    :cond_9
    :goto_5
    move-object v0, v14

    return-void
.end method

.method public e()J
    .locals 2

    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->f()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/b;->e()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/d;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    invoke-interface {v2, v0}, Lcom/facebook/fresco/animation/backend/d;->j(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    int-to-long v0, v1

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetFrameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/frame/b;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 3
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:J

    .line 4
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public o(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationBackend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/frame/a;

    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/frame/a;-><init>(Lcom/facebook/fresco/animation/backend/d;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    .line 3
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/a;->e(Landroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    invoke-static {p1}, Lcom/facebook/fresco/animation/drawable/a;->b(Lcom/facebook/fresco/animation/backend/a;)Lcom/facebook/fresco/animation/frame/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/frame/b;

    .line 7
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/a;->stop()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->e(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 3
    iput-wide v4, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public p(Lcom/facebook/fresco/animation/drawable/c;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/facebook/fresco/animation/drawable/a;->s:Lcom/facebook/fresco/animation/drawable/c;

    :goto_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    return-void
.end method

.method public q(Lcom/facebook/fresco/animation/drawable/a$b;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/a$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/a$b;

    return-void
.end method

.method public r(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameSchedulingDelayMs"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/a;->k:J

    return-void
.end method

.method public s(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameSchedulingOffsetMs"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/a;->l:J

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/drawable/e;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/e;->b(I)V

    .line 4
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->k(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/drawable/e;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/drawee/drawable/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/e;->c(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->g(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->a:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    .line 3
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->h:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->d:J

    .line 5
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 6
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 7
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->j:I

    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->g:I

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/c;->a(Lcom/facebook/fresco/animation/drawable/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->d:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->h:J

    .line 4
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->i:J

    .line 5
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->g:I

    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->j:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:J

    .line 8
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->g:I

    .line 11
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->n:Lcom/facebook/fresco/animation/drawable/c;

    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/c;->b(Lcom/facebook/fresco/animation/drawable/a;)V

    return-void
.end method
