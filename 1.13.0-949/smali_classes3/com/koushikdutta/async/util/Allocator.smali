.class public Lcom/koushikdutta/async/util/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# instance fields
.field final a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->b:I

    const/16 v0, 0x1000

    .line 7
    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->c:I

    .line 8
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->f:I

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->b:I

    const/16 v0, 0x1000

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->c:I

    .line 4
    iput p1, p0, Lcom/koushikdutta/async/util/Allocator;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->b:I

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/util/Allocator;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->a:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/util/Allocator;->b:I

    return-void
.end method

.method public f(I)Lcom/koushikdutta/async/util/Allocator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/util/Allocator;->c:I

    return-object p0
.end method

.method public g(J)V
    .locals 0

    long-to-int p2, p1

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/koushikdutta/async/util/Allocator;->b:I

    return-void
.end method
