.class final Lcom/google/common/collect/TreeMultiset$f;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/TreeMultiset$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private g:Lcom/google/common/collect/TreeMultiset$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private h:Lcom/google/common/collect/TreeMultiset$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private i:Lcom/google/common/collect/TreeMultiset$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    int-to-long p1, p2

    .line 5
    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 6
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 7
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 9
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    return-void
.end method

.method private A()Lcom/google/common/collect/TreeMultiset$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->s()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->C()V

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$f;->s()I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$f;->H()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->I()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$f;->s()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$f;->I()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->H()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->D()V

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->C()V

    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$f;->z(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$f;->z(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->u(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->u(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 3
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$f;->L(Lcom/google/common/collect/TreeMultiset$f;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$f;->L(Lcom/google/common/collect/TreeMultiset$f;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    return-void
.end method

.method private F(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$f;->F(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 4
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$f;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1
.end method

.method private G(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$f;->G(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 4
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$f;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1
.end method

.method private H()Lcom/google/common/collect/TreeMultiset$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 4
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 5
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 6
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->B()V

    .line 8
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$f;->C()V

    return-object v0
.end method

.method private I()Lcom/google/common/collect/TreeMultiset$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 4
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 5
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 6
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->B()V

    .line 8
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$f;->C()V

    return-object v0
.end method

.method private static L(Lcom/google/common/collect/TreeMultiset$f;)J
    .locals 2
    .param p0    # Lcom/google/common/collect/TreeMultiset$f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$f;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->t(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$f;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->w(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset$f;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    return p0
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset$f;I)I
    .locals 0

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    return p1
.end method

.method static synthetic e(Lcom/google/common/collect/TreeMultiset$f;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/common/collect/TreeMultiset$f;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    return p0
.end method

.method static synthetic g(Lcom/google/common/collect/TreeMultiset$f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    return-object p1
.end method

.method static synthetic j(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    return-object p0
.end method

.method static synthetic k(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    return-object p1
.end method

.method static synthetic l(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$f;->i:Lcom/google/common/collect/TreeMultiset$f;

    return-object p0
.end method

.method static synthetic m(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->i:Lcom/google/common/collect/TreeMultiset$f;

    return-object p1
.end method

.method static synthetic n(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$f;->h:Lcom/google/common/collect/TreeMultiset$f;

    return-object p0
.end method

.method static synthetic o(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->h:Lcom/google/common/collect/TreeMultiset$f;

    return-object p1
.end method

.method private q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->h:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/TreeMultiset;->p(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)V

    .line 3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    .line 4
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    return-object p0
.end method

.method private r(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->i:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {p0, v0, p1}, Lcom/google/common/collect/TreeMultiset;->p(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)V

    .line 3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    .line 4
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    return-object p0
.end method

.method private s()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$f;->z(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$f;->z(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private t(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->t(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$f;

    :goto_0
    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->t(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private v()Lcom/google/common/collect/TreeMultiset$f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->h:Lcom/google/common/collect/TreeMultiset$f;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->i:Lcom/google/common/collect/TreeMultiset$f;

    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->q(Lcom/google/common/collect/TreeMultiset$f;Lcom/google/common/collect/TreeMultiset$f;)V

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    return-object v0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v2, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v3, v1, Lcom/google/common/collect/TreeMultiset$f;->e:I

    iget v4, v2, Lcom/google/common/collect/TreeMultiset$f;->e:I

    if-lt v3, v4, :cond_2

    .line 8
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->h:Lcom/google/common/collect/TreeMultiset$f;

    .line 9
    invoke-direct {v1, v2}, Lcom/google/common/collect/TreeMultiset$f;->F(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v1

    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 10
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 11
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 12
    iget-wide v3, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long v0, v0

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 13
    invoke-direct {v2}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    return-object v0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$f;->i:Lcom/google/common/collect/TreeMultiset$f;

    .line 15
    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$f;->G(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 16
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 17
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 18
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 19
    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object v0

    return-object v0
.end method

.method private w(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->w(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$f;

    :goto_0
    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->w(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static z(Lcom/google/common/collect/TreeMultiset$f;)I
    .locals 0
    .param p0    # Lcom/google/common/collect/TreeMultiset$f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    :goto_0
    return p0
.end method


# virtual methods
.method E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    .line 3
    aput v1, p4, v1

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$f;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 5
    aget p1, p4, v1

    if-lez p1, :cond_2

    .line 6
    aget p1, p4, v1

    if-lt p3, p1, :cond_1

    .line 7
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 8
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    aget p3, p4, v1

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    goto :goto_0

    .line 9
    :cond_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 10
    :cond_2
    :goto_0
    aget p1, p4, v1

    if-nez p1, :cond_3

    move-object p1, p0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    if-lez v0, :cond_8

    .line 11
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_5

    .line 12
    aput v1, p4, v1

    return-object p0

    .line 13
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$f;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 14
    aget p1, p4, v1

    if-lez p1, :cond_7

    .line 15
    aget p1, p4, v1

    if-lt p3, p1, :cond_6

    .line 16
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 17
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    aget p3, p4, v1

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    goto :goto_2

    .line 18
    :cond_6
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 19
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_9

    .line 21
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->v()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    :cond_9
    sub-int/2addr p1, p3

    .line 22
    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    .line 23
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    return-object p0
.end method

.method J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$f;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_5

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v2, :cond_1

    .line 3
    aput v1, p5, v1

    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 4
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$f;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$f;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 6
    aget p1, p5, v1

    if-ne p1, p3, :cond_4

    if-nez p4, :cond_2

    .line 7
    aget p1, p5, v1

    if-eqz p1, :cond_2

    .line 8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    .line 9
    aget p1, p5, v1

    if-nez p1, :cond_3

    .line 10
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 11
    :cond_3
    :goto_0
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    :cond_5
    if-lez v0, :cond_b

    .line 13
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v2, :cond_7

    .line 14
    aput v1, p5, v1

    if-nez p3, :cond_6

    if-lez p4, :cond_6

    .line 15
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$f;->r(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p0

    :cond_7
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$f;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 17
    aget p1, p5, v1

    if-ne p1, p3, :cond_a

    if-nez p4, :cond_8

    .line 18
    aget p1, p5, v1

    if-eqz p1, :cond_8

    .line 19
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    goto :goto_1

    :cond_8
    if-lez p4, :cond_9

    .line 20
    aget p1, p5, v1

    if-nez p1, :cond_9

    .line 21
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 22
    :cond_9
    :goto_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 23
    :cond_a
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 24
    :cond_b
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    aput p1, p5, v1

    if-ne p3, p1, :cond_d

    if-nez p4, :cond_c

    .line 25
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->v()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 26
    :cond_c
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    sub-int p1, p4, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 27
    iput p4, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    :cond_d
    return-object p0
.end method

.method K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_1

    .line 3
    aput v1, p4, v1

    if-lez p3, :cond_0

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$f;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$f;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez p3, :cond_2

    .line 6
    aget p1, p4, v1

    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    goto :goto_1

    :cond_2
    if-lez p3, :cond_3

    .line 8
    aget p1, p4, v1

    if-nez p1, :cond_3

    .line 9
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 10
    :cond_3
    :goto_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 11
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    :cond_4
    if-lez v0, :cond_9

    .line 12
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_6

    .line 13
    aput v1, p4, v1

    if-lez p3, :cond_5

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$f;->r(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, p0

    :goto_2
    return-object p1

    .line 15
    :cond_6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$f;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez p3, :cond_7

    .line 16
    aget p1, p4, v1

    if-eqz p1, :cond_7

    .line 17
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    goto :goto_3

    :cond_7
    if-lez p3, :cond_8

    .line 18
    aget p1, p4, v1

    if-nez p1, :cond_8

    .line 19
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 20
    :cond_8
    :goto_3
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 21
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    aput p1, p4, v1

    if-nez p3, :cond_a

    .line 23
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->v()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 25
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    return-object p0
.end method

.method p(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    .line 3
    aput v2, p4, v2

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$f;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$f;->p(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    .line 7
    aget p2, p4, v2

    if-nez p2, :cond_1

    .line 8
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 9
    :cond_1
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 10
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$f;->e:I

    if-ne p1, v3, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    if-lez v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_4

    .line 12
    aput v2, p4, v2

    .line 13
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$f;->r(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$f;->e:I

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$f;->p(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    .line 16
    aget p2, p4, v2

    if-nez p2, :cond_5

    .line 17
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$f;->c:I

    .line 18
    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    .line 19
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$f;->e:I

    if-ne p1, v3, :cond_6

    move-object p1, p0

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;->A()Lcom/google/common/collect/TreeMultiset$f;

    move-result-object p1

    :goto_1
    return-object p1

    .line 20
    :cond_7
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    aput p1, p4, v2

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p4, p1, v5

    if-gtz p4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 21
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 22
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    .line 23
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$f;->d:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$f;->y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$f;->x()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/l3;->k(Ljava/lang/Object;I)Lcom/google/common/collect/k3$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/k3$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->f:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->u(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    if-lez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->g:Lcom/google/common/collect/TreeMultiset$f;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$f;->u(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_1
    return v1

    .line 4
    :cond_3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    return p1
.end method

.method x()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$f;->b:I

    return v0
.end method

.method y()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-object v0
.end method
