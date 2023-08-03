.class final Lcom/google/android/exoplayer2/source/i$b;
.super Lcom/google/android/exoplayer2/a;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final i:I

.field private final j:I

.field private final k:[I

.field private final l:[I

.field private final m:[Lcom/google/android/exoplayer2/s2;

.field private final n:[Ljava/lang/Object;

.field private final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/z0;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;",
            "Lcom/google/android/exoplayer2/source/z0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer2/a;-><init>(ZLcom/google/android/exoplayer2/source/z0;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i$b;->k:[I

    .line 4
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i$b;->l:[I

    .line 5
    new-array p3, p2, [Lcom/google/android/exoplayer2/s2;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i$b;->m:[Lcom/google/android/exoplayer2/s2;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/i$b;->n:[Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/i$b;->o:Ljava/util/HashMap;

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/i$e;

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i$b;->m:[Lcom/google/android/exoplayer2/s2;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i$b;->l:[I

    aput p2, v2, v0

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i$b;->k:[I

    aput p3, v2, v0

    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i$b;->m:[Lcom/google/android/exoplayer2/s2;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v2

    add-int/2addr p2, v2

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i$b;->m:[Lcom/google/android/exoplayer2/s2;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2;->m()I

    move-result v2

    add-int/2addr p3, v2

    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i$b;->n:[Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/i$e;->b:Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$b;->o:Ljava/util/HashMap;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    .line 16
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/source/i$b;->i:I

    .line 17
    iput p3, p0, Lcom/google/android/exoplayer2/source/i$b;->j:I

    return-void
.end method


# virtual methods
.method protected A(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->l:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/z0;->i([IIZZ)I

    move-result p1

    return p1
.end method

.method protected D(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->n:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected F(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->k:[I

    aget p1, v0, p1

    return p1
.end method

.method protected G(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->l:[I

    aget p1, v0, p1

    return p1
.end method

.method protected J(I)Lcom/google/android/exoplayer2/s2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->m:[Lcom/google/android/exoplayer2/s2;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/i$b;->j:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/i$b;->i:I

    return v0
.end method

.method protected y(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected z(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$b;->k:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/z0;->i([IIZZ)I

    move-result p1

    return p1
.end method
