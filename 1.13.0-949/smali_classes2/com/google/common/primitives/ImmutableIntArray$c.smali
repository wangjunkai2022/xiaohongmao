.class public final Lcom/google/common/primitives/ImmutableIntArray$c;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    return-void
.end method

.method private g(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 3
    array-length p1, p1

    invoke-static {p1, v0}, Lcom/google/common/primitives/ImmutableIntArray$c;->h(II)I

    move-result p1

    new-array p1, p1, [I

    .line 4
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    :cond_0
    return-void
.end method

.method private static h(II)I
    .locals 1

    if-ltz p1, :cond_2

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public a(I)Lcom/google/common/primitives/ImmutableIntArray$c;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$c;->g(I)V

    .line 2
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    aput p1, v1, v2

    add-int/2addr v2, v0

    .line 3
    iput v2, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    return-object p0
.end method

.method public b(Lcom/google/common/primitives/ImmutableIntArray;)Lcom/google/common/primitives/ImmutableIntArray$c;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$c;->g(I)V

    .line 2
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableIntArray;->a(Lcom/google/common/primitives/ImmutableIntArray;)[I

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableIntArray;->b(Lcom/google/common/primitives/ImmutableIntArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    return-object p0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray$c;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableIntArray$c;->d(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$c;->a(I)Lcom/google/common/primitives/ImmutableIntArray$c;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray$c;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$c;->g(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public e([I)Lcom/google/common/primitives/ImmutableIntArray$c;
    .locals 4

    .line 1
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$c;->g(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    return-object p0
.end method

.method public f()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 5
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->c()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->a:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray$c;->b:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([IIILcom/google/common/primitives/ImmutableIntArray$a;)V

    :goto_0
    return-object v0
.end method
