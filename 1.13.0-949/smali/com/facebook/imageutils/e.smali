.class Lcom/facebook/imageutils/e;
.super Ljava/lang/Object;
.source "TiffUtil.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageutils/e$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:I = 0x4d4d002a

.field public static final c:I = 0x49492a00

.field public static final d:I = 0x112

.field public static final e:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/imageutils/e;

    sput-object v0, Lcom/facebook/imageutils/e;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method private static b(Ljava/io/InputStream;IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "length",
            "isLittleEndian"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    .line 2
    invoke-static {p0, v1, p2}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/io/InputStream;IZI)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "length",
            "isLittleEndian",
            "tagToFind"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xe

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 1
    invoke-static {p0, v1, p2}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 p1, p1, -0x2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2

    const/16 v2, 0xc

    if-lt p1, v2, :cond_2

    .line 2
    invoke-static {p0, v1, p2}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 p1, p1, -0x2

    if-ne v2, p3, :cond_1

    return p1

    :cond_1
    const-wide/16 v4, 0xa

    .line 3
    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 p1, p1, -0xa

    move v2, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static d(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imageutils/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imageutils/e$b;-><init>(Lcom/facebook/imageutils/e$a;)V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/facebook/imageutils/e;->e(Ljava/io/InputStream;ILcom/facebook/imageutils/e$b;)I

    move-result p1

    .line 3
    iget v1, v0, Lcom/facebook/imageutils/e$b;->c:I

    add-int/lit8 v1, v1, -0x8

    if-eqz p1, :cond_1

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v2, v1

    .line 4
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    sub-int/2addr p1, v1

    .line 5
    iget-boolean v1, v0, Lcom/facebook/imageutils/e$b;->a:Z

    const/16 v2, 0x112

    invoke-static {p0, p1, v1, v2}, Lcom/facebook/imageutils/e;->c(Ljava/io/InputStream;IZI)I

    move-result p1

    .line 6
    iget-boolean v0, v0, Lcom/facebook/imageutils/e$b;->a:Z

    invoke-static {p0, p1, v0}, Lcom/facebook/imageutils/e;->b(Ljava/io/InputStream;IZ)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Ljava/io/InputStream;ILcom/facebook/imageutils/e$b;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "length",
            "tiffHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x4

    .line 1
    invoke-static {p0, v2, v1}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    iput v3, p2, Lcom/facebook/imageutils/e$b;->b:I

    add-int/lit8 p1, p1, -0x4

    const v4, 0x49492a00    # 823968.0f

    if-eq v3, v4, :cond_1

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v3, v5, :cond_1

    .line 2
    sget-object p0, Lcom/facebook/imageutils/e;->a:Ljava/lang/Class;

    const-string p1, "Invalid TIFF header"

    invoke-static {p0, p1}, Lp0/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    :cond_1
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 3
    :goto_0
    iput-boolean v3, p2, Lcom/facebook/imageutils/e$b;->a:Z

    .line 4
    invoke-static {p0, v2, v3}, Lcom/facebook/imageutils/d;->a(Ljava/io/InputStream;IZ)I

    move-result p0

    iput p0, p2, Lcom/facebook/imageutils/e$b;->c:I

    add-int/lit8 p1, p1, -0x4

    if-lt p0, v0, :cond_4

    sub-int/2addr p0, v0

    if-le p0, p1, :cond_3

    goto :goto_1

    :cond_3
    return p1

    .line 5
    :cond_4
    :goto_1
    sget-object p0, Lcom/facebook/imageutils/e;->a:Ljava/lang/Class;

    const-string p1, "Invalid offset"

    invoke-static {p0, p1}, Lp0/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    return v1
.end method
