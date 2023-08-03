.class public Lcom/google/android/exoplayer2/ui/n$c;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/exoplayer2/ui/n$e;

.field private e:Lcom/google/android/exoplayer2/ui/n$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/ui/n$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/google/android/exoplayer2/ui/n$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->a:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/ui/n$c;->b:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/n$c;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/n$c;->d:Lcom/google/android/exoplayer2/ui/n$e;

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->i:I

    .line 8
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->c0:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->j:I

    .line 9
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->Z:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->l:I

    .line 10
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->Y:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->m:I

    .line 11
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->d0:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->n:I

    .line 12
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->b0:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->k:I

    .line 13
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->W:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->o:I

    .line 14
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->a0:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->p:I

    .line 15
    sget p1, Lcom/google/android/exoplayer2/ui/q$e;->X:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->q:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/ui/n;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/ui/n$c;->g:I

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/n$c;->c:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/ui/n$c;->h:I

    iget v5, v0, Lcom/google/android/exoplayer2/ui/n$c;->i:I

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/exoplayer2/util/f0;->a(Landroid/content/Context;Ljava/lang/String;III)V

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ui/n;

    move-object v6, v1

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/n$c;->a:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/n$c;->c:Ljava/lang/String;

    iget v9, v0, Lcom/google/android/exoplayer2/ui/n$c;->b:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/n$c;->d:Lcom/google/android/exoplayer2/ui/n$e;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/n$c;->e:Lcom/google/android/exoplayer2/ui/n$g;

    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/n$c;->f:Lcom/google/android/exoplayer2/ui/n$d;

    iget v13, v0, Lcom/google/android/exoplayer2/ui/n$c;->j:I

    iget v14, v0, Lcom/google/android/exoplayer2/ui/n$c;->l:I

    iget v15, v0, Lcom/google/android/exoplayer2/ui/n$c;->m:I

    iget v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->n:I

    move/from16 v16, v2

    iget v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->k:I

    move/from16 v17, v2

    iget v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->o:I

    move/from16 v18, v2

    iget v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->p:I

    move/from16 v19, v2

    iget v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->q:I

    move/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/n$c;->r:Ljava/lang/String;

    move-object/from16 v21, v2

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;IIIIIIIILjava/lang/String;Lcom/google/android/exoplayer2/ui/n$a;)V

    return-object v1
.end method

.method public b(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->h:I

    return-object p0
.end method

.method public c(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->i:I

    return-object p0
.end method

.method public d(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->g:I

    return-object p0
.end method

.method public e(Lcom/google/android/exoplayer2/ui/n$d;)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->f:Lcom/google/android/exoplayer2/ui/n$d;

    return-object p0
.end method

.method public f(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->o:I

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->r:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->q:I

    return-object p0
.end method

.method public i(Lcom/google/android/exoplayer2/ui/n$g;)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->e:Lcom/google/android/exoplayer2/ui/n$g;

    return-object p0
.end method

.method public j(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->m:I

    return-object p0
.end method

.method public k(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->l:I

    return-object p0
.end method

.method public l(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->p:I

    return-object p0
.end method

.method public m(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->k:I

    return-object p0
.end method

.method public n(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->j:I

    return-object p0
.end method

.method public o(I)Lcom/google/android/exoplayer2/ui/n$c;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/n$c;->n:I

    return-object p0
.end method
