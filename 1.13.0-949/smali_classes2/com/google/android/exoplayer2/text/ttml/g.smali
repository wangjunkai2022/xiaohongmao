.class final Lcom/google/android/exoplayer2/text/ttml/g;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/g$b;,
        Lcom/google/android/exoplayer2/text/ttml/g$a;,
        Lcom/google/android/exoplayer2/text/ttml/g$c;
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:I = 0x3

.field private static final C:I = 0x0

.field private static final D:I = 0x1

.field public static final E:I = 0x1

.field public static final F:I = 0x2

.field public static final G:I = 0x3

.field public static final H:I = 0x4

.field public static final t:I = -0x1

.field public static final u:F = 3.4028235E38f

.field public static final v:I = 0x0

.field public static final w:I = 0x1

.field public static final x:I = 0x2

.field public static final y:I = 0x3

.field public static final z:I = 0x1


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:I

.field private r:Lcom/google/android/exoplayer2/text/ttml/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->f:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->g:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->h:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->j:I

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->m:I

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->n:I

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->q:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->s:F

    return-void
.end method

.method private s(Lcom/google/android/exoplayer2/text/ttml/g;Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->x(I)Lcom/google/android/exoplayer2/text/ttml/g;

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->h:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->h:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->a:Ljava/lang/String;

    .line 9
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->f:I

    if-ne v0, v1, :cond_4

    .line 10
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->f:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->f:I

    .line 11
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->g:I

    if-ne v0, v1, :cond_5

    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->g:I

    .line 13
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->n:I

    if-ne v0, v1, :cond_6

    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->n:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->n:I

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->o:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->o:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->o:Landroid/text/Layout$Alignment;

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->p:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->p:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->p:Landroid/text/Layout$Alignment;

    .line 19
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->q:I

    if-ne v0, v1, :cond_9

    .line 20
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->q:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->q:I

    .line 21
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->j:I

    if-ne v0, v1, :cond_a

    .line 22
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->j:I

    .line 23
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->k:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->k:F

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->r:Lcom/google/android/exoplayer2/text/ttml/b;

    if-nez v0, :cond_b

    .line 25
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->r:Lcom/google/android/exoplayer2/text/ttml/b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->r:Lcom/google/android/exoplayer2/text/ttml/b;

    .line 26
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->s:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    .line 27
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->s:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->s:F

    :cond_c
    if-eqz p2, :cond_d

    .line 28
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->e:Z

    if-nez v0, :cond_d

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->e:Z

    if-eqz v0, :cond_d

    .line 29
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->v(I)Lcom/google/android/exoplayer2/text/ttml/g;

    :cond_d
    if-eqz p2, :cond_e

    .line 30
    iget p2, p0, Lcom/google/android/exoplayer2/text/ttml/g;->m:I

    if-ne p2, v1, :cond_e

    iget p1, p1, Lcom/google/android/exoplayer2/text/ttml/g;->m:I

    if-eq p1, v1, :cond_e

    .line 31
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->m:I

    :cond_e
    return-object p0
.end method


# virtual methods
.method public A(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->j:I

    return-object p0
.end method

.method public B(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->l:Ljava/lang/String;

    return-object p0
.end method

.method public C(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    return-object p0
.end method

.method public D(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->f:I

    return-object p0
.end method

.method public E(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->p:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public F(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->n:I

    return-object p0
.end method

.method public G(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->m:I

    return-object p0
.end method

.method public H(F)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->s:F

    return-object p0
.end method

.method public I(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->o:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public J(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->q:I

    return-object p0
.end method

.method public K(Lcom/google/android/exoplayer2/text/ttml/b;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->r:Lcom/google/android/exoplayer2/text/ttml/b;

    return-object p0
.end method

.method public L(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->g:I

    return-object p0
.end method

.method public a(Lcom/google/android/exoplayer2/text/ttml/g;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->s(Lcom/google/android/exoplayer2/text/ttml/g;Z)Lcom/google/android/exoplayer2/text/ttml/g;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->d:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->b:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->k:F

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->j:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->p:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->n:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->m:I

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->s:F

    return v0
.end method

.method public l()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/ttml/g;->i:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public m()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->o:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o()Lcom/google/android/exoplayer2/text/ttml/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->r:Lcom/google/android/exoplayer2/text/ttml/b;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->e:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->c:Z

    return v0
.end method

.method public r(Lcom/google/android/exoplayer2/text/ttml/g;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->s(Lcom/google/android/exoplayer2/text/ttml/g;Z)Lcom/google/android/exoplayer2/text/ttml/g;

    move-result-object p1

    return-object p1
.end method

.method public t()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public v(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->d:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->e:Z

    return-object p0
.end method

.method public w(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->h:I

    return-object p0
.end method

.method public x(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->b:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->c:Z

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public z(F)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->k:F

    return-object p0
.end method
