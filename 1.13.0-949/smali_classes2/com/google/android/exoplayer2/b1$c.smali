.class public final Lcom/google/android/exoplayer2/b1$c;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1$h;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Lcom/google/android/exoplayer2/f1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/b1$c;->e:J

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->o:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->j:Ljava/util/Map;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->q:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->s:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/b1$c;->x:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/exoplayer2/b1$c;->y:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/b1$c;->z:J

    const v0, -0x800001

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/b1$c;->A:F

    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/b1$c;->B:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/b1;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->e:Lcom/google/android/exoplayer2/b1$d;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/b1$d;->b:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b1$c;->e:J

    .line 15
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b1$d;->c:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/b1$c;->f:Z

    .line 16
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b1$d;->d:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/b1$c;->g:Z

    .line 17
    iget-wide v1, v0, Lcom/google/android/exoplayer2/b1$d;->a:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b1$c;->d:J

    .line 18
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/b1$d;->e:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/b1$c;->h:Z

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->a:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->w:Lcom/google/android/exoplayer2/f1;

    .line 21
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/b1$f;->a:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b1$c;->x:J

    .line 22
    iget-wide v1, v0, Lcom/google/android/exoplayer2/b1$f;->b:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b1$c;->y:J

    .line 23
    iget-wide v1, v0, Lcom/google/android/exoplayer2/b1$f;->c:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b1$c;->z:J

    .line 24
    iget v1, v0, Lcom/google/android/exoplayer2/b1$f;->d:F

    iput v1, p0, Lcom/google/android/exoplayer2/b1$c;->A:F

    .line 25
    iget v0, v0, Lcom/google/android/exoplayer2/b1$f;->e:F

    iput v0, p0, Lcom/google/android/exoplayer2/b1$c;->B:F

    .line 26
    iget-object p1, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    if-eqz p1, :cond_1

    .line 27
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->r:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->c:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->b:Landroid/net/Uri;

    .line 30
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->q:Ljava/util/List;

    .line 31
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->s:Ljava/util/List;

    .line 32
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->v:Ljava/lang/Object;

    .line 33
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$g;->c:Lcom/google/android/exoplayer2/b1$e;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$e;->b:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b1$c;->i:Landroid/net/Uri;

    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$e;->c:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b1$c;->j:Ljava/util/Map;

    .line 36
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b1$e;->d:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/b1$c;->l:Z

    .line 37
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b1$e;->f:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/b1$c;->n:Z

    .line 38
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b1$e;->e:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/b1$c;->m:Z

    .line 39
    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$e;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b1$c;->o:Ljava/util/List;

    .line 40
    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$e;->a:Ljava/util/UUID;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b1$c;->k:Ljava/util/UUID;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$e;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->p:[B

    .line 42
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/b1$g;->d:Lcom/google/android/exoplayer2/b1$b;

    if-eqz p1, :cond_1

    .line 43
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1$b;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b1$c;->t:Landroid/net/Uri;

    .line 44
    iget-object p1, p1, Lcom/google/android/exoplayer2/b1$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->u:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/b1$c;-><init>(Lcom/google/android/exoplayer2/b1;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/exoplayer2/f1;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->w:Lcom/google/android/exoplayer2/f1;

    return-object p0
.end method

.method public B(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public C(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/b1$c;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->q:Ljava/util/List;

    return-object p0
.end method

.method public D(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1$h;",
            ">;)",
            "Lcom/google/android/exoplayer2/b1$c;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->s:Ljava/util/List;

    return-object p0
.end method

.method public E(Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->v:Ljava/lang/Object;

    return-object p0
.end method

.method public F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public G(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/google/android/exoplayer2/b1;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$c;->i:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$c;->k:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/b1$c;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_4

    .line 3
    new-instance v12, Lcom/google/android/exoplayer2/b1$g;

    iget-object v4, v0, Lcom/google/android/exoplayer2/b1$c;->c:Ljava/lang/String;

    .line 4
    iget-object v14, v0, Lcom/google/android/exoplayer2/b1$c;->k:Ljava/util/UUID;

    if-eqz v14, :cond_2

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/b1$e;

    iget-object v15, v0, Lcom/google/android/exoplayer2/b1$c;->i:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/b1$c;->j:Ljava/util/Map;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/b1$c;->l:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/b1$c;->n:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/b1$c;->m:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/b1$c;->o:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/b1$c;->p:[B

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v22}, Lcom/google/android/exoplayer2/b1$e;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/b1$a;)V

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 6
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/b1$c;->t:Landroid/net/Uri;

    if-eqz v2, :cond_3

    new-instance v6, Lcom/google/android/exoplayer2/b1$b;

    iget-object v7, v0, Lcom/google/android/exoplayer2/b1$c;->u:Ljava/lang/Object;

    invoke-direct {v6, v2, v7, v1}, Lcom/google/android/exoplayer2/b1$b;-><init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/google/android/exoplayer2/b1$a;)V

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    iget-object v7, v0, Lcom/google/android/exoplayer2/b1$c;->q:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/b1$c;->r:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/b1$c;->s:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/b1$c;->v:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/b1$g;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/b1$e;Lcom/google/android/exoplayer2/b1$b;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/b1$a;)V

    move-object/from16 v16, v12

    goto :goto_4

    :cond_4
    move-object/from16 v16, v1

    .line 7
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/b1;

    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/b1$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, ""

    :goto_5
    move-object v14, v2

    new-instance v15, Lcom/google/android/exoplayer2/b1$d;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/b1$c;->d:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/b1$c;->e:J

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/b1$c;->f:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/b1$c;->g:Z

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/b1$c;->h:Z

    const/4 v10, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/b1$d;-><init>(JJZZZLcom/google/android/exoplayer2/b1$a;)V

    new-instance v2, Lcom/google/android/exoplayer2/b1$f;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/b1$c;->x:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/b1$c;->y:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/b1$c;->z:J

    iget v9, v0, Lcom/google/android/exoplayer2/b1$c;->A:F

    iget v10, v0, Lcom/google/android/exoplayer2/b1$c;->B:F

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v17 .. v25}, Lcom/google/android/exoplayer2/b1$f;-><init>(JJJFF)V

    .line 9
    iget-object v3, v0, Lcom/google/android/exoplayer2/b1$c;->w:Lcom/google/android/exoplayer2/f1;

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    sget-object v3, Lcom/google/android/exoplayer2/f1;->z:Lcom/google/android/exoplayer2/f1;

    :goto_6
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move-object v13, v1

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/b1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$d;Lcom/google/android/exoplayer2/b1$g;Lcom/google/android/exoplayer2/b1$f;Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/b1$a;)V

    return-object v1
.end method

.method public b(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/b1$c;->c(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->t:Landroid/net/Uri;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/b1$c;->u:Ljava/lang/Object;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b1$c;->b(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lcom/google/android/exoplayer2/b1$c;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/b1$c;->e:J

    return-object p0
.end method

.method public f(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/b1$c;->g:Z

    return-object p0
.end method

.method public g(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/b1$c;->f:Z

    return-object p0
.end method

.method public h(J)Lcom/google/android/exoplayer2/b1$c;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/b1$c;->d:J

    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/b1$c;->h:Z

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->r:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/b1$c;->n:Z

    return-object p0
.end method

.method public l([B)Lcom/google/android/exoplayer2/b1$c;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->p:[B

    return-object p0
.end method

.method public m(Ljava/util/Map;)Lcom/google/android/exoplayer2/b1$c;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/b1$c;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->j:Ljava/util/Map;

    return-object p0
.end method

.method public n(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->i:Landroid/net/Uri;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->i:Landroid/net/Uri;

    return-object p0
.end method

.method public p(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/b1$c;->l:Z

    return-object p0
.end method

.method public q(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/b1$c;->m:Z

    return-object p0
.end method

.method public r(Z)Lcom/google/android/exoplayer2/b1$c;
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/b1$c;->s(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;

    return-object p0
.end method

.method public s(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/b1$c;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->o:Ljava/util/List;

    return-object p0
.end method

.method public t(Ljava/util/UUID;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->k:Ljava/util/UUID;

    return-object p0
.end method

.method public u(J)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/b1$c;->z:J

    return-object p0
.end method

.method public v(F)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/b1$c;->B:F

    return-object p0
.end method

.method public w(J)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/b1$c;->y:J

    return-object p0
.end method

.method public x(F)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/b1$c;->A:F

    return-object p0
.end method

.method public y(J)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/b1$c;->x:J

    return-object p0
.end method

.method public z(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/b1$c;->a:Ljava/lang/String;

    return-object p0
.end method
