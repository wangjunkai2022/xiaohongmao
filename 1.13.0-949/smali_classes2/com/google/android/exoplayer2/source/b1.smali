.class public final Lcom/google/android/exoplayer2/source/b1;
.super Lcom/google/android/exoplayer2/s2;
.source "SinglePeriodTimeline.java"


# static fields
.field private static final s:Ljava/lang/Object;

.field private static final t:Lcom/google/android/exoplayer2/b1;


# instance fields
.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:J

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Lcom/google/android/exoplayer2/b1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Lcom/google/android/exoplayer2/b1$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/b1;->s:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b1$c;->z(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/b1;->t:Lcom/google/android/exoplayer2/b1;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$f;)V
    .locals 21
    .param p17    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/google/android/exoplayer2/b1$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    const/16 v17, 0x0

    .line 10
    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/b1;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$f;)V

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$f;)V
    .locals 3
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/google/android/exoplayer2/b1$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s2;-><init>()V

    move-wide v1, p1

    .line 12
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->f:J

    move-wide v1, p3

    .line 13
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->g:J

    move-wide v1, p5

    .line 14
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->h:J

    move-wide v1, p7

    .line 15
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->i:J

    move-wide v1, p9

    .line 16
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->j:J

    move-wide v1, p11

    .line 17
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->k:J

    move-wide/from16 v1, p13

    .line 18
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->l:J

    move/from16 v1, p15

    .line 19
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/b1;->m:Z

    move/from16 v1, p16

    .line 20
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/b1;->n:Z

    move/from16 v1, p17

    .line 21
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/b1;->o:Z

    move-object/from16 v1, p18

    .line 22
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/b1;->p:Ljava/lang/Object;

    .line 23
    invoke-static/range {p19 .. p19}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/b1;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/b1;->q:Lcom/google/android/exoplayer2/b1;

    move-object/from16 v1, p20

    .line 24
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/b1;->r:Lcom/google/android/exoplayer2/b1$f;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 23
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/exoplayer2/source/b1;->t:Lcom/google/android/exoplayer2/b1;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1;->b()Lcom/google/android/exoplayer2/b1$c;

    move-result-object v1

    move-object/from16 v2, p19

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b1$c;->E(Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v21

    if-eqz p17, :cond_0

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v22, v0

    const/16 v19, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v20, p18

    .line 9
    invoke-direct/range {v2 .. v22}, Lcom/google/android/exoplayer2/source/b1;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$f;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;)V
    .locals 21
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 4
    iget-object v0, v15, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v20, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 5
    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/b1;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$f;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 20
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/b1;-><init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;)V
    .locals 14
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/b1;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/b1;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/b1;->s:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/exoplayer2/source/b1;->s:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/b1;->i:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/b1;->k:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/s2$b;->t(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/s2$b;

    move-result-object p1

    return-object p1
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 2
    sget-object p1, Lcom/google/android/exoplayer2/source/b1;->s:Ljava/lang/Object;

    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/s2$d;J)Lcom/google/android/exoplayer2/s2$d;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 2
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->l:J

    .line 3
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/b1;->n:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v14, :cond_1

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/b1;->o:Z

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-eqz v7, :cond_1

    .line 4
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/b1;->j:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v1

    .line 5
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/s2$d;->r:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b1;->q:Lcom/google/android/exoplayer2/b1;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/b1;->p:Ljava/lang/Object;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/b1;->f:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/b1;->g:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/b1;->h:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/b1;->m:Z

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/b1;->r:Lcom/google/android/exoplayer2/b1$f;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->j:J

    move-wide/from16 v18, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/b1;->k:J

    move-wide/from16 v22, v1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/s2$d;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/b1;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/b1$f;JJIIJ)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v1

    return-object v1
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
