.class Lcom/google/common/collect/g3$c;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/g3$c;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g3<",
            "TE;>.c;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/g3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/g3;Lcom/google/common/collect/s3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/s3<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/g3$c;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->q(I)Z

    move-result p0

    return p0
.end method

.method private k(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result p1

    return p1
.end method

.method private l(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private m(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private n(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private q(I)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v1}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g3$c;->d(II)I

    move-result v0

    if-lez v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->n(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v1}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->n(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g3$c;->d(II)I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    if-lez p1, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g3$c;->d(II)I

    move-result v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->k(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/g3$c;->d(II)I

    move-result p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method b(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g3$c;->f(ILjava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, p1

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/g3$c;->b:Lcom/google/common/collect/g3$c;

    .line 3
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/google/common/collect/g3$c;->c(ILjava/lang/Object;)I

    return-void
.end method

.method c(ILjava/lang/Object;)I
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->k(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v2}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v0}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return p1
.end method

.method d(II)I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method e(ILjava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g3$c;->i(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v1}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {p1}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p2, p1, v0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g3$c;->f(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method f(ILjava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {p1}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result v2

    .line 5
    invoke-direct {p0, v2}, Lcom/google/common/collect/g3$c;->n(I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v4}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 7
    iget-object v3, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    invoke-virtual {v4, v3, v1}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move v0, v2

    move-object v1, v3

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v2}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    .line 11
    iget-object p1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {p1}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p2, p1, v0

    return v0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v0}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return p1
.end method

.method g(I)I
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g3$c;->j(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v1}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    move p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method h(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v0}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v0}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 p2, p1, 0x1

    :goto_1
    if-ge p2, v0, :cond_3

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/g3$c;->d(II)I

    move-result v1

    if-gez v1, :cond_2

    move p1, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return p1
.end method

.method i(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g3$c;->h(II)I

    move-result p1

    return p1
.end method

.method j(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/g3$c;->h(II)I

    move-result p1

    return p1
.end method

.method o(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v0}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result v1

    .line 3
    invoke-direct {p0, v1}, Lcom/google/common/collect/g3$c;->n(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/google/common/collect/g3$c;->l(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v2}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->a:Lcom/google/common/collect/s3;

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v2}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v1

    .line 8
    iget-object p1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {p1}, Lcom/google/common/collect/g3;->a(Lcom/google/common/collect/g3;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {v2}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result v2

    aput-object v0, p1, v2

    return v1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-static {p1}, Lcom/google/common/collect/g3;->b(Lcom/google/common/collect/g3;)I

    move-result p1

    return p1
.end method

.method p(IILjava/lang/Object;)Lcom/google/common/collect/g3$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/g3$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/g3$c;->e(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return-object v1

    :cond_0
    if-ge v0, p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/g3$c;->c:Lcom/google/common/collect/g3;

    invoke-direct {p0, p1}, Lcom/google/common/collect/g3$c;->m(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/common/collect/g3;->j(I)Ljava/lang/Object;

    move-result-object p2

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/g3$c;->b:Lcom/google/common/collect/g3$c;

    invoke-virtual {v2, v0, p3}, Lcom/google/common/collect/g3$c;->c(ILjava/lang/Object;)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 5
    new-instance p1, Lcom/google/common/collect/g3$d;

    invoke-direct {p1, p3, p2}, Lcom/google/common/collect/g3$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    return-object v1
.end method
