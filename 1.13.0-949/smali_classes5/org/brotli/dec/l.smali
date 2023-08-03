.class final Lorg/brotli/dec/l;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field A:[B

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field H:[B

.field I:I

.field J:I

.field K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:I

.field Q:I

.field R:J

.field S:[B

.field T:I

.field U:I

.field V:I

.field W:I

.field X:I

.field Y:I

.field Z:[B

.field a:I

.field b:I

.field final c:Lorg/brotli/dec/a;

.field d:[B

.field final e:[I

.field final f:[I

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field final k:Lorg/brotli/dec/h;

.field final l:Lorg/brotli/dec/h;

.field final m:Lorg/brotli/dec/h;

.field final n:[I

.field final o:[I

.field final p:[I

.field final q:[I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:I

.field w:I

.field x:I

.field y:I

.field z:[B


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/brotli/dec/l;->a:I

    .line 3
    new-instance v1, Lorg/brotli/dec/a;

    invoke-direct {v1}, Lorg/brotli/dec/a;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    const/16 v1, 0xca8

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Lorg/brotli/dec/l;->e:[I

    new-array v1, v1, [I

    .line 5
    iput-object v1, p0, Lorg/brotli/dec/l;->f:[I

    .line 6
    new-instance v1, Lorg/brotli/dec/h;

    invoke-direct {v1}, Lorg/brotli/dec/h;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/l;->k:Lorg/brotli/dec/h;

    .line 7
    new-instance v1, Lorg/brotli/dec/h;

    invoke-direct {v1}, Lorg/brotli/dec/h;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/l;->l:Lorg/brotli/dec/h;

    .line 8
    new-instance v1, Lorg/brotli/dec/h;

    invoke-direct {v1}, Lorg/brotli/dec/h;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/l;->m:Lorg/brotli/dec/h;

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Lorg/brotli/dec/l;->n:[I

    new-array v1, v1, [I

    .line 10
    iput-object v1, p0, Lorg/brotli/dec/l;->o:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 11
    iput-object v1, p0, Lorg/brotli/dec/l;->p:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/brotli/dec/l;->q:[I

    .line 13
    iput v0, p0, Lorg/brotli/dec/l;->r:I

    .line 14
    iput v0, p0, Lorg/brotli/dec/l;->s:I

    .line 15
    iput v0, p0, Lorg/brotli/dec/l;->t:I

    .line 16
    iput-boolean v0, p0, Lorg/brotli/dec/l;->u:Z

    .line 17
    iput v0, p0, Lorg/brotli/dec/l;->v:I

    .line 18
    iput v0, p0, Lorg/brotli/dec/l;->Q:I

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lorg/brotli/dec/l;->R:J

    new-array v1, v0, [B

    .line 20
    iput-object v1, p0, Lorg/brotli/dec/l;->S:[B

    .line 21
    iput v0, p0, Lorg/brotli/dec/l;->T:I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xf
        0xb
        0x4
    .end array-data
.end method

.method static a(Lorg/brotli/dec/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/brotli/dec/l;->a:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lorg/brotli/dec/l;->a:I

    .line 3
    iget-object p0, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    invoke-static {p0}, Lorg/brotli/dec/a;->b(Lorg/brotli/dec/a;)V

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lorg/brotli/dec/a;)I
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    add-int/2addr v1, v2

    return v1

    .line 3
    :cond_1
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_2
    return v2
.end method

.method static c(Lorg/brotli/dec/l;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/brotli/dec/l;->a:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    invoke-static {v0, p1}, Lorg/brotli/dec/a;->e(Lorg/brotli/dec/a;Ljava/io/InputStream;)V

    .line 3
    iget-object p1, p0, Lorg/brotli/dec/l;->c:Lorg/brotli/dec/a;

    invoke-static {p1}, Lorg/brotli/dec/l;->b(Lorg/brotli/dec/a;)I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 4
    iput p1, p0, Lorg/brotli/dec/l;->P:I

    add-int/lit8 p1, p1, -0x10

    .line 5
    iput p1, p0, Lorg/brotli/dec/l;->O:I

    .line 6
    iput v0, p0, Lorg/brotli/dec/l;->a:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Invalid \'windowBits\' code"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be uninitialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
