.class public Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.super Ljava/lang/Object;
.source "WebpHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$d;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$b;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$a;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;,
        Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    }
.end annotation


# static fields
.field public static final a:I = 0x15

.field private static final b:I = 0x52494646

.field private static final c:I = 0x57454250

.field private static final d:I = 0x56503820

.field private static final e:I = 0x5650384c

.field private static final f:I = 0x56503858

.field private static final g:I = 0x10

.field private static final h:I = 0x2

.field private static final i:I = 0x8

.field private static final j:Ljava/lang/String; = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

.field public static final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->g()Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->a()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x52494646

    if-eq v0, v2, :cond_0

    .line 2
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    :cond_0
    const-wide/16 v4, 0x4

    .line 3
    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->skip(J)J

    .line 4
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->a()I

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x57454250

    if-eq v0, v2, :cond_1

    .line 5
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    .line 6
    :cond_1
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->a()I

    move-result v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const v1, 0x56503820

    if-ne v0, v1, :cond_2

    .line 7
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    :cond_2
    const v1, 0x5650384c

    if-ne v0, v1, :cond_4

    .line 8
    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->skip(J)J

    .line 9
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->d()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_LOSSLESS_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_LOSSLESS:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    :goto_0
    return-object p0

    :cond_4
    const v1, 0x56503858

    if-ne v0, v1, :cond_7

    .line 10
    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->skip(J)J

    .line 11
    invoke-interface {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;->d()I

    move-result p0

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_5

    .line 12
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED_ANIMATED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    :cond_5
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    .line 13
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    .line 14
    :cond_6
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    .line 15
    :cond_7
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/z;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/z;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    move-object p0, v0

    :cond_1
    const/16 p1, 0x15

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 5
    :try_start_0
    new-instance p1, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$d;

    invoke-static {p0}, Lcom/bumptech/glide/util/m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$d;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 7
    throw p1
.end method

.method public static c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$b;

    invoke-static {p0}, Lcom/bumptech/glide/util/m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->e([BII)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p0

    return-object p0
.end method

.method public static e([BII)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$a;-><init>([BII)V

    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->a(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$c;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z
    .locals 1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED_ANIMATED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static h(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z
    .locals 1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z
    .locals 1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_LOSSLESS:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_LOSSLESS_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
