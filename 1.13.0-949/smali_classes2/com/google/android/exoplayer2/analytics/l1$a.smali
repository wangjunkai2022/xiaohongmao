.class final Lcom/google/android/exoplayer2/analytics/l1$a;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Lcom/google/android/exoplayer2/source/z$a;

.field private e:Z

.field private f:Z

.field final synthetic g:Lcom/google/android/exoplayer2/analytics/l1;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/l1;Ljava/lang/String;ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->g:Lcom/google/android/exoplayer2/analytics/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p1, p4, Lcom/google/android/exoplayer2/source/x;->d:J

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->c:J

    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/analytics/l1$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/analytics/l1$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/analytics/l1$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/analytics/l1$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/analytics/l1$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->e:Z

    return p1
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/analytics/l1$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/analytics/l1$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->f:Z

    return p1
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/analytics/l1$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    return-object p0
.end method

.method private l(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result p1

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    return p3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->g:Lcom/google/android/exoplayer2/analytics/l1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/l1;->j(Lcom/google/android/exoplayer2/analytics/l1;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 4
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->g:Lcom/google/android/exoplayer2/analytics/l1;

    invoke-static {p3}, Lcom/google/android/exoplayer2/analytics/l1;->j(Lcom/google/android/exoplayer2/analytics/l1;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/s2$d;->o:I

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->g:Lcom/google/android/exoplayer2/analytics/l1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/l1;->j(Lcom/google/android/exoplayer2/analytics/l1;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/s2$d;->p:I

    if-gt p3, v0, :cond_3

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/s2;->q(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->g:Lcom/google/android/exoplayer2/analytics/l1;

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/l1;->k(Lcom/google/android/exoplayer2/analytics/l1;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/s2;->j(ILcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/s2$b;->c:I

    return p1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method


# virtual methods
.method public i(ILcom/google/android/exoplayer2/source/z$a;)Z
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/x;->d:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->c:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 4
    :cond_3
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/x;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/x;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget v2, p2, Lcom/google/android/exoplayer2/source/x;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/x;->b:I

    if-ne v2, v3, :cond_4

    iget p2, p2, Lcom/google/android/exoplayer2/source/x;->c:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/x;->c:I

    if-ne p2, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/analytics/j1$b;)Z
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    iget p1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->c:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 4
    :cond_2
    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/x;->d:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_3

    return v4

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    if-nez v0, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    iget-object v1, v3, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v0

    .line 7
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v1

    .line 8
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/x;->d:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/source/x;->d:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_b

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    if-le v0, v1, :cond_6

    return v4

    .line 9
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget v0, p1, Lcom/google/android/exoplayer2/source/x;->b:I

    .line 11
    iget p1, p1, Lcom/google/android/exoplayer2/source/x;->c:I

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget v3, v1, Lcom/google/android/exoplayer2/source/x;->b:I

    if-gt v0, v3, :cond_7

    if-ne v0, v3, :cond_8

    iget v0, v1, Lcom/google/android/exoplayer2/source/x;->c:I

    if-le p1, v0, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    return v2

    .line 13
    :cond_9
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget p1, p1, Lcom/google/android/exoplayer2/source/x;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/x;->b:I

    if-le p1, v0, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    :goto_0
    return v2
.end method

.method public k(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 5
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/x;->d:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->c:J

    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/l1$a;->l(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->b:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/l1$a;->d:Lcom/google/android/exoplayer2/source/z$a;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
