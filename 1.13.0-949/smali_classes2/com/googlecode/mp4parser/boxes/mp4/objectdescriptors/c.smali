.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;
.super Ljava/lang/Object;
.source "BitReaderBuffer.java"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    return v0
.end method

.method public c(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->b:I

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    .line 2
    :cond_0
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    rem-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x8

    if-gt p1, v2, :cond_1

    .line 3
    rem-int/lit8 v3, v1, 0x8

    shl-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    rem-int/lit8 v3, v1, 0x8

    sub-int/2addr v2, p1

    add-int/2addr v3, v2

    shr-int/2addr v0, v3

    add-int/2addr v1, p1

    .line 4
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v0

    shl-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->b:I

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c:I

    sub-int/2addr v0, v1

    return v0
.end method
