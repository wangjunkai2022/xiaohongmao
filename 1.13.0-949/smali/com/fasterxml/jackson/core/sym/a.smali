.class public final Lcom/fasterxml/jackson/core/sym/a;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/a$a;
    }
.end annotation


# static fields
.field private static final p:I = 0x40

.field private static final q:I = 0x10000

.field private static final r:I = 0x10

.field protected static final s:I = 0x1770

.field private static final t:I = 0x21

.field private static final u:I = 0x1003f

.field private static final v:I = 0x1f


# instance fields
.field protected final a:Lcom/fasterxml/jackson/core/sym/a;

.field protected final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/fasterxml/jackson/core/sym/a$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:I

.field protected final d:Z

.field protected final e:Z

.field protected f:[I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:[Ljava/lang/String;

.field protected m:I

.field protected n:I

.field protected o:Z


# direct methods
.method private constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    .line 5
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    .line 6
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    .line 7
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/a;->e:Z

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    const/16 p1, 0x10

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/2addr p2, p2

    goto :goto_0

    :cond_1
    move p1, p2

    .line 8
    :cond_2
    :goto_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/a$a;->a(I)Lcom/fasterxml/jackson/core/sym/a$a;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/a$a;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    .line 28
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/a;->e:Z

    .line 30
    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    .line 32
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/a$a;->d:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    .line 33
    iget-object v2, p1, Lcom/fasterxml/jackson/core/sym/a$a;->e:[Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    .line 34
    iget p1, p1, Lcom/fasterxml/jackson/core/sym/a$a;->a:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    .line 35
    array-length p1, v0

    .line 36
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    .line 37
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    .line 38
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    .line 39
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    .line 40
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->n:I

    .line 41
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/a;ILcom/fasterxml/jackson/core/sym/a$a;ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    .line 11
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    .line 12
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    .line 13
    iput-boolean p5, p0, Lcom/fasterxml/jackson/core/sym/a;->e:Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    iget p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->b:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    .line 16
    iget p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->a:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    shl-int/lit8 p1, p1, 0x2

    .line 17
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 p2, p1, 0x1

    add-int/2addr p1, p2

    .line 18
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    .line 19
    iget p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->c:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    .line 20
    iget-object p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->d:[I

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    .line 21
    iget-object p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->e:[Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    .line 22
    iget p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->f:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    .line 23
    iget p1, p3, Lcom/fasterxml/jackson/core/sym/a$a;->g:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->n:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    return-void
.end method

.method private J(Lcom/fasterxml/jackson/core/sym/a$a;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/a$a;->b:I

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/sym/a$a;

    .line 3
    iget v2, v1, Lcom/fasterxml/jackson/core/sym/a$a;->b:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1770

    if-le v0, v2, :cond_1

    const/16 p1, 0x40

    .line 4
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/a$a;->a(I)Lcom/fasterxml/jackson/core/sym/a$a;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private K(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/a;->n:I

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    .line 4
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    .line 5
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    add-int v5, v3, v3

    .line 6
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    const/4 v7, 0x1

    const/high16 v8, 0x10000

    if-le v5, v8, :cond_0

    .line 7
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/core/sym/a;->K(Z)V

    return-void

    .line 8
    :cond_0
    array-length v8, v1

    const/4 v9, 0x3

    shl-int/2addr v3, v9

    add-int/2addr v8, v3

    new-array v3, v8, [I

    iput-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    .line 9
    iput v5, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    shl-int/lit8 v3, v5, 0x2

    .line 10
    iput v3, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v8, v3, 0x1

    add-int/2addr v3, v8

    .line 11
    iput v3, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    .line 12
    invoke-static {v5}, Lcom/fasterxml/jackson/core/sym/a;->c(I)I

    move-result v3

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    .line 13
    array-length v3, v2

    shl-int/2addr v3, v7

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    .line 14
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->K(Z)V

    const/16 v3, 0x10

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v6, :cond_6

    add-int/lit8 v10, v5, 0x3

    .line 15
    aget v10, v1, v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v11, v5, 0x2

    .line 16
    aget-object v11, v2, v11

    if-eq v10, v7, :cond_5

    const/4 v12, 0x2

    if-eq v10, v12, :cond_4

    if-eq v10, v9, :cond_3

    .line 17
    array-length v12, v3

    if-le v10, v12, :cond_2

    .line 18
    new-array v3, v10, [I

    :cond_2
    add-int/lit8 v12, v5, 0x1

    .line 19
    aget v12, v1, v12

    .line 20
    invoke-static {v1, v12, v3, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-virtual {p0, v11, v3, v10}, Lcom/fasterxml/jackson/core/sym/a;->s(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_3
    aget v10, v1, v5

    aput v10, v3, v0

    add-int/lit8 v10, v5, 0x1

    .line 23
    aget v10, v1, v10

    aput v10, v3, v7

    add-int/lit8 v10, v5, 0x2

    .line 24
    aget v10, v1, v10

    aput v10, v3, v12

    .line 25
    invoke-virtual {p0, v11, v3, v9}, Lcom/fasterxml/jackson/core/sym/a;->s(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 26
    :cond_4
    aget v10, v1, v5

    aput v10, v3, v0

    add-int/lit8 v10, v5, 0x1

    .line 27
    aget v10, v1, v10

    aput v10, v3, v7

    .line 28
    invoke-virtual {p0, v11, v3, v12}, Lcom/fasterxml/jackson/core/sym/a;->s(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_5
    aget v10, v1, v5

    aput v10, v3, v0

    .line 30
    invoke-virtual {p0, v11, v3, v7}, Lcom/fasterxml/jackson/core/sym/a;->s(Ljava/lang/String;[II)Ljava/lang/String;

    :goto_1
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_6
    if-ne v8, v4, :cond_7

    return-void

    .line 31
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed rehash(): old count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", copyCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([II)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->n:I

    add-int v1, v0, p2

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 3
    array-length v2, v2

    sub-int/2addr v1, v2

    const/16 v2, 0x1000

    .line 4
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    array-length v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v3, v1

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    :cond_0
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/fasterxml/jackson/core/sym/a;->n:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a;->n:I

    return v0
.end method

.method private final b(I)I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    return p1
.end method

.method static c(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x2

    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v0, 0x100

    if-gt p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0x400

    if-gt p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0
.end method

.method private d()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v3, v3, 0x7

    if-gt v0, v3, :cond_0

    int-to-double v0, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v5

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private e(I)I
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/a;->b(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 3
    aget v2, v1, v2

    if-nez v2, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/a;->k(I)I

    move-result p1

    return p1

    .line 6
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x3

    .line 7
    aget v3, v1, v3

    if-nez v3, :cond_2

    return v2

    .line 8
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    add-int/lit8 v4, v3, 0x2

    shr-int/2addr v0, v4

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    const/4 v0, 0x1

    shl-int/2addr v0, v3

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v2, 0x3

    .line 9
    aget v3, v1, v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 10
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    add-int/lit8 v1, v0, 0x4

    .line 11
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    .line 12
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    shl-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_6

    .line 13
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->e:Z

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->j()V

    .line 15
    :cond_5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/a;->k(I)I

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method private f(II)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    add-int/lit8 v2, v1, 0x2

    shr-int/2addr p1, v2

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    add-int/2addr v1, v0

    :goto_0
    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v0, 0x3

    .line 3
    aget v4, p1, v4

    .line 4
    aget v5, p1, v0

    if-ne p2, v5, :cond_0

    if-ne v2, v4, :cond_0

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    if-ge v0, v1, :cond_4

    .line 7
    aget v1, p1, v0

    if-ne p2, v1, :cond_3

    add-int/lit8 v1, v0, 0x3

    aget v1, p1, v1

    if-ne v2, v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private g(III)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    add-int/lit8 v2, v1, 0x2

    shr-int/2addr p1, v2

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    add-int/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v0, 0x3

    .line 3
    aget v4, p1, v4

    .line 4
    aget v5, p1, v0

    if-ne p2, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    if-ne p3, v5, :cond_0

    if-ne v3, v4, :cond_0

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    if-ge v0, v1, :cond_4

    .line 7
    aget v1, p1, v0

    if-ne p2, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    if-ne p3, v1, :cond_3

    add-int/lit8 v1, v0, 0x3

    aget v1, p1, v1

    if-ne v3, v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private h(IIII)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    add-int/lit8 v2, v1, 0x2

    shr-int/2addr p1, v2

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    add-int/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v0, 0x3

    .line 3
    aget v4, p1, v4

    .line 4
    aget v5, p1, v0

    if-ne p2, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    if-ne p3, v5, :cond_0

    add-int/lit8 v5, v0, 0x2

    aget v5, p1, v5

    if-ne p4, v5, :cond_0

    if-ne v3, v4, :cond_0

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    if-ge v0, v1, :cond_4

    .line 7
    aget v1, p1, v0

    if-ne p2, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    if-ne p3, v1, :cond_3

    add-int/lit8 v1, v0, 0x2

    aget v1, p1, v1

    if-ne p4, v1, :cond_3

    add-int/lit8 v1, v0, 0x3

    aget v1, p1, v1

    if-ne v3, v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private i(II[II)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    add-int/lit8 v2, v1, 0x2

    shr-int/2addr p1, v2

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    add-int/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    add-int/lit8 v3, v0, 0x3

    .line 3
    aget v3, p1, v3

    .line 4
    aget v4, p1, v0

    if-ne p2, v4, :cond_0

    if-ne p4, v3, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 5
    aget v4, p1, v4

    invoke-direct {p0, p3, p4, v4}, Lcom/fasterxml/jackson/core/sym/a;->m([III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    if-ge v0, v1, :cond_4

    .line 8
    aget v1, p1, v0

    if-ne p2, v1, :cond_3

    add-int/lit8 v1, v0, 0x3

    aget v1, p1, v1

    if-ne p4, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 9
    aget v1, p1, v1

    invoke-direct {p0, p3, p4, v1}, Lcom/fasterxml/jackson/core/sym/a;->m([III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private k(I)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->M()V

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/a;->b(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v1, p1, 0x3

    .line 4
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p1

    .line 5
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x3

    .line 6
    aget v2, v0, v2

    if-nez v2, :cond_1

    return v1

    .line 7
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->j:I

    add-int/lit8 v3, v2, 0x2

    shr-int/2addr p1, v3

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    const/4 p1, 0x1

    shl-int/2addr p1, v2

    add-int/2addr p1, v1

    :goto_0
    if-ge v1, p1, :cond_3

    add-int/lit8 v2, v1, 0x3

    .line 8
    aget v2, v0, v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 9
    :cond_3
    iget p1, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    add-int/lit8 v0, p1, 0x4

    .line 10
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    return p1
.end method

.method private final l()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr v1, v0

    return v1
.end method

.method private m([III)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->n([III)Z

    move-result p1

    return p1

    .line 3
    :pswitch_0
    aget p2, p1, v1

    add-int/lit8 v3, p3, 0x1

    aget p3, v0, p3

    if-eq p2, p3, :cond_0

    return v1

    :cond_0
    move p3, v3

    const/4 p2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 4
    aget p2, p1, p2

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq p2, p3, :cond_1

    return v1

    :cond_1
    move p3, v4

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 p2, v3, 0x1

    .line 5
    aget v3, p1, v3

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq v3, p3, :cond_2

    return v1

    :cond_2
    move p3, v4

    goto :goto_2

    :pswitch_3
    const/4 p2, 0x0

    :goto_2
    add-int/lit8 v3, p2, 0x1

    .line 6
    aget p2, p1, p2

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq p2, p3, :cond_3

    return v1

    :cond_3
    move p3, v4

    goto :goto_3

    :pswitch_4
    const/4 v3, 0x0

    :goto_3
    add-int/lit8 p2, v3, 0x1

    .line 7
    aget v3, p1, v3

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq v3, p3, :cond_4

    return v1

    :cond_4
    add-int/lit8 p3, p2, 0x1

    .line 8
    aget p2, p1, p2

    add-int/lit8 v3, v4, 0x1

    aget v4, v0, v4

    if-eq p2, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 p2, p3, 0x1

    .line 9
    aget p3, p1, p3

    add-int/lit8 v4, v3, 0x1

    aget v3, v0, v3

    if-eq p3, v3, :cond_6

    return v1

    .line 10
    :cond_6
    aget p1, p1, p2

    aget p2, v0, v4

    if-eq p1, p2, :cond_7

    return v1

    :cond_7
    return v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n([III)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    aget v1, p1, v1

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v4, p3, 0x1

    aget p3, v3, p3

    if-eq v1, p3, :cond_0

    return v0

    :cond_0
    if-lt v2, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    move v1, v2

    move p3, v4

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add names to Root symbol table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add names to Placeholder symbol table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    :cond_2
    return-void
.end method

.method public static y()Lcom/fasterxml/jackson/core/sym/a;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    or-int/lit8 v0, v2, 0x1

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/a;->z(I)Lcom/fasterxml/jackson/core/sym/a;

    move-result-object v0

    return-object v0
.end method

.method protected static z(I)Lcom/fasterxml/jackson/core/sym/a;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/sym/a;

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/core/sym/a;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public A(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/a;->u(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->b(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 3
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    .line 6
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    .line 7
    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    .line 8
    aget v1, v1, v2

    if-ne v1, p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v2, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    .line 10
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/sym/a;->f(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B(II)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/a;->v(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->b(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 3
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 4
    aget v2, v1, v0

    if-ne p1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-ne p2, v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    .line 6
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/2addr v5, v4

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    .line 7
    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    .line 8
    aget v3, v1, v2

    if-ne p1, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    if-ne p2, v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v2, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    .line 10
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/a;->g(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public C(III)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->w(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->b(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 3
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 4
    aget v2, v1, v0

    if-ne p1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-ne v2, p2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    if-ne v2, p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    .line 6
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    .line 7
    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    .line 8
    aget v3, v1, v2

    if-ne p1, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    if-ne v3, p2, :cond_3

    add-int/lit8 v3, v2, 0x2

    aget v1, v1, v3

    if-ne v1, p3, :cond_3

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v2, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    .line 10
    :cond_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->h(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public D([II)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ge p2, v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    aget p2, p1, v1

    aget v1, p1, v2

    aget p1, p1, v0

    invoke-virtual {p0, p2, v1, p1}, Lcom/fasterxml/jackson/core/sym/a;->C(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    aget p2, p1, v1

    aget p1, p1, v2

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/sym/a;->B(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/a;->A(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/a;->x([II)I

    move-result v1

    .line 5
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/a;->b(I)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v4, v2, 0x3

    .line 7
    aget v4, v3, v4

    .line 8
    aget v5, v3, v2

    if-ne v1, v5, :cond_4

    if-ne v4, p2, :cond_4

    add-int/lit8 v5, v2, 0x1

    .line 9
    aget v5, v3, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/fasterxml/jackson/core/sym/a;->m([III)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v2, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_4
    if-nez v4, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_5
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    shr-int/lit8 v5, v2, 0x3

    shl-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x3

    .line 12
    aget v5, v3, v5

    .line 13
    aget v6, v3, v4

    if-ne v1, v6, :cond_6

    if-ne v5, p2, :cond_6

    add-int/lit8 v5, v4, 0x1

    .line 14
    aget v3, v3, v5

    invoke-direct {p0, p1, p2, v3}, Lcom/fasterxml/jackson/core/sym/a;->m([III)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    iget-object p1, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v4, 0x2

    aget-object p1, p1, p2

    return-object p1

    .line 16
    :cond_6
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/a;->i(II[II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    return v0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G(I)Lcom/fasterxml/jackson/core/sym/a;
    .locals 7

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/core/sym/a;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/fasterxml/jackson/core/sym/a$a;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 3
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/a;-><init>(Lcom/fasterxml/jackson/core/sym/a;ILcom/fasterxml/jackson/core/sym/a$a;ZZ)V

    return-object v6
.end method

.method public H(I)Lcom/fasterxml/jackson/core/sym/a;
    .locals 7

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/sym/a;

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/fasterxml/jackson/core/sym/a$a;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 4
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 5
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/sym/a;-><init>(Lcom/fasterxml/jackson/core/sym/a;ILcom/fasterxml/jackson/core/sym/a$a;ZZ)V

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/core/sym/a;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/a$a;

    invoke-direct {p1, v0}, Lcom/fasterxml/jackson/core/sym/a;-><init>(Lcom/fasterxml/jackson/core/sym/a$a;)V

    return-object p1
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public L()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->a:Lcom/fasterxml/jackson/core/sym/a;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/a$a;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/a$a;-><init>(Lcom/fasterxml/jackson/core/sym/a;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/a;->J(Lcom/fasterxml/jackson/core/sym/a$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->o:Z

    :cond_0
    return-void
.end method

.method public O()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->h:I

    add-int/lit8 v0, v0, 0x3

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    return v2
.end method

.method public P()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/a$a;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/a$a;->b:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    return v0
.end method

.method public Q()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->m:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public R()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->i:I

    add-int/lit8 v0, v0, 0x3

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    return v2
.end method

.method public S()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    const/4 v1, 0x3

    shl-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected j()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spill-over slots in symbol table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries, hash area of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots is now full (all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->o()V

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/a;->u(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aput p2, v1, v0

    add-int/lit8 p2, v0, 0x3

    const/4 v2, 0x1

    .line 6
    aput v2, v1, p2

    .line 7
    iget-object p2, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aput-object p1, p2, v0

    .line 8
    iget p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    return-object p1
.end method

.method public q(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->o()V

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->v(II)I

    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aput p2, v1, v0

    add-int/lit8 p2, v0, 0x1

    .line 7
    aput p3, v1, p2

    add-int/lit8 p2, v0, 0x3

    const/4 p3, 0x2

    .line 8
    aput p3, v1, p2

    .line 9
    iget-object p2, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p3, v0, 0x2

    aput-object p1, p2, p3

    .line 10
    iget p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    return-object p1
.end method

.method public r(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->o()V

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/a;->w(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aput p2, v1, v0

    add-int/lit8 p2, v0, 0x1

    .line 6
    aput p3, v1, p2

    add-int/lit8 p2, v0, 0x2

    .line 7
    aput p4, v1, p2

    add-int/lit8 p2, v0, 0x3

    const/4 p3, 0x3

    .line 8
    aput p3, v1, p2

    .line 9
    iget-object p2, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p3, v0, 0x2

    aput-object p1, p2, p3

    .line 10
    iget p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    return-object p1
.end method

.method public s(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/a;->o()V

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/a;->d:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->x([II)I

    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aput v0, v4, v3

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->a([II)I

    move-result p2

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    add-int/lit8 v4, v3, 0x1

    aput p2, v0, v4

    add-int/lit8 p2, v3, 0x3

    .line 9
    aput p3, v0, p2

    goto :goto_0

    .line 10
    :cond_1
    aget p3, p2, v0

    aget v4, p2, v2

    aget v5, p2, v1

    invoke-virtual {p0, p3, v4, v5}, Lcom/fasterxml/jackson/core/sym/a;->w(III)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result p3

    .line 11
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget v0, p2, v0

    aput v0, v4, p3

    add-int/lit8 v0, p3, 0x1

    .line 12
    aget v5, p2, v2

    aput v5, v4, v0

    add-int/lit8 v0, p3, 0x2

    .line 13
    aget p2, p2, v1

    aput p2, v4, v0

    add-int/lit8 p2, p3, 0x3

    .line 14
    aput v3, v4, p2

    move v3, p3

    goto :goto_0

    .line 15
    :cond_2
    aget p3, p2, v0

    aget v3, p2, v2

    invoke-virtual {p0, p3, v3}, Lcom/fasterxml/jackson/core/sym/a;->v(II)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result v3

    .line 16
    iget-object p3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget v0, p2, v0

    aput v0, p3, v3

    add-int/lit8 v0, v3, 0x1

    .line 17
    aget p2, p2, v2

    aput p2, p3, v0

    add-int/lit8 p2, v3, 0x3

    .line 18
    aput v1, p3, p2

    goto :goto_0

    .line 19
    :cond_3
    aget p3, p2, v0

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/sym/a;->u(I)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/sym/a;->e(I)I

    move-result v3

    .line 20
    iget-object p3, p0, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    aget p2, p2, v0

    aput p2, p3, v3

    add-int/lit8 p2, v3, 0x3

    .line 21
    aput v2, p3, p2

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    shr-int/lit8 p3, v3, 0x2

    aput-object p1, p2, p3

    .line 23
    iget p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    return-object p1
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->L()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->O()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->R()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->Q()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/a;->S()I

    move-result v4

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    const-class v6, Lcom/fasterxml/jackson/core/sym/a;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/a;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/a;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v5, v1

    const-string v0, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    .line 8
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    add-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xc

    add-int/2addr p1, v0

    return p1
.end method

.method public v(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x9

    xor-int/2addr p1, v0

    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p1, p2

    iget p2, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    xor-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x10

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x4

    xor-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0x3

    add-int/2addr p1, p2

    return p1
.end method

.method public w(III)I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x9

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x21

    ushr-int/lit8 p2, p1, 0xf

    add-int/2addr p1, p2

    xor-int/2addr p1, p3

    ushr-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xf

    add-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0x9

    xor-int/2addr p1, p2

    return p1
.end method

.method public x([II)I
    .locals 4

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    const/4 v0, 0x0

    .line 1
    aget v0, p1, v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/a;->c:I

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 2
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x21

    const/4 v1, 0x2

    .line 3
    aget v1, p1, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    const/4 v1, 0x3

    :goto_0
    if-ge v1, p2, :cond_0

    .line 4
    aget v2, p1, v1

    shr-int/lit8 v3, v2, 0x15

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x1003f

    mul-int v0, v0, p1

    ushr-int/lit8 p1, v0, 0x13

    add-int/2addr v0, p1

    shl-int/lit8 p1, v0, 0x5

    xor-int/2addr p1, v0

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
