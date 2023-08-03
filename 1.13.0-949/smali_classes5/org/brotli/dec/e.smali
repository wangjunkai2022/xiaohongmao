.class final Lorg/brotli/dec/e;
.super Ljava/lang/Object;
.source "Decode.java"


# static fields
.field private static final a:I = 0x8

.field private static final b:I = 0x10

.field private static final c:I = 0x100

.field private static final d:I = 0x2c0

.field private static final e:I = 0x1a

.field private static final f:I = 0x6

.field private static final g:I = 0x2

.field private static final h:I = 0x8

.field private static final i:I = 0xff

.field private static final j:I = 0x12

.field private static final k:[I

.field private static final l:I = 0x10

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/brotli/dec/e;->k:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lorg/brotli/dec/e;->m:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lorg/brotli/dec/e;->n:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lorg/brotli/dec/e;->o:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/brotli/dec/l;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    .line 2
    iget-object v1, p0, Lorg/brotli/dec/l;->d:[B

    .line 3
    iget v2, p0, Lorg/brotli/dec/l;->g:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 4
    invoke-static {v0}, Lorg/brotli/dec/a;->k(Lorg/brotli/dec/a;)V

    .line 5
    iput v3, p0, Lorg/brotli/dec/l;->a:I

    return-void

    .line 6
    :cond_0
    iget v4, p0, Lorg/brotli/dec/l;->Q:I

    iget v5, p0, Lorg/brotli/dec/l;->r:I

    sub-int/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    iget v4, p0, Lorg/brotli/dec/l;->r:I

    invoke-static {v0, v1, v4, v2}, Lorg/brotli/dec/a;->c(Lorg/brotli/dec/a;[BII)V

    .line 8
    iget v1, p0, Lorg/brotli/dec/l;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/l;->g:I

    .line 9
    iget v1, p0, Lorg/brotli/dec/l;->r:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/l;->r:I

    .line 10
    iget v2, p0, Lorg/brotli/dec/l;->Q:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lorg/brotli/dec/l;->b:I

    .line 12
    iput v2, p0, Lorg/brotli/dec/l;->Y:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/brotli/dec/l;->X:I

    const/16 v0, 0xc

    .line 14
    iput v0, p0, Lorg/brotli/dec/l;->a:I

    return-void

    .line 15
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/a;->k(Lorg/brotli/dec/a;)V

    .line 16
    iput v3, p0, Lorg/brotli/dec/l;->a:I

    return-void
.end method

.method private static b(Lorg/brotli/dec/l;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    .line 2
    iget-object v1, p0, Lorg/brotli/dec/l;->p:[I

    mul-int/lit8 v2, p1, 0x2

    .line 3
    invoke-static {v0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 4
    iget-object v3, p0, Lorg/brotli/dec/l;->e:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result v3

    .line 5
    iget-object v5, p0, Lorg/brotli/dec/l;->n:[I

    iget-object v6, p0, Lorg/brotli/dec/l;->f:[I

    invoke-static {v6, v4, v0}, Lorg/brotli/dec/e;->m([IILorg/brotli/dec/a;)I

    move-result v0

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 7
    aget v3, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x2

    .line 8
    :goto_0
    iget-object p0, p0, Lorg/brotli/dec/l;->o:[I

    aget v0, p0, p1

    if-lt v3, v0, :cond_2

    .line 9
    aget p0, p0, p1

    sub-int/2addr v3, p0

    :cond_2
    add-int/lit8 p0, v2, 0x1

    .line 10
    aget p1, v1, p0

    aput p1, v1, v2

    .line 11
    aput v3, v1, p0

    return-void
.end method

.method private static c(Lorg/brotli/dec/l;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/e;->b(Lorg/brotli/dec/l;I)V

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    iget-object v0, v0, Lorg/brotli/dec/h;->c:[I

    iget-object v1, p0, Lorg/brotli/dec/l;->p:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/l;->F:I

    return-void
.end method

.method private static d(I[BLorg/brotli/dec/a;)I
    .locals 8

    .line 1
    invoke-static {p2}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 2
    invoke-static {p2}, Lorg/brotli/dec/e;->h(Lorg/brotli/dec/a;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/n;->a([BII)V

    return v0

    .line 4
    :cond_0
    invoke-static {p2, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    .line 5
    invoke-static {p2, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x438

    new-array v4, v4, [I

    add-int v5, v0, v3

    .line 6
    invoke-static {v5, v4, v2, p2}, Lorg/brotli/dec/e;->n(I[IILorg/brotli/dec/a;)V

    const/4 v5, 0x0

    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    .line 7
    invoke-static {p2}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 8
    invoke-static {p2}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 9
    invoke-static {v4, v2, p2}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result v6

    if-nez v6, :cond_4

    .line 10
    aput-byte v2, p1, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-gt v6, v3, :cond_6

    shl-int v7, v1, v6

    .line 11
    invoke-static {p2, v6}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v6

    add-int/2addr v7, v6

    :goto_4
    if-eqz v7, :cond_3

    if-ge v5, p0, :cond_5

    .line 12
    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 13
    :cond_5
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    .line 14
    aput-byte v6, p1, v5

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {p2, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 16
    invoke-static {p1, p0}, Lorg/brotli/dec/e;->j([BI)V

    :cond_8
    return v0
.end method

.method private static e(Lorg/brotli/dec/l;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/e;->b(Lorg/brotli/dec/l;I)V

    .line 2
    iget-object v1, p0, Lorg/brotli/dec/l;->p:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lorg/brotli/dec/l;->C:I

    return-void
.end method

.method private static f(Lorg/brotli/dec/l;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/e;->b(Lorg/brotli/dec/l;I)V

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/l;->p:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    .line 3
    iput v2, p0, Lorg/brotli/dec/l;->B:I

    .line 4
    iget-object v3, p0, Lorg/brotli/dec/l;->A:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/brotli/dec/l;->v:I

    .line 5
    iget-object v3, p0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    iget-object v3, v3, Lorg/brotli/dec/h;->c:[I

    aget v2, v3, v2

    iput v2, p0, Lorg/brotli/dec/l;->w:I

    .line 6
    iget-object v2, p0, Lorg/brotli/dec/l;->z:[B

    aget-byte v0, v2, v0

    .line 7
    sget-object v2, Lorg/brotli/dec/d;->b:[I

    aget v3, v2, v0

    iput v3, p0, Lorg/brotli/dec/l;->D:I

    add-int/2addr v0, v1

    .line 8
    aget v0, v2, v0

    iput v0, p0, Lorg/brotli/dec/l;->E:I

    return-void
.end method

.method private static g(Lorg/brotli/dec/a;Lorg/brotli/dec/l;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lorg/brotli/dec/l;->h:Z

    .line 2
    iput v2, p1, Lorg/brotli/dec/l;->g:I

    .line 3
    iput-boolean v2, p1, Lorg/brotli/dec/l;->i:Z

    .line 4
    iput-boolean v2, p1, Lorg/brotli/dec/l;->j:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 6
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_6

    .line 7
    iput-boolean v0, p1, Lorg/brotli/dec/l;->j:Z

    .line 8
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 9
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_9

    const/16 v4, 0x8

    .line 10
    invoke-static {p0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    if-gt v1, v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    new-instance p0, Lorg/brotli/dec/c;

    invoke-direct {p0, v6}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    :goto_2
    iget v5, p1, Lorg/brotli/dec/l;->g:I

    mul-int/lit8 v7, v3, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    iput v4, p1, Lorg/brotli/dec/l;->g:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_5
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Corrupted reserved bit"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_9

    .line 14
    invoke-static {p0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v3, :cond_8

    if-gt v3, v4, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    new-instance p0, Lorg/brotli/dec/c;

    invoke-direct {p0, v6}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_8
    :goto_4
    iget v7, p1, Lorg/brotli/dec/l;->g:I

    mul-int/lit8 v8, v1, 0x4

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    iput v5, p1, Lorg/brotli/dec/l;->g:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17
    :cond_9
    iget v1, p1, Lorg/brotli/dec/l;->g:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/brotli/dec/l;->g:I

    .line 18
    iget-boolean v1, p1, Lorg/brotli/dec/l;->h:Z

    if-nez v1, :cond_b

    .line 19
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p1, Lorg/brotli/dec/l;->i:Z

    :cond_b
    return-void
.end method

.method private static h(Lorg/brotli/dec/a;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 2
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static i(Lorg/brotli/dec/l;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lorg/brotli/dec/l;->a:I

    if-eqz v1, :cond_23

    const/16 v2, 0xb

    if-eq v1, v2, :cond_22

    .line 2
    iget-object v1, v0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    .line 3
    iget v2, v0, Lorg/brotli/dec/l;->Q:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4
    iget-object v4, v0, Lorg/brotli/dec/l;->d:[B

    move-object v10, v4

    .line 5
    :cond_0
    :goto_0
    iget v4, v0, Lorg/brotli/dec/l;->a:I

    const-string v5, "Invalid metablock length"

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1f

    const/16 v11, 0xc

    if-eq v4, v11, :cond_1c

    const/16 v12, 0x8

    const-string v6, "Invalid backward reference"

    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v4, :pswitch_data_0

    .line 6
    new-instance v1, Lorg/brotli/dec/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/brotli/dec/l;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :pswitch_0
    iget v4, v0, Lorg/brotli/dec/l;->M:I

    if-lt v4, v7, :cond_3

    const/16 v5, 0x18

    if-gt v4, v5, :cond_3

    .line 8
    sget-object v5, Lorg/brotli/dec/f;->a:[I

    aget v5, v5, v4

    .line 9
    iget v7, v0, Lorg/brotli/dec/l;->L:I

    iget v8, v0, Lorg/brotli/dec/l;->s:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    .line 10
    sget-object v8, Lorg/brotli/dec/f;->b:[I

    aget v8, v8, v4

    shl-int v9, v3, v8

    sub-int/2addr v9, v3

    and-int/2addr v9, v7

    ushr-int/2addr v7, v8

    mul-int v9, v9, v4

    add-int v8, v5, v9

    .line 11
    sget-object v4, Lorg/brotli/dec/m;->d:[Lorg/brotli/dec/m;

    array-length v5, v4

    if-ge v7, v5, :cond_2

    .line 12
    iget v5, v0, Lorg/brotli/dec/l;->N:I

    .line 13
    invoke-static {}, Lorg/brotli/dec/f;->a()[B

    move-result-object v6

    iget v9, v0, Lorg/brotli/dec/l;->M:I

    aget-object v13, v4, v7

    move-object v4, v10

    move v7, v8

    move v8, v9

    move-object v9, v13

    .line 14
    invoke-static/range {v4 .. v9}, Lorg/brotli/dec/m;->b([BI[BIILorg/brotli/dec/m;)I

    move-result v4

    .line 15
    iget v5, v0, Lorg/brotli/dec/l;->N:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/l;->N:I

    .line 16
    iget v6, v0, Lorg/brotli/dec/l;->r:I

    add-int/2addr v6, v4

    iput v6, v0, Lorg/brotli/dec/l;->r:I

    .line 17
    iget v6, v0, Lorg/brotli/dec/l;->g:I

    sub-int/2addr v6, v4

    iput v6, v0, Lorg/brotli/dec/l;->g:I

    .line 18
    iget v4, v0, Lorg/brotli/dec/l;->Q:I

    if-lt v5, v4, :cond_1

    .line 19
    iput v12, v0, Lorg/brotli/dec/l;->b:I

    .line 20
    iput v4, v0, Lorg/brotli/dec/l;->Y:I

    .line 21
    iput v15, v0, Lorg/brotli/dec/l;->X:I

    .line 22
    iput v11, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 23
    :cond_1
    iput v14, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 24
    :cond_2
    new-instance v0, Lorg/brotli/dec/c;

    invoke-direct {v0, v6}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    new-instance v0, Lorg/brotli/dec/c;

    invoke-direct {v0, v6}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :pswitch_1
    iget v4, v0, Lorg/brotli/dec/l;->Q:I

    iget v5, v0, Lorg/brotli/dec/l;->N:I

    sub-int/2addr v5, v4

    invoke-static {v10, v4, v10, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput v14, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 28
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->a(Lorg/brotli/dec/l;)V

    goto/16 :goto_0

    .line 29
    :goto_1
    :pswitch_3
    iget v4, v0, Lorg/brotli/dec/l;->g:I

    if-lez v4, :cond_4

    .line 30
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 31
    invoke-static {v1, v12}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 32
    iget v4, v0, Lorg/brotli/dec/l;->g:I

    sub-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/l;->g:I

    goto :goto_1

    .line 33
    :cond_4
    iput v3, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 34
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->p(Lorg/brotli/dec/l;)V

    .line 35
    iput v14, v0, Lorg/brotli/dec/l;->a:I

    .line 36
    :pswitch_5
    iget v4, v0, Lorg/brotli/dec/l;->g:I

    if-gtz v4, :cond_5

    .line 37
    iput v3, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 38
    :cond_5
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 39
    iget-object v4, v0, Lorg/brotli/dec/l;->n:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 40
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->c(Lorg/brotli/dec/l;)V

    .line 41
    :cond_6
    iget-object v4, v0, Lorg/brotli/dec/l;->n:[I

    aget v5, v4, v3

    sub-int/2addr v5, v3

    aput v5, v4, v3

    .line 42
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 43
    iget-object v4, v0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    iget-object v4, v4, Lorg/brotli/dec/h;->b:[I

    iget v5, v0, Lorg/brotli/dec/l;->F:I

    invoke-static {v4, v5, v1}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x6

    .line 44
    iput v15, v0, Lorg/brotli/dec/l;->G:I

    if-lt v5, v13, :cond_7

    add-int/lit8 v5, v5, -0x2

    const/4 v12, -0x1

    .line 45
    iput v12, v0, Lorg/brotli/dec/l;->G:I

    .line 46
    :cond_7
    sget-object v12, Lorg/brotli/dec/j;->g:[I

    aget v12, v12, v5

    ushr-int/lit8 v16, v4, 0x3

    and-int/lit8 v16, v16, 0x7

    add-int v12, v12, v16

    .line 47
    sget-object v16, Lorg/brotli/dec/j;->h:[I

    aget v5, v16, v5

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v5, v4

    .line 48
    sget-object v4, Lorg/brotli/dec/j;->c:[I

    aget v4, v4, v12

    sget-object v16, Lorg/brotli/dec/j;->d:[I

    aget v12, v16, v12

    .line 49
    invoke-static {v1, v12}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Lorg/brotli/dec/l;->y:I

    .line 50
    sget-object v4, Lorg/brotli/dec/j;->e:[I

    aget v4, v4, v5

    sget-object v12, Lorg/brotli/dec/j;->f:[I

    aget v5, v12, v5

    .line 51
    invoke-static {v1, v5}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/l;->M:I

    .line 52
    iput v15, v0, Lorg/brotli/dec/l;->x:I

    .line 53
    iput v9, v0, Lorg/brotli/dec/l;->a:I

    .line 54
    :pswitch_6
    iget-boolean v4, v0, Lorg/brotli/dec/l;->u:Z

    if-eqz v4, :cond_a

    .line 55
    :cond_8
    iget v4, v0, Lorg/brotli/dec/l;->x:I

    iget v5, v0, Lorg/brotli/dec/l;->y:I

    if-ge v4, v5, :cond_d

    .line 56
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 57
    iget-object v4, v0, Lorg/brotli/dec/l;->n:[I

    aget v4, v4, v15

    if-nez v4, :cond_9

    .line 58
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->f(Lorg/brotli/dec/l;)V

    .line 59
    :cond_9
    iget-object v4, v0, Lorg/brotli/dec/l;->n:[I

    aget v5, v4, v15

    sub-int/2addr v5, v3

    aput v5, v4, v15

    .line 60
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 61
    iget v4, v0, Lorg/brotli/dec/l;->r:I

    iget-object v5, v0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    iget-object v5, v5, Lorg/brotli/dec/h;->b:[I

    iget v12, v0, Lorg/brotli/dec/l;->w:I

    .line 62
    invoke-static {v5, v12, v1}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 63
    iget v4, v0, Lorg/brotli/dec/l;->x:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/l;->x:I

    .line 64
    iget v4, v0, Lorg/brotli/dec/l;->r:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/brotli/dec/l;->r:I

    if-ne v4, v2, :cond_8

    .line 65
    iput v9, v0, Lorg/brotli/dec/l;->b:I

    .line 66
    iget v4, v0, Lorg/brotli/dec/l;->Q:I

    iput v4, v0, Lorg/brotli/dec/l;->Y:I

    .line 67
    iput v15, v0, Lorg/brotli/dec/l;->X:I

    .line 68
    iput v11, v0, Lorg/brotli/dec/l;->a:I

    goto :goto_3

    .line 69
    :cond_a
    iget v4, v0, Lorg/brotli/dec/l;->r:I

    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v13

    and-int/2addr v4, v2

    .line 70
    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    .line 71
    :goto_2
    iget v12, v0, Lorg/brotli/dec/l;->x:I

    iget v8, v0, Lorg/brotli/dec/l;->y:I

    if-ge v12, v8, :cond_d

    .line 72
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 73
    iget-object v8, v0, Lorg/brotli/dec/l;->n:[I

    aget v8, v8, v15

    if-nez v8, :cond_b

    .line 74
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->f(Lorg/brotli/dec/l;)V

    .line 75
    :cond_b
    iget-object v8, v0, Lorg/brotli/dec/l;->A:[B

    iget v12, v0, Lorg/brotli/dec/l;->B:I

    sget-object v17, Lorg/brotli/dec/d;->a:[I

    iget v7, v0, Lorg/brotli/dec/l;->D:I

    add-int/2addr v7, v5

    aget v7, v17, v7

    iget v13, v0, Lorg/brotli/dec/l;->E:I

    add-int/2addr v13, v4

    aget v4, v17, v13

    or-int/2addr v4, v7

    add-int/2addr v12, v4

    aget-byte v4, v8, v12

    and-int/lit16 v4, v4, 0xff

    .line 76
    iget-object v7, v0, Lorg/brotli/dec/l;->n:[I

    aget v8, v7, v15

    sub-int/2addr v8, v3

    aput v8, v7, v15

    .line 77
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 78
    iget-object v7, v0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    iget-object v8, v7, Lorg/brotli/dec/h;->b:[I

    iget-object v7, v7, Lorg/brotli/dec/h;->c:[I

    aget v4, v7, v4

    invoke-static {v8, v4, v1}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result v4

    .line 79
    iget v7, v0, Lorg/brotli/dec/l;->r:I

    int-to-byte v8, v4

    aput-byte v8, v10, v7

    .line 80
    iget v8, v0, Lorg/brotli/dec/l;->x:I

    add-int/2addr v8, v3

    iput v8, v0, Lorg/brotli/dec/l;->x:I

    add-int/lit8 v8, v7, 0x1

    .line 81
    iput v8, v0, Lorg/brotli/dec/l;->r:I

    if-ne v7, v2, :cond_c

    .line 82
    iput v9, v0, Lorg/brotli/dec/l;->b:I

    .line 83
    iget v4, v0, Lorg/brotli/dec/l;->Q:I

    iput v4, v0, Lorg/brotli/dec/l;->Y:I

    .line 84
    iput v15, v0, Lorg/brotli/dec/l;->X:I

    .line 85
    iput v11, v0, Lorg/brotli/dec/l;->a:I

    goto :goto_3

    :cond_c
    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v13, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_2

    .line 86
    :cond_d
    :goto_3
    iget v4, v0, Lorg/brotli/dec/l;->a:I

    if-eq v4, v9, :cond_e

    goto/16 :goto_0

    .line 87
    :cond_e
    iget v4, v0, Lorg/brotli/dec/l;->g:I

    iget v5, v0, Lorg/brotli/dec/l;->y:I

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/l;->g:I

    if-gtz v4, :cond_f

    .line 88
    iput v14, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 89
    :cond_f
    iget v4, v0, Lorg/brotli/dec/l;->G:I

    if-gez v4, :cond_12

    .line 90
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 91
    iget-object v4, v0, Lorg/brotli/dec/l;->n:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-nez v4, :cond_10

    .line 92
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->e(Lorg/brotli/dec/l;)V

    .line 93
    :cond_10
    iget-object v4, v0, Lorg/brotli/dec/l;->n:[I

    aget v7, v4, v5

    sub-int/2addr v7, v3

    aput v7, v4, v5

    .line 94
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 95
    iget-object v4, v0, Lorg/brotli/dec/l;->m:Lorg/brotli/dec/h;

    iget-object v5, v4, Lorg/brotli/dec/h;->b:[I

    iget-object v4, v4, Lorg/brotli/dec/h;->c:[I

    iget-object v7, v0, Lorg/brotli/dec/l;->H:[B

    iget v8, v0, Lorg/brotli/dec/l;->C:I

    iget v9, v0, Lorg/brotli/dec/l;->M:I

    const/4 v12, 0x4

    if-le v9, v12, :cond_11

    const/4 v9, 0x3

    goto :goto_4

    :cond_11
    add-int/lit8 v9, v9, -0x2

    :goto_4
    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    invoke-static {v5, v4, v1}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/l;->G:I

    .line 96
    iget v5, v0, Lorg/brotli/dec/l;->I:I

    if-lt v4, v5, :cond_12

    sub-int/2addr v4, v5

    .line 97
    iget v7, v0, Lorg/brotli/dec/l;->J:I

    and-int/2addr v7, v4

    .line 98
    iget v8, v0, Lorg/brotli/dec/l;->K:I

    ushr-int/2addr v4, v8

    iput v4, v0, Lorg/brotli/dec/l;->G:I

    ushr-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v3

    and-int/2addr v4, v3

    const/4 v9, 0x2

    add-int/2addr v4, v9

    shl-int/2addr v4, v8

    const/4 v9, 0x4

    sub-int/2addr v4, v9

    add-int/2addr v5, v7

    .line 99
    invoke-static {v1, v8}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v7

    add-int/2addr v4, v7

    iget v7, v0, Lorg/brotli/dec/l;->K:I

    shl-int/2addr v4, v7

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/l;->G:I

    .line 100
    :cond_12
    iget v4, v0, Lorg/brotli/dec/l;->G:I

    iget-object v5, v0, Lorg/brotli/dec/l;->q:[I

    iget v7, v0, Lorg/brotli/dec/l;->t:I

    invoke-static {v4, v5, v7}, Lorg/brotli/dec/e;->t(I[II)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/l;->L:I

    if-ltz v4, :cond_1a

    .line 101
    iget v5, v0, Lorg/brotli/dec/l;->s:I

    iget v7, v0, Lorg/brotli/dec/l;->O:I

    if-eq v5, v7, :cond_13

    iget v5, v0, Lorg/brotli/dec/l;->r:I

    if-ge v5, v7, :cond_13

    .line 102
    iput v5, v0, Lorg/brotli/dec/l;->s:I

    goto :goto_5

    .line 103
    :cond_13
    iput v7, v0, Lorg/brotli/dec/l;->s:I

    .line 104
    :goto_5
    iget v5, v0, Lorg/brotli/dec/l;->r:I

    iput v5, v0, Lorg/brotli/dec/l;->N:I

    .line 105
    iget v5, v0, Lorg/brotli/dec/l;->s:I

    if-le v4, v5, :cond_14

    const/16 v4, 0x9

    .line 106
    iput v4, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 107
    :cond_14
    iget v5, v0, Lorg/brotli/dec/l;->G:I

    if-lez v5, :cond_15

    .line 108
    iget-object v5, v0, Lorg/brotli/dec/l;->q:[I

    iget v7, v0, Lorg/brotli/dec/l;->t:I

    and-int/lit8 v8, v7, 0x3

    aput v4, v5, v8

    add-int/2addr v7, v3

    .line 109
    iput v7, v0, Lorg/brotli/dec/l;->t:I

    .line 110
    :cond_15
    iget v4, v0, Lorg/brotli/dec/l;->M:I

    iget v5, v0, Lorg/brotli/dec/l;->g:I

    if-gt v4, v5, :cond_19

    .line 111
    iput v15, v0, Lorg/brotli/dec/l;->x:I

    const/4 v4, 0x7

    .line 112
    iput v4, v0, Lorg/brotli/dec/l;->a:I

    .line 113
    :pswitch_7
    iget v4, v0, Lorg/brotli/dec/l;->r:I

    iget v5, v0, Lorg/brotli/dec/l;->L:I

    sub-int v5, v4, v5

    and-int/2addr v5, v2

    .line 114
    iget v6, v0, Lorg/brotli/dec/l;->M:I

    iget v7, v0, Lorg/brotli/dec/l;->x:I

    sub-int/2addr v6, v7

    add-int v7, v5, v6

    if-ge v7, v2, :cond_17

    add-int v7, v4, v6

    if-ge v7, v2, :cond_17

    :goto_6
    if-ge v15, v6, :cond_16

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 115
    aget-byte v5, v10, v5

    aput-byte v5, v10, v4

    add-int/lit8 v15, v15, 0x1

    move v4, v7

    move v5, v8

    goto :goto_6

    .line 116
    :cond_16
    iget v4, v0, Lorg/brotli/dec/l;->x:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/l;->x:I

    .line 117
    iget v4, v0, Lorg/brotli/dec/l;->g:I

    sub-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/l;->g:I

    .line 118
    iget v4, v0, Lorg/brotli/dec/l;->r:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/l;->r:I

    goto :goto_7

    .line 119
    :cond_17
    iget v4, v0, Lorg/brotli/dec/l;->x:I

    iget v5, v0, Lorg/brotli/dec/l;->M:I

    if-ge v4, v5, :cond_18

    .line 120
    iget v5, v0, Lorg/brotli/dec/l;->r:I

    iget v6, v0, Lorg/brotli/dec/l;->L:I

    sub-int v6, v5, v6

    and-int/2addr v6, v2

    aget-byte v6, v10, v6

    aput-byte v6, v10, v5

    .line 121
    iget v6, v0, Lorg/brotli/dec/l;->g:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/brotli/dec/l;->g:I

    add-int/lit8 v4, v4, 0x1

    .line 122
    iput v4, v0, Lorg/brotli/dec/l;->x:I

    add-int/lit8 v4, v5, 0x1

    .line 123
    iput v4, v0, Lorg/brotli/dec/l;->r:I

    if-ne v5, v2, :cond_17

    const/4 v4, 0x7

    .line 124
    iput v4, v0, Lorg/brotli/dec/l;->b:I

    .line 125
    iget v5, v0, Lorg/brotli/dec/l;->Q:I

    iput v5, v0, Lorg/brotli/dec/l;->Y:I

    .line 126
    iput v15, v0, Lorg/brotli/dec/l;->X:I

    .line 127
    iput v11, v0, Lorg/brotli/dec/l;->a:I

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v4, 0x7

    .line 128
    :goto_8
    iget v5, v0, Lorg/brotli/dec/l;->a:I

    if-ne v5, v4, :cond_0

    .line 129
    iput v14, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    .line 130
    :cond_19
    new-instance v0, Lorg/brotli/dec/c;

    invoke-direct {v0, v6}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1a
    new-instance v0, Lorg/brotli/dec/c;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_8
    iget v2, v0, Lorg/brotli/dec/l;->g:I

    if-ltz v2, :cond_1b

    .line 133
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->q(Lorg/brotli/dec/l;)V

    .line 134
    iget v2, v0, Lorg/brotli/dec/l;->Q:I

    sub-int/2addr v2, v3

    .line 135
    iget-object v10, v0, Lorg/brotli/dec/l;->d:[B

    goto/16 :goto_0

    .line 136
    :cond_1b
    new-instance v0, Lorg/brotli/dec/c;

    invoke-direct {v0, v5}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1c
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/e;->u(Lorg/brotli/dec/l;)Z

    move-result v4

    if-nez v4, :cond_1d

    return-void

    .line 138
    :cond_1d
    iget v4, v0, Lorg/brotli/dec/l;->r:I

    iget v5, v0, Lorg/brotli/dec/l;->O:I

    if-lt v4, v5, :cond_1e

    .line 139
    iput v5, v0, Lorg/brotli/dec/l;->s:I

    :cond_1e
    and-int/2addr v4, v2

    .line 140
    iput v4, v0, Lorg/brotli/dec/l;->r:I

    .line 141
    iget v4, v0, Lorg/brotli/dec/l;->b:I

    iput v4, v0, Lorg/brotli/dec/l;->a:I

    goto/16 :goto_0

    :cond_1f
    if-ne v4, v6, :cond_21

    .line 142
    iget v2, v0, Lorg/brotli/dec/l;->g:I

    if-ltz v2, :cond_20

    .line 143
    invoke-static {v1}, Lorg/brotli/dec/a;->g(Lorg/brotli/dec/a;)V

    .line 144
    iget-object v0, v0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    invoke-static {v0, v3}, Lorg/brotli/dec/a;->a(Lorg/brotli/dec/a;Z)V

    goto :goto_9

    .line 145
    :cond_20
    new-instance v0, Lorg/brotli/dec/c;

    invoke-direct {v0, v5}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_9
    return-void

    .line 146
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static j([BI)V
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 2
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 3
    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1, v0}, Lorg/brotli/dec/e;->l([II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static k(Lorg/brotli/dec/l;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/brotli/dec/l;->P:I

    int-to-long v1, v0

    .line 2
    iget-wide v3, p0, Lorg/brotli/dec/l;->R:J

    const/16 v5, 0x4000

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    long-to-int v1, v3

    .line 3
    iget-object v2, p0, Lorg/brotli/dec/l;->S:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-le v2, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/l;->h:Z

    if-nez v1, :cond_1

    if-ge v0, v5, :cond_1

    iget v1, p0, Lorg/brotli/dec/l;->P:I

    if-lt v1, v5, :cond_1

    const/16 v0, 0x4000

    .line 5
    :cond_1
    iget v1, p0, Lorg/brotli/dec/l;->Q:I

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v0, 0x25

    .line 6
    new-array v2, v2, [B

    .line 7
    iget-object v3, p0, Lorg/brotli/dec/l;->d:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 8
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, p0, Lorg/brotli/dec/l;->S:[B

    array-length v3, v1

    if-eqz v3, :cond_5

    .line 10
    array-length v3, v1

    .line 11
    iget v5, p0, Lorg/brotli/dec/l;->O:I

    if-le v3, v5, :cond_4

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_4
    move v5, v3

    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput v5, p0, Lorg/brotli/dec/l;->r:I

    .line 14
    iput v5, p0, Lorg/brotli/dec/l;->T:I

    .line 15
    :cond_5
    :goto_2
    iput-object v2, p0, Lorg/brotli/dec/l;->d:[B

    .line 16
    iput v0, p0, Lorg/brotli/dec/l;->Q:I

    return-void
.end method

.method private static l([II)V
    .locals 2

    .line 1
    aget v0, p0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 2
    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    aput v0, p0, p1

    return-void
.end method

.method private static m([IILorg/brotli/dec/a;)I
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 2
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/e;->r([IILorg/brotli/dec/a;)I

    move-result p0

    .line 3
    sget-object p1, Lorg/brotli/dec/j;->b:[I

    aget p1, p1, p0

    .line 4
    sget-object v0, Lorg/brotli/dec/j;->a:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static n(I[IILorg/brotli/dec/a;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 2
    new-array v2, v0, [I

    const/4 v3, 0x2

    .line 3
    invoke-static {v1, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    add-int/lit8 v4, v0, -0x1

    const/4 v7, 0x4

    new-array v7, v7, [I

    .line 4
    invoke-static {v1, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v8

    add-int/2addr v8, v6

    const/4 v9, 0x0

    :goto_0
    if-eqz v4, :cond_0

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    .line 5
    invoke-static {v1, v9}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v10

    rem-int/2addr v10, v0

    aput v10, v7, v4

    .line 6
    aget v10, v7, v4

    aput v3, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aget v4, v7, v5

    .line 7
    aput v6, v2, v4

    if-eq v8, v6, :cond_d

    if-eq v8, v3, :cond_5

    const/4 v4, 0x3

    if-eq v8, v4, :cond_4

    aget v8, v7, v5

    aget v9, v7, v6

    if-eq v8, v9, :cond_2

    aget v8, v7, v5

    aget v9, v7, v3

    if-eq v8, v9, :cond_2

    aget v8, v7, v5

    aget v9, v7, v4

    if-eq v8, v9, :cond_2

    aget v8, v7, v6

    aget v9, v7, v3

    if-eq v8, v9, :cond_2

    aget v8, v7, v6

    aget v9, v7, v4

    if-eq v8, v9, :cond_2

    aget v8, v7, v3

    aget v9, v7, v4

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 8
    :goto_2
    invoke-static {v1, v6}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    aget v1, v7, v3

    .line 9
    aput v4, v2, v1

    aget v1, v7, v4

    .line 10
    aput v4, v2, v1

    goto :goto_3

    :cond_3
    aget v1, v7, v5

    .line 11
    aput v3, v2, v1

    :goto_3
    move v6, v8

    goto :goto_6

    :cond_4
    aget v1, v7, v5

    aget v4, v7, v6

    if-eq v1, v4, :cond_c

    aget v1, v7, v5

    aget v4, v7, v3

    if-eq v1, v4, :cond_c

    aget v1, v7, v6

    aget v3, v7, v3

    if-eq v1, v3, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    aget v1, v7, v5

    aget v3, v7, v6

    if-eq v1, v3, :cond_6

    const/4 v5, 0x1

    :cond_6
    aget v1, v7, v6

    .line 12
    aput v6, v2, v1

    goto :goto_5

    :cond_7
    const/16 v3, 0x12

    new-array v7, v3, [I

    const/16 v8, 0x20

    const/16 v9, 0x20

    const/4 v10, 0x0

    :goto_4
    if-ge v4, v3, :cond_9

    if-lez v9, :cond_9

    .line 13
    sget-object v11, Lorg/brotli/dec/e;->k:[I

    aget v11, v11, v4

    .line 14
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 15
    iget-wide v12, v1, Lorg/brotli/dec/a;->f:J

    iget v14, v1, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v12, v14

    long-to-int v13, v12

    and-int/lit8 v12, v13, 0xf

    .line 16
    sget-object v13, Lorg/brotli/dec/e;->o:[I

    aget v15, v13, v12

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v14, v15

    iput v14, v1, Lorg/brotli/dec/a;->g:I

    .line 17
    aget v12, v13, v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 18
    aput v12, v7, v11

    if-eqz v12, :cond_8

    shr-int v11, v8, v12

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eq v10, v6, :cond_a

    if-nez v9, :cond_b

    :cond_a
    const/4 v5, 0x1

    .line 19
    :cond_b
    invoke-static {v7, v0, v2, v1}, Lorg/brotli/dec/e;->o([II[ILorg/brotli/dec/a;)V

    :cond_c
    :goto_5
    move v6, v5

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    const/16 v1, 0x8

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 20
    invoke-static {v3, v4, v1, v2, v0}, Lorg/brotli/dec/g;->a([III[II)V

    return-void

    .line 21
    :cond_e
    new-instance v0, Lorg/brotli/dec/c;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static o([II[ILorg/brotli/dec/a;)V
    .locals 11

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/16 v3, 0x12

    .line 1
    invoke-static {v0, v1, v2, p0, v3}, Lorg/brotli/dec/g;->a([III[II)V

    const p0, 0x8000

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x8000

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v3, p1, :cond_8

    if-lez v4, :cond_8

    .line 2
    invoke-static {p3}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 3
    invoke-static {p3}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 4
    iget-wide v7, p3, Lorg/brotli/dec/a;->f:J

    iget v9, p3, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v7, v9

    long-to-int v8, v7

    and-int/lit8 v7, v8, 0x1f

    .line 5
    aget v8, v0, v7

    const/16 v10, 0x10

    shr-int/2addr v8, v10

    add-int/2addr v9, v8

    iput v9, p3, Lorg/brotli/dec/a;->g:I

    .line 6
    aget v7, v0, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ge v7, v10, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 7
    aput v7, p2, v3

    if-eqz v7, :cond_0

    shr-int v2, p0, v7

    sub-int/2addr v4, v2

    move v3, v6

    move v2, v7

    goto :goto_0

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v7, -0xe

    if-ne v7, v10, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eq v5, v7, :cond_3

    move v5, v7

    const/4 v6, 0x0

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v6

    .line 8
    :goto_3
    invoke-static {p3, v8}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v3, v6

    if-gt v8, p1, :cond_7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v3, 0x1

    .line 9
    aput v5, p2, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v6, v8

    sub-int/2addr v4, v6

    :cond_6
    move v6, v7

    goto :goto_1

    .line 10
    :cond_7
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v4, :cond_9

    sub-int/2addr p1, v3

    .line 11
    invoke-static {p2, v3, p1}, Lorg/brotli/dec/n;->b([III)V

    return-void

    .line 12
    :cond_9
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static p(Lorg/brotli/dec/l;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, p0, Lorg/brotli/dec/l;->o:[I

    invoke-static {v0}, Lorg/brotli/dec/e;->h(Lorg/brotli/dec/a;)I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v3, v2

    .line 3
    iget-object v3, p0, Lorg/brotli/dec/l;->n:[I

    const/high16 v6, 0x10000000

    aput v6, v3, v2

    .line 4
    iget-object v3, p0, Lorg/brotli/dec/l;->o:[I

    aget v6, v3, v2

    if-le v6, v5, :cond_0

    .line 5
    aget v3, v3, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/brotli/dec/l;->e:[I

    mul-int/lit16 v5, v2, 0x438

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/e;->n(I[IILorg/brotli/dec/a;)V

    const/16 v3, 0x1a

    .line 6
    iget-object v4, p0, Lorg/brotli/dec/l;->f:[I

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/e;->n(I[IILorg/brotli/dec/a;)V

    .line 7
    iget-object v3, p0, Lorg/brotli/dec/l;->n:[I

    iget-object v4, p0, Lorg/brotli/dec/l;->f:[I

    invoke-static {v4, v5, v0}, Lorg/brotli/dec/e;->m([IILorg/brotli/dec/a;)I

    move-result v4

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 9
    invoke-static {v0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v2

    iput v2, p0, Lorg/brotli/dec/l;->K:I

    const/4 v2, 0x4

    .line 10
    invoke-static {v0, v2}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v6

    iget v7, p0, Lorg/brotli/dec/l;->K:I

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/brotli/dec/l;->I:I

    shl-int v8, v5, v7

    sub-int/2addr v8, v5

    .line 11
    iput v8, p0, Lorg/brotli/dec/l;->J:I

    const/16 v8, 0x30

    shl-int v7, v8, v7

    add-int/2addr v6, v7

    .line 12
    iget-object v7, p0, Lorg/brotli/dec/l;->o:[I

    aget v7, v7, v1

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/l;->z:[B

    const/4 v7, 0x0

    .line 13
    :goto_1
    iget-object v8, p0, Lorg/brotli/dec/l;->o:[I

    aget v9, v8, v1

    if-ge v7, v9, :cond_3

    add-int/lit8 v9, v7, 0x60

    .line 14
    aget v8, v8, v1

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    .line 15
    iget-object v9, p0, Lorg/brotli/dec/l;->z:[B

    invoke-static {v0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v10

    shl-int/2addr v10, v5

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    goto :goto_1

    .line 17
    :cond_3
    aget v7, v8, v1

    shl-int/lit8 v7, v7, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/l;->A:[B

    .line 18
    aget v8, v8, v1

    shl-int/lit8 v8, v8, 0x6

    invoke-static {v8, v7, v0}, Lorg/brotli/dec/e;->d(I[BLorg/brotli/dec/a;)I

    move-result v7

    .line 19
    iput-boolean v5, p0, Lorg/brotli/dec/l;->u:Z

    const/4 v8, 0x0

    .line 20
    :goto_3
    iget-object v9, p0, Lorg/brotli/dec/l;->o:[I

    aget v10, v9, v1

    shl-int/lit8 v10, v10, 0x6

    if-ge v8, v10, :cond_5

    .line 21
    iget-object v10, p0, Lorg/brotli/dec/l;->A:[B

    aget-byte v10, v10, v8

    shr-int/lit8 v11, v8, 0x6

    if-eq v10, v11, :cond_4

    .line 22
    iput-boolean v1, p0, Lorg/brotli/dec/l;->u:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 23
    :cond_5
    :goto_4
    aget v8, v9, v4

    shl-int/2addr v8, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/brotli/dec/l;->H:[B

    .line 24
    aget v9, v9, v4

    shl-int/2addr v9, v4

    invoke-static {v9, v8, v0}, Lorg/brotli/dec/e;->d(I[BLorg/brotli/dec/a;)I

    move-result v8

    .line 25
    iget-object v9, p0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    const/16 v10, 0x100

    invoke-static {v9, v10, v7}, Lorg/brotli/dec/h;->b(Lorg/brotli/dec/h;II)V

    .line 26
    iget-object v7, p0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    const/16 v9, 0x2c0

    iget-object v10, p0, Lorg/brotli/dec/l;->o:[I

    aget v10, v10, v5

    invoke-static {v7, v9, v10}, Lorg/brotli/dec/h;->b(Lorg/brotli/dec/h;II)V

    .line 27
    iget-object v7, p0, Lorg/brotli/dec/l;->m:Lorg/brotli/dec/h;

    invoke-static {v7, v6, v8}, Lorg/brotli/dec/h;->b(Lorg/brotli/dec/h;II)V

    .line 28
    iget-object v6, p0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    invoke-static {v6, v0}, Lorg/brotli/dec/h;->a(Lorg/brotli/dec/h;Lorg/brotli/dec/a;)V

    .line 29
    iget-object v6, p0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    invoke-static {v6, v0}, Lorg/brotli/dec/h;->a(Lorg/brotli/dec/h;Lorg/brotli/dec/a;)V

    .line 30
    iget-object v6, p0, Lorg/brotli/dec/l;->m:Lorg/brotli/dec/h;

    invoke-static {v6, v0}, Lorg/brotli/dec/h;->a(Lorg/brotli/dec/h;Lorg/brotli/dec/a;)V

    .line 31
    iput v1, p0, Lorg/brotli/dec/l;->B:I

    .line 32
    iput v1, p0, Lorg/brotli/dec/l;->C:I

    .line 33
    sget-object v0, Lorg/brotli/dec/d;->b:[I

    iget-object v6, p0, Lorg/brotli/dec/l;->z:[B

    aget-byte v7, v6, v1

    aget v7, v0, v7

    iput v7, p0, Lorg/brotli/dec/l;->D:I

    .line 34
    aget-byte v6, v6, v1

    add-int/2addr v6, v5

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/l;->E:I

    .line 35
    iput v1, p0, Lorg/brotli/dec/l;->v:I

    .line 36
    iget-object v0, p0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    iget-object v0, v0, Lorg/brotli/dec/h;->c:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/l;->w:I

    .line 37
    iget-object v0, p0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    iget-object v0, v0, Lorg/brotli/dec/h;->c:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/l;->F:I

    .line 38
    iget-object p0, p0, Lorg/brotli/dec/l;->p:[I

    aput v5, p0, v2

    aput v5, p0, v4

    aput v5, p0, v1

    const/4 v0, 0x5

    .line 39
    aput v1, p0, v0

    aput v1, p0, v3

    aput v1, p0, v5

    return-void
.end method

.method private static q(Lorg/brotli/dec/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    .line 2
    iget-boolean v1, p0, Lorg/brotli/dec/l;->h:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lorg/brotli/dec/l;->b:I

    .line 4
    iget v0, p0, Lorg/brotli/dec/l;->r:I

    iput v0, p0, Lorg/brotli/dec/l;->Y:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/brotli/dec/l;->X:I

    const/16 v0, 0xc

    .line 6
    iput v0, p0, Lorg/brotli/dec/l;->a:I

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/brotli/dec/h;->b:[I

    .line 8
    iput-object v2, v1, Lorg/brotli/dec/h;->c:[I

    .line 9
    iget-object v1, p0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    iput-object v2, v1, Lorg/brotli/dec/h;->b:[I

    .line 10
    iput-object v2, v1, Lorg/brotli/dec/h;->c:[I

    .line 11
    iget-object v1, p0, Lorg/brotli/dec/l;->m:Lorg/brotli/dec/h;

    iput-object v2, v1, Lorg/brotli/dec/h;->b:[I

    .line 12
    iput-object v2, v1, Lorg/brotli/dec/h;->c:[I

    .line 13
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 14
    invoke-static {v0, p0}, Lorg/brotli/dec/e;->g(Lorg/brotli/dec/a;Lorg/brotli/dec/l;)V

    .line 15
    iget v1, p0, Lorg/brotli/dec/l;->g:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/brotli/dec/l;->j:Z

    if-nez v1, :cond_1

    return-void

    .line 16
    :cond_1
    iget-boolean v1, p0, Lorg/brotli/dec/l;->i:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/brotli/dec/l;->j:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lorg/brotli/dec/l;->a:I

    goto :goto_2

    .line 18
    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/a;->g(Lorg/brotli/dec/a;)V

    .line 19
    iget-boolean v0, p0, Lorg/brotli/dec/l;->j:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lorg/brotli/dec/l;->a:I

    .line 20
    :goto_2
    iget-boolean v0, p0, Lorg/brotli/dec/l;->j:Z

    if-eqz v0, :cond_5

    return-void

    .line 21
    :cond_5
    iget-wide v0, p0, Lorg/brotli/dec/l;->R:J

    iget v2, p0, Lorg/brotli/dec/l;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/l;->R:J

    .line 22
    iget v0, p0, Lorg/brotli/dec/l;->Q:I

    iget v1, p0, Lorg/brotli/dec/l;->P:I

    if-ge v0, v1, :cond_6

    .line 23
    invoke-static {p0}, Lorg/brotli/dec/e;->k(Lorg/brotli/dec/l;)V

    :cond_6
    return-void
.end method

.method private static r([IILorg/brotli/dec/a;)I
    .locals 6

    .line 1
    iget-wide v0, p2, Lorg/brotli/dec/a;->f:J

    iget v2, p2, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    add-int/2addr p1, v0

    .line 2
    aget v0, p0, p1

    shr-int/lit8 v0, v0, 0x10

    .line 3
    aget v3, p0, p1

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v5, 0x8

    if-gt v0, v5, :cond_0

    add-int/2addr v2, v0

    .line 4
    iput v2, p2, Lorg/brotli/dec/a;->g:I

    return v3

    :cond_0
    add-int/2addr p1, v3

    const/4 v3, 0x1

    shl-int v0, v3, v0

    sub-int/2addr v0, v3

    and-int/2addr v0, v1

    ushr-int/2addr v0, v5

    add-int/2addr p1, v0

    .line 5
    aget v0, p0, p1

    shr-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v5

    add-int/2addr v2, v0

    iput v2, p2, Lorg/brotli/dec/a;->g:I

    .line 6
    aget p0, p0, p1

    and-int/2addr p0, v4

    return p0
.end method

.method static s(Lorg/brotli/dec/l;[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    :cond_0
    iput-object p1, p0, Lorg/brotli/dec/l;->S:[B

    return-void
.end method

.method private static t(I[II)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lorg/brotli/dec/e;->m:[I

    aget v0, v0, p0

    add-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x3

    .line 2
    aget p1, p1, p2

    sget-object p2, Lorg/brotli/dec/e;->n:[I

    aget p0, p2, p0

    add-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static u(Lorg/brotli/dec/l;)Z
    .locals 7

    .line 1
    iget v0, p0, Lorg/brotli/dec/l;->T:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Lorg/brotli/dec/l;->X:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/l;->X:I

    .line 3
    iput v1, p0, Lorg/brotli/dec/l;->T:I

    .line 4
    :cond_0
    iget v0, p0, Lorg/brotli/dec/l;->V:I

    iget v2, p0, Lorg/brotli/dec/l;->W:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/brotli/dec/l;->Y:I

    iget v3, p0, Lorg/brotli/dec/l;->X:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lorg/brotli/dec/l;->d:[B

    iget v3, p0, Lorg/brotli/dec/l;->X:I

    iget-object v4, p0, Lorg/brotli/dec/l;->Z:[B

    iget v5, p0, Lorg/brotli/dec/l;->U:I

    iget v6, p0, Lorg/brotli/dec/l;->W:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v2, p0, Lorg/brotli/dec/l;->W:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/l;->W:I

    .line 7
    iget v2, p0, Lorg/brotli/dec/l;->X:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/l;->X:I

    .line 8
    :cond_1
    iget v0, p0, Lorg/brotli/dec/l;->W:I

    iget p0, p0, Lorg/brotli/dec/l;->V:I

    if-ge v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
