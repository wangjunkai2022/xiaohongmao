.class public Lt0/c;
.super Ljava/lang/Object;
.source "WebpSupportStatus.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static d:Lt0/b; = null
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private static e:Z = false

.field private static final f:Ljava/lang/String; = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

.field private static final g:I = 0x14

.field private static final h:I = 0x15

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lt0/c;->a:Z

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lt0/c;->b:Z

    .line 3
    invoke-static {}, Lt0/c;->e()Z

    move-result v1

    sput-boolean v1, Lt0/c;->c:Z

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lt0/c;->d:Lt0/b;

    .line 5
    sput-boolean v0, Lt0/c;->e:Z

    const-string v0, "RIFF"

    .line 6
    invoke-static {v0}, Lt0/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lt0/c;->i:[B

    const-string v0, "WEBP"

    .line 7
    invoke-static {v0}, Lt0/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lt0/c;->j:[B

    const-string v0, "VP8 "

    .line 8
    invoke-static {v0}, Lt0/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lt0/c;->k:[B

    const-string v0, "VP8L"

    .line 9
    invoke-static {v0}, Lt0/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lt0/c;->l:[B

    const-string v0, "VP8X"

    .line 10
    invoke-static {v0}, Lt0/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lt0/c;->m:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    :try_start_0
    const-string v0, "ASCII"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b([BI)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset"
        }
    .end annotation

    add-int/lit8 v0, p1, 0xc

    .line 1
    sget-object v1, Lt0/c;->m:[B

    invoke-static {p0, v0, v1}, Lt0/c;->k([BI[B)Z

    move-result v0

    add-int/lit8 p1, p1, 0x14

    .line 2
    aget-byte p0, p0, p1

    const/4 p1, 0x2

    and-int/2addr p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static c([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset",
            "headerSize"
        }
    .end annotation

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    .line 1
    sget-object p2, Lt0/c;->m:[B

    .line 2
    invoke-static {p0, p1, p2}, Lt0/c;->k([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d([BI)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset"
        }
    .end annotation

    add-int/lit8 v0, p1, 0xc

    .line 1
    sget-object v1, Lt0/c;->m:[B

    invoke-static {p0, v0, v1}, Lt0/c;->k([BI[B)Z

    move-result v0

    add-int/lit8 p1, p1, 0x14

    .line 2
    aget-byte p0, p0, p1

    const/16 p1, 0x10

    and-int/2addr p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static f([BI)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset"
        }
    .end annotation

    add-int/lit8 p1, p1, 0xc

    sget-object v0, Lt0/c;->l:[B

    invoke-static {p0, p1, v0}, Lt0/c;->k([BI[B)Z

    move-result p0

    return p0
.end method

.method public static g([BI)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset"
        }
    .end annotation

    add-int/lit8 p1, p1, 0xc

    sget-object v0, Lt0/c;->k:[B

    invoke-static {p0, p1, v0}, Lt0/c;->k([BI[B)Z

    move-result p0

    return p0
.end method

.method public static h([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset",
            "headerSize"
        }
    .end annotation

    const/16 v0, 0x14

    if-lt p2, v0, :cond_0

    .line 1
    sget-object p2, Lt0/c;->i:[B

    .line 2
    invoke-static {p0, p1, p2}, Lt0/c;->k([BI[B)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x8

    sget-object p2, Lt0/c;->j:[B

    .line 3
    invoke-static {p0, p1, p2}, Lt0/c;->k([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "offset",
            "headerSize"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lt0/c;->g([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-boolean p0, Lt0/c;->b:Z

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lt0/c;->f([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-boolean p0, Lt0/c;->c:Z

    return p0

    .line 5
    :cond_1
    invoke-static {p0, p1, p2}, Lt0/c;->c([BII)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 6
    invoke-static {p0, p1}, Lt0/c;->b([BI)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 7
    :cond_2
    sget-boolean p0, Lt0/c;->c:Z

    return p0

    :cond_3
    return v0
.end method

.method public static j()Lt0/b;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    sget-boolean v0, Lt0/c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lt0/c;->d:Lt0/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.webpsupport.WebpBitmapFactoryImpl"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lt0/c;->e:Z

    return-object v0
.end method

.method private static k([BI[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "byteArray",
            "offset",
            "pattern"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    add-int v2, v1, p1

    .line 3
    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method
