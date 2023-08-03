.class final Lcom/google/android/exoplayer2/source/c1;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/c1$c;,
        Lcom/google/android/exoplayer2/source/c1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/w;",
        "Lcom/google/android/exoplayer2/upstream/Loader$b<",
        "Lcom/google/android/exoplayer2/source/c1$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "SingleSampleMediaPeriod"

.field private static final p:I = 0x400


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/o;

.field private final b:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/upstream/f0;

.field private final e:Lcom/google/android/exoplayer2/source/h0$a;

.field private final f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/c1$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:J

.field final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field final j:Lcom/google/android/exoplayer2/Format;

.field final k:Z

.field l:Z

.field m:[B

.field n:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/p0;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Z)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c1;->a:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/c1;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/c1;->c:Lcom/google/android/exoplayer2/upstream/p0;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    .line 6
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/c1;->h:J

    .line 7
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    .line 8
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/c1;->e:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/c1;->k:Z

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance p5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array p2, p2, [Lcom/google/android/exoplayer2/Format;

    const/4 p6, 0x0

    aput-object p4, p2, p6

    invoke-direct {p5, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object p5, p3, p6

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c1;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c1;->g:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/c1;)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c1;->e:Lcom/google/android/exoplayer2/source/h0$a;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->k()Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/c1;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public d(JLcom/google/android/exoplayer2/j2;)J
    .locals 0

    return-wide p1
.end method

.method public e(J)Z
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/c1;->l:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->k()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c1;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c1;->c:Lcom/google/android/exoplayer2/upstream/p0;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/m;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 5
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/c1$c;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c1;->a:Lcom/google/android/exoplayer2/upstream/o;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/c1$c;-><init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/m;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    const/4 v4, 0x1

    .line 7
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->d(I)I

    move-result v3

    .line 8
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->n(Lcom/google/android/exoplayer2/upstream/Loader$e;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v9

    .line 9
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/c1;->e:Lcom/google/android/exoplayer2/source/h0$a;

    new-instance v12, Lcom/google/android/exoplayer2/source/o;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/c1;->a:Lcom/google/android/exoplayer2/upstream/o;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/o;-><init>(JLcom/google/android/exoplayer2/upstream/o;J)V

    const/4 v13, 0x1

    const/4 v14, -0x1

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/c1;->h:J

    move-wide/from16 v20, v1

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/exoplayer2/source/h0$a;->A(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public f(Lcom/google/android/exoplayer2/source/c1$c;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c1$c;->b(Lcom/google/android/exoplayer2/source/c1$c;)Lcom/google/android/exoplayer2/upstream/m0;

    move-result-object v2

    .line 2
    new-instance v15, Lcom/google/android/exoplayer2/source/o;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/c1$c;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/m0;->u()Landroid/net/Uri;

    move-result-object v7

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/m0;->v()Ljava/util/Map;

    move-result-object v8

    .line 5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/m0;->t()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/o;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->f(J)V

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c1;->e:Lcom/google/android/exoplayer2/source/h0$a;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/c1;->h:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/h0$a;->r(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public g()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/c1;->l:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public h(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic i(Lcom/google/android/exoplayer2/upstream/Loader$e;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c1$c;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/c1;->f(Lcom/google/android/exoplayer2/source/c1$c;JJZ)V

    return-void
.end method

.method public synthetic j(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/v;->a(Lcom/google/android/exoplayer2/source/w;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Lcom/google/android/exoplayer2/upstream/Loader$e;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c1$c;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/c1;->q(Lcom/google/android/exoplayer2/source/c1$c;JJ)V

    return-void
.end method

.method public l(J)J
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c1;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c1;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c1$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/c1$b;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public m()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public n(Lcom/google/android/exoplayer2/source/w$a;J)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/w$a;->i(Lcom/google/android/exoplayer2/source/w;)V

    return-void
.end method

.method public o([Lcom/google/android/exoplayer2/trackselection/g;[Z[Lcom/google/android/exoplayer2/source/x0;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c1;->g:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    aput-object v2, p3, v0

    .line 5
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/c1$b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/c1$b;-><init>(Lcom/google/android/exoplayer2/source/c1;Lcom/google/android/exoplayer2/source/c1$a;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c1;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 9
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public bridge synthetic p(Lcom/google/android/exoplayer2/upstream/Loader$e;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c1$c;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/c1;->r(Lcom/google/android/exoplayer2/source/c1$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/android/exoplayer2/source/c1$c;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c1$c;->b(Lcom/google/android/exoplayer2/source/c1$c;)Lcom/google/android/exoplayer2/upstream/m0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/m0;->t()J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/source/c1;->n:I

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c1$c;->d(Lcom/google/android/exoplayer2/source/c1$c;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/c1;->m:[B

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/c1;->l:Z

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c1$c;->b(Lcom/google/android/exoplayer2/source/c1$c;)Lcom/google/android/exoplayer2/upstream/m0;

    move-result-object v2

    .line 5
    new-instance v15, Lcom/google/android/exoplayer2/source/o;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/c1$c;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/m0;->u()Landroid/net/Uri;

    move-result-object v7

    .line 7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/m0;->v()Ljava/util/Map;

    move-result-object v8

    iget v2, v0, Lcom/google/android/exoplayer2/source/c1;->n:I

    int-to-long v13, v2

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/o;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->f(J)V

    .line 9
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c1;->e:Lcom/google/android/exoplayer2/source/h0$a;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/c1;->h:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/h0$a;->u(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public r(Lcom/google/android/exoplayer2/source/c1$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    move/from16 v2, p7

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c1$c;->b(Lcom/google/android/exoplayer2/source/c1$c;)Lcom/google/android/exoplayer2/upstream/m0;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/google/android/exoplayer2/source/o;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/c1$c;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/m0;->u()Landroid/net/Uri;

    move-result-object v18

    .line 4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/m0;->v()Ljava/util/Map;

    move-result-object v19

    .line 5
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/m0;->t()J

    move-result-wide v24

    move-object v14, v4

    move-wide v15, v5

    move-object/from16 v17, v7

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    invoke-direct/range {v14 .. v25}, Lcom/google/android/exoplayer2/source/o;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 6
    new-instance v3, Lcom/google/android/exoplayer2/source/s;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/c1;->h:J

    .line 7
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v34

    const/16 v27, 0x1

    const/16 v28, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v35}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 8
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    new-instance v6, Lcom/google/android/exoplayer2/upstream/f0$a;

    invoke-direct {v6, v4, v3, v13, v2}, Lcom/google/android/exoplayer2/upstream/f0$a;-><init>(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;I)V

    .line 9
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/upstream/f0;->a(Lcom/google/android/exoplayer2/upstream/f0$a;)J

    move-result-wide v5

    const/4 v3, 0x0

    const/4 v7, 0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v5, v8

    if-eqz v10, :cond_1

    .line 10
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    .line 11
    invoke-interface {v8, v7}, Lcom/google/android/exoplayer2/upstream/f0;->d(I)I

    move-result v8

    if-lt v2, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 12
    :goto_1
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/source/c1;->k:Z

    if-eqz v8, :cond_2

    if-eqz v2, :cond_2

    const-string v2, "SingleSampleMediaPeriod"

    const-string v3, "Loading failed, treating as end-of-stream."

    .line 13
    invoke-static {v2, v3, v13}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/c1;->l:Z

    .line 15
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->k:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :goto_2
    move-object v15, v2

    goto :goto_3

    :cond_2
    if-eqz v10, :cond_3

    .line 16
    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/Loader;->i(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v2

    goto :goto_2

    .line 17
    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->l:Lcom/google/android/exoplayer2/upstream/Loader$c;

    goto :goto_2

    .line 18
    :goto_3
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v2

    xor-int/lit8 v16, v2, 0x1

    .line 19
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c1;->e:Lcom/google/android/exoplayer2/source/h0$a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/c1;->h:J

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-wide v11, v10

    const-wide/16 v9, 0x0

    move-object/from16 v13, p6

    move/from16 v14, v16

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/h0$a;->w(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_4

    .line 20
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c1;->d:Lcom/google/android/exoplayer2/upstream/f0;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/c1$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->f(J)V

    :cond_4
    return-object v15
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->l()V

    return-void
.end method

.method public u()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public v(JZ)V
    .locals 0

    return-void
.end method
