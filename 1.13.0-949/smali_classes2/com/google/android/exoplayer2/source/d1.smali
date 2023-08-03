.class public final Lcom/google/android/exoplayer2/source/d1;
.super Lcom/google/android/exoplayer2/source/a;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/d1$b;
    }
.end annotation


# instance fields
.field private final g:Lcom/google/android/exoplayer2/upstream/o;

.field private final h:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final i:Lcom/google/android/exoplayer2/Format;

.field private final j:J

.field private final k:Lcom/google/android/exoplayer2/upstream/f0;

.field private final l:Z

.field private final m:Lcom/google/android/exoplayer2/s2;

.field private final n:Lcom/google/android/exoplayer2/b1;

.field private o:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$h;Lcom/google/android/exoplayer2/upstream/m$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    move-object v2, p3

    .line 3
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/d1;->h:Lcom/google/android/exoplayer2/upstream/m$a;

    move-wide v2, p4

    .line 4
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/d1;->j:J

    move-object/from16 v4, p6

    .line 5
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/d1;->k:Lcom/google/android/exoplayer2/upstream/f0;

    move/from16 v4, p7

    .line 6
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/d1;->l:Z

    .line 7
    new-instance v4, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/b1$h;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/b1$c;->z(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v4

    .line 10
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/b1$c;->D(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/b1$c;->E(Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/d1;->n:Lcom/google/android/exoplayer2/b1;

    .line 13
    new-instance v4, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    move-object v5, p1

    .line 14
    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/Format$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/b1$h;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/b1$h;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/b1$h;->d:I

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$b;->g0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/b1$h;->e:I

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$b;->c0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/b1$h;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/d1;->i:Lcom/google/android/exoplayer2/Format;

    .line 21
    new-instance v4, Lcom/google/android/exoplayer2/upstream/o$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplayer2/b1$h;->a:Landroid/net/Uri;

    .line 22
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/upstream/o$b;->j(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/upstream/o$b;->c(I)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/o$b;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/d1;->g:Lcom/google/android/exoplayer2/upstream/o;

    .line 23
    new-instance v9, Lcom/google/android/exoplayer2/source/b1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/b1;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/d1;->m:Lcom/google/android/exoplayer2/s2;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$h;Lcom/google/android/exoplayer2/upstream/m$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/d1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/d1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$h;Lcom/google/android/exoplayer2/upstream/m$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 10

    .line 1
    new-instance p2, Lcom/google/android/exoplayer2/source/c1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d1;->g:Lcom/google/android/exoplayer2/upstream/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d1;->h:Lcom/google/android/exoplayer2/upstream/m$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d1;->o:Lcom/google/android/exoplayer2/upstream/p0;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d1;->i:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/d1;->j:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/d1;->k:Lcom/google/android/exoplayer2/upstream/f0;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/d1;->l:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/c1;-><init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/p0;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Z)V

    return-object p2
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d1;->n:Lcom/google/android/exoplayer2/b1;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d1;->n:Lcom/google/android/exoplayer2/b1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c1;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/c1;->t()V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method protected y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d1;->o:Lcom/google/android/exoplayer2/upstream/p0;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d1;->m:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method
