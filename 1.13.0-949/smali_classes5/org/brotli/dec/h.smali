.class final Lorg/brotli/dec/h;
.super Ljava/lang/Object;
.source "HuffmanTreeGroup.java"


# instance fields
.field private a:I

.field b:[I

.field c:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/brotli/dec/h;Lorg/brotli/dec/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/h;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lorg/brotli/dec/h;->c:[I

    aput v2, v3, v1

    .line 3
    iget v3, p0, Lorg/brotli/dec/h;->a:I

    iget-object v4, p0, Lorg/brotli/dec/h;->b:[I

    invoke-static {v3, v4, v2, p1}, Lorg/brotli/dec/e;->n(I[IILorg/brotli/dec/a;)V

    add-int/lit16 v2, v2, 0x438

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static b(Lorg/brotli/dec/h;II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/brotli/dec/h;->a:I

    mul-int/lit16 p1, p2, 0x438

    .line 2
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/brotli/dec/h;->b:[I

    .line 3
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/brotli/dec/h;->c:[I

    return-void
.end method
