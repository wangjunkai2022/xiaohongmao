.class Lcom/google/common/collect/c0;
.super Lcom/google/common/collect/a0;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a0<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final v:I = -0x2


# instance fields
.field transient r:[J
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient s:I

.field private transient t:I

.field private final u:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/c0;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/c0;-><init>(IFZ)V

    return-void
.end method

.method constructor <init>(IFZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a0;-><init>(IF)V

    .line 4
    iput-boolean p3, p0, Lcom/google/common/collect/c0;->u:Z

    return-void
.end method

.method public static L()Lcom/google/common/collect/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/c0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c0;

    invoke-direct {v0}, Lcom/google/common/collect/c0;-><init>()V

    return-object v0
.end method

.method public static M(I)Lcom/google/common/collect/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/c0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c0;-><init>(I)V

    return-object v0
.end method

.method private N(I)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/c0;->r:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    return p1
.end method

.method private O(II)V
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/c0;->r:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private P(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/c0;->s:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/c0;->Q(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/c0;->t:I

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/c0;->O(II)V

    :goto_1
    return-void
.end method

.method private Q(II)V
    .locals 7

    iget-object v0, p0, Lcom/google/common/collect/c0;->r:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method


# virtual methods
.method E(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/a0;->E(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0;->r:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/c0;->r:[J

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/a0;->clear()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/c0;->s:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/c0;->t:I

    return-void
.end method

.method d(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/c0;->u:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0;->N(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c0;->q(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/c0;->P(II)V

    .line 3
    iget v0, p0, Lcom/google/common/collect/c0;->t:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/c0;->P(II)V

    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/c0;->P(II)V

    .line 5
    iget p1, p0, Lcom/google/common/collect/a0;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/a0;->f:I

    :cond_0
    return-void
.end method

.method e(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a0;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method n()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/c0;->s:I

    return v0
.end method

.method q(I)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/c0;->r:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    return p1
.end method

.method u(IF)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/a0;->u(IF)V

    const/4 p2, -0x2

    .line 2
    iput p2, p0, Lcom/google/common/collect/c0;->s:I

    .line 3
    iput p2, p0, Lcom/google/common/collect/c0;->t:I

    .line 4
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/c0;->r:[J

    const-wide/16 v0, -0x1

    .line 5
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method v(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/a0;->v(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 2
    iget p2, p0, Lcom/google/common/collect/c0;->t:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/c0;->P(II)V

    const/4 p2, -0x2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/c0;->P(II)V

    return-void
.end method

.method x(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0;->N(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c0;->q(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/c0;->P(II)V

    if-ge p1, v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/common/collect/c0;->N(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/c0;->P(II)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/c0;->q(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/c0;->P(II)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/a0;->x(I)V

    return-void
.end method
