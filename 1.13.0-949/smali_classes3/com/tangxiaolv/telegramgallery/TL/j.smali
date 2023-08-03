.class public Lcom/tangxiaolv/telegramgallery/TL/j;
.super Lcom/tangxiaolv/telegramgallery/TL/a;
.source "NativeByteBuffer.java"


# static fields
.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/tangxiaolv/telegramgallery/TL/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field public b:Ljava/nio/ByteBuffer;

.field private c:Z

.field private d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/j$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/j$a;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/TL/j;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/a;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->e:Z

    if-ltz p1, :cond_1

    .line 6
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->a:I

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "invalid NativeByteBuffer size"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/a;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->e:Z

    return-void
.end method

.method synthetic constructor <init>(IZLcom/tangxiaolv/telegramgallery/TL/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/j;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/a;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->e:Z

    .line 13
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    return-void
.end method


# virtual methods
.method public A(B)I
    .locals 0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p1, p1, 0x100

    :goto_0
    return p1
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public C()I
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public D(I)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public E()I
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public F(I)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public G(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->e:Z

    :cond_0
    return-void
.end method

.method public I()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method public J(Lcom/tangxiaolv/telegramgallery/TL/j;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->C()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->I()V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    return v0
.end method

.method public c(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->i(Z)I

    move-result v0

    const v1, -0x668d8a4b

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const v1, -0x438668c9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-nez p1, :cond_2

    return v2

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not bool value!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Z)[B
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x4

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    :goto_0
    new-array v3, v0, [B

    .line 5
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int v4, v0, v1

    .line 6
    rem-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    :catch_0
    move-exception v0

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "read byte array error"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public e(Z)Lcom/tangxiaolv/telegramgallery/TL/j;
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x4

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    :goto_0
    new-instance v3, Lcom/tangxiaolv/telegramgallery/TL/j;

    invoke-direct {v3, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;-><init>(I)V

    .line 5
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    iget-object v5, v3, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    iget-object v4, v3, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    add-int v4, v0, v1

    .line 10
    rem-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 11
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    :catch_0
    move-exception v0

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "read byte array error"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public f([BZ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez p2, :cond_0

    :goto_0
    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "read raw error"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public g(IZ)[B
    .locals 0

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/j;->f([BZ)V

    return-object p1
.end method

.method public h(Z)D
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->j(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "read double error"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public i(Z)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "read int32 error"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public j(Z)J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "read int64 error"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public k(Z)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x4

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->A(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    :goto_0
    new-array v3, v0, [B

    .line 5
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int v4, v0, v1

    .line 6
    rem-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "read string error"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public l(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    :goto_0
    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const p1, -0x668d8a4b

    .line 2
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->v(I)V

    goto :goto_0

    :cond_0
    const p1, -0x438668c9

    .line 3
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->v(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    :goto_0
    return-void
.end method

.method public n(B)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public o(I)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->n(B)V

    return-void
.end method

.method public p([B)V
    .locals 5

    .line 1
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xfd

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    array-length v4, p1

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    array-length v4, p1

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    array-length v4, p1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    array-length v4, p1

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    .line 11
    :goto_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 13
    :cond_3
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    array-length v4, p1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    .line 14
    :goto_1
    array-length v0, p1

    if-gt v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    .line 15
    :goto_2
    array-length v1, p1

    add-int/2addr v1, v0

    rem-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 16
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 18
    :cond_5
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public q([BII)V
    .locals 5

    const/16 v0, 0xfd

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-gt p3, v0, :cond_1

    .line 1
    :try_start_0
    iget-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v3, :cond_0

    .line 2
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    int-to-byte v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    int-to-byte v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, p3, 0x10

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 9
    :cond_2
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    .line 10
    :goto_0
    iget-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 12
    :cond_3
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    :goto_1
    if-gt p3, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    :goto_2
    add-int p2, p3, p1

    .line 13
    rem-int/2addr p2, v1

    if-eqz p2, :cond_6

    .line 14
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez p2, :cond_5

    .line 15
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 16
    :cond_5
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public r(Lcom/tangxiaolv/telegramgallery/TL/j;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->C()I

    move-result v0

    const/16 v1, 0xfd

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    .line 2
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v4, :cond_0

    .line 3
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    int-to-byte v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4
    :cond_0
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    int-to-byte v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 10
    :cond_2
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    .line 11
    :goto_0
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v4, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->I()V

    .line 13
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 14
    :cond_3
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    :goto_1
    if-gt v0, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    :goto_2
    add-int v1, v0, p1

    .line 15
    rem-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 16
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 18
    :cond_5
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public s([B)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public t([BII)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public u(D)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/j;->w(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public w(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/TL/j;->p([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/j;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method
