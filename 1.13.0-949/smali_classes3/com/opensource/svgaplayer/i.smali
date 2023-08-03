.class public final Lcom/opensource/svgaplayer/i;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/i$d;,
        Lcom/opensource/svgaplayer/i$e;,
        Lcom/opensource/svgaplayer/i$c;,
        Lcom/opensource/svgaplayer/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser\n*L\n1#1,566:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 E2\u00020\u0001:\u000479<\u000cB\u0011\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008C\u0010DJ$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J(\u0010\r\u001a\u00020\u00082\n\u0010\u000c\u001a\u00060\nj\u0002`\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J$\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0018\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u000e\u0010 \u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u001eJ\u0016\u0010$\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!J$\u0010(\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010&J,\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010+2\u0006\u0010*\u001a\u00020)2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010&J.\u0010-\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\'\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006JB\u0010/\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010.\u001a\u00020\u00172\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001a\u00101\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u00102\u001a\u00020\u00082\u0006\u0010*\u001a\u00020)2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J,\u00103\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010.\u001a\u00020\u0017H\u0007R\u0018\u00106\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00108\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00103R\u0016\u0010:\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00103R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010A\u00a8\u0006F"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/i;",
        "",
        "Lcom/opensource/svgaplayer/l;",
        "videoItem",
        "Lcom/opensource/svgaplayer/i$d;",
        "callback",
        "",
        "alias",
        "",
        "F",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "G",
        "cacheKey",
        "u",
        "Ljava/io/InputStream;",
        "inputStream",
        "",
        "M",
        "byteArray",
        "D",
        "bytes",
        "",
        "H",
        "P",
        "Ljava/io/File;",
        "outputFile",
        "dstDirPath",
        "B",
        "Landroid/content/Context;",
        "context",
        "E",
        "",
        "frameWidth",
        "frameHeight",
        "O",
        "name",
        "Lcom/opensource/svgaplayer/i$e;",
        "playCallback",
        "s",
        "Ljava/net/URL;",
        "url",
        "Lkotlin/Function0;",
        "z",
        "x",
        "closeInputStream",
        "v",
        "assetsName",
        "J",
        "K",
        "I",
        "a",
        "Landroid/content/Context;",
        "mContext",
        "b",
        "mFrameWidth",
        "c",
        "mFrameHeight",
        "Lcom/opensource/svgaplayer/i$c;",
        "d",
        "Lcom/opensource/svgaplayer/i$c;",
        "C",
        "()Lcom/opensource/svgaplayer/i$c;",
        "N",
        "(Lcom/opensource/svgaplayer/i$c;)V",
        "fileDownloader",
        "<init>",
        "(Landroid/content/Context;)V",
        "i",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "SVGAParser"

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static g:Lcom/opensource/svgaplayer/i;

.field private static h:Ljava/util/concurrent/ExecutorService;

.field public static final i:Lcom/opensource/svgaplayer/i$b;


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:I

.field private volatile c:I

.field private d:Lcom/opensource/svgaplayer/i$c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/opensource/svgaplayer/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/opensource/svgaplayer/i;->i:Lcom/opensource/svgaplayer/i$b;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/opensource/svgaplayer/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Lcom/opensource/svgaplayer/i;

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/opensource/svgaplayer/i;->g:Lcom/opensource/svgaplayer/i;

    .line 3
    sget-object v0, Lcom/opensource/svgaplayer/i$a;->a:Lcom/opensource/svgaplayer/i$a;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->n(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/opensource/svgaplayer/i$c;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/i$c;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/i;->d:Lcom/opensource/svgaplayer/i$c;

    return-void
.end method

.method public static synthetic A(Lcom/opensource/svgaplayer/i;Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i;->z(Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method private final B(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "outputFileCanonicalPath"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstDirCanonicalPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found Zip Path Traversal Vulnerability with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final D([B)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/16 p1, 0x800

    new-array v1, p1, [B

    .line 3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final F(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/opensource/svgaplayer/i$l;

    invoke-direct {v1, p3, p2, p1}, Lcom/opensource/svgaplayer/i$l;-><init>(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final G(Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    sget-object v0, Lv4/c;->b:Lv4/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parser error ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    invoke-virtual {v0, v2, v1}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " parse error"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3, p1}, Lv4/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/opensource/svgaplayer/i$m;

    invoke-direct {p3, p2}, Lcom/opensource/svgaplayer/i$m;-><init>(Lcom/opensource/svgaplayer/i$d;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final H([B)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    aget-byte v0, p1, v2

    const/16 v4, 0x50

    if-ne v0, v4, :cond_0

    aget-byte v0, p1, v1

    const/16 v4, 0x4b

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic L(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/i;->I(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Z)V

    return-void
.end method

.method private final M(Ljava/io/InputStream;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    :try_start_0
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final P(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    const-string v0, "zipItem.name"

    const-string v1, "cacheDir.absolutePath"

    .line 1
    sget-object v2, Lv4/c;->b:Lv4/c;

    const-string v3, "SVGAParser"

    const-string v4, "================ unzip prepare ================"

    invoke-virtual {v2, v3, v4}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2, p2}, Lcom/opensource/svgaplayer/SVGACache;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 6
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "../"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v9, v8, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "/"

    invoke-static {v6, v7, v9, v8, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, v4}, Lcom/opensource/svgaplayer/i;->B(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v6}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v6, 0x800

    :try_start_3
    new-array v6, v6, [B

    .line 12
    :goto_1
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_2

    .line 13
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 15
    sget-object v4, Lv4/c;->b:Lv4/c;

    const-string v5, "================ unzip complete ================"

    invoke-virtual {v4, v3, v5}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 17
    :cond_2
    :try_start_5
    invoke-virtual {v4, v6, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 18
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_7
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 19
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 20
    :try_start_8
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 21
    :try_start_9
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return-void

    :catchall_2
    move-exception v0

    .line 22
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_b
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p1

    .line 23
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception p1

    .line 24
    sget-object v0, Lv4/c;->b:Lv4/c;

    const-string v2, "================ unzip error ================"

    invoke-virtual {v0, v3, v2}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "error"

    .line 25
    invoke-virtual {v0, v3, v2, p1}, Lv4/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGACache;->i(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 28
    throw p1
.end method

.method public static final synthetic a(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i;->u(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/opensource/svgaplayer/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/opensource/svgaplayer/i;)I
    .locals 0

    iget p0, p0, Lcom/opensource/svgaplayer/i;->c:I

    return p0
.end method

.method public static final synthetic d(Lcom/opensource/svgaplayer/i;)I
    .locals 0

    iget p0, p0, Lcom/opensource/svgaplayer/i;->b:I

    return p0
.end method

.method public static final synthetic e()Lcom/opensource/svgaplayer/i;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/i;->g:Lcom/opensource/svgaplayer/i;

    return-object v0
.end method

.method public static final synthetic f()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic g()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic h(Lcom/opensource/svgaplayer/i;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/i;->D([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/opensource/svgaplayer/i;Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i;->F(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic j(Lcom/opensource/svgaplayer/i;Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i;->G(Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic k(Lcom/opensource/svgaplayer/i;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/i;->H([B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic l(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/i;->M(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/opensource/svgaplayer/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic n(Lcom/opensource/svgaplayer/i;I)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/i;->c:I

    return-void
.end method

.method public static final synthetic o(Lcom/opensource/svgaplayer/i;I)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/i;->b:I

    return-void
.end method

.method public static final synthetic p(Lcom/opensource/svgaplayer/i;)V
    .locals 0

    sput-object p0, Lcom/opensource/svgaplayer/i;->g:Lcom/opensource/svgaplayer/i;

    return-void
.end method

.method public static final synthetic q(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    sput-object p0, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic r(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/i;->P(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i;->s(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)V

    return-void
.end method

.method private final u(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lv4/c;->b:Lv4/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from cache ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    invoke-virtual {v0, v2, v1}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeFromCacheKey called with cacheKey : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lv4/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p1, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    .line 4
    invoke-virtual {v0, v2, p1}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v1, p1}, Lcom/opensource/svgaplayer/SVGACache;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6
    new-instance v1, Ljava/io/File;

    const-string v3, "movie.binary"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    const-string v3, "binary change to entity"

    .line 7
    invoke-virtual {v0, v2, v3}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v5, "binary change to entity success"

    .line 9
    invoke-virtual {v0, v2, v5}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v5, Lcom/opensource/svgaplayer/l;

    .line 11
    sget-object v6, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v3}, Lcom/squareup/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "MovieEntity.ADAPTER.decode(it)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 12
    iget v7, p0, Lcom/opensource/svgaplayer/i;->b:I

    .line 13
    iget v8, p0, Lcom/opensource/svgaplayer/i;->c:I

    .line 14
    invoke-direct {v5, v6, p1, v7, v8}, Lcom/opensource/svgaplayer/l;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 15
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/i;->F(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    .line 16
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 18
    :try_start_6
    sget-object v3, Lv4/c;->b:Lv4/c;

    const-string v4, "binary change to entity fail"

    invoke-virtual {v3, v2, v4, v0}, Lv4/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 21
    throw v0

    .line 22
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v3, "movie.spec"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_5

    :try_start_7
    const-string v3, "spec change to entity"

    .line 23
    invoke-virtual {v0, v2, v3}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 25
    :try_start_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v5, 0x800

    :try_start_9
    new-array v6, v5, [B

    :goto_3
    const/4 v7, 0x0

    .line 26
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object v5, Lv4/c;->b:Lv4/c;

    const-string v7, "spec change to entity success"

    invoke-virtual {v5, v2, v7}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v5, Lcom/opensource/svgaplayer/l;

    .line 31
    iget v7, p0, Lcom/opensource/svgaplayer/i;->b:I

    .line 32
    iget v8, p0, Lcom/opensource/svgaplayer/i;->c:I

    .line 33
    invoke-direct {v5, v6, p1, v7, v8}, Lcom/opensource/svgaplayer/l;-><init>(Lorg/json/JSONObject;Ljava/io/File;II)V

    .line 34
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/i;->F(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    .line 35
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 36
    :try_start_a
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 37
    :try_start_b
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 38
    :cond_4
    :try_start_c
    invoke-virtual {v3, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    .line 39
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v5

    :try_start_e
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v3

    .line 40
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v4

    :try_start_10
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :catch_1
    move-exception v0

    .line 41
    :try_start_11
    sget-object v3, Lv4/c;->b:Lv4/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " movie.spec change to entity fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lv4/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception p1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i;->G(Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static synthetic w(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;ZLcom/opensource/svgaplayer/i$e;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    const/4 p8, 0x0

    if-eqz p4, :cond_1

    move-object v5, p8

    goto :goto_1

    :cond_1
    move-object v5, p5

    :goto_1
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    move-object v6, p8

    goto :goto_2

    :cond_2
    move-object v6, p6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/opensource/svgaplayer/i;->v(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;ZLcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/i;->x(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C()Lcom/opensource/svgaplayer/i$c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/i;->d:Lcom/opensource/svgaplayer/i$c;

    return-object v0
.end method

.method public final E(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->n(Landroid/content/Context;)V

    return-void
.end method

.method public final I(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Z)V
    .locals 9
    .param p1    # Ljava/io/InputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v8}, Lcom/opensource/svgaplayer/i;->w(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;ZLcom/opensource/svgaplayer/i$e;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final J(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromAssets(assetsName, callback)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/i;->s(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)V

    return-void
.end method

.method public final K(Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;)V
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromURL(url, callback)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/i;->z(Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final N(Lcom/opensource/svgaplayer/i$c;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/i$c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/i;->d:Lcom/opensource/svgaplayer/i$c;

    return-void
.end method

.method public final O(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opensource/svgaplayer/i;->b:I

    .line 2
    iput p2, p0, Lcom/opensource/svgaplayer/i;->c:I

    return-void
.end method

.method public final s(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/i$e;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    const-string v1, "SVGAParser"

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lv4/c;->b:Lv4/c;

    const-string p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v1, p2}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lv4/c;->b:Lv4/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from assets ================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/opensource/svgaplayer/i$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/opensource/svgaplayer/i$f;-><init>(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;ZLcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/io/InputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/opensource/svgaplayer/i$e;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v8, p0

    .line 1
    iget-object v0, v8, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    const-string v1, "SVGAParser"

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lv4/c;->b:Lv4/c;

    const-string v2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {v0, v1, v2}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lv4/c;->b:Lv4/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from input stream ================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v9, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/opensource/svgaplayer/i$g;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/opensource/svgaplayer/i$g;-><init>(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;Lcom/opensource/svgaplayer/i$e;Z)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/i$e;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    sget-object v0, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/opensource/svgaplayer/i$h;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/i$h;-><init>(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z(Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)Lkotlin/jvm/functions/Function0;
    .locals 9
    .param p1    # Ljava/net/URL;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/i$d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/i$e;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/opensource/svgaplayer/i$d;",
            "Lcom/opensource/svgaplayer/i$e;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SVGAParser"

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lv4/c;->b:Lv4/c;

    const-string p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v2, p2}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "url.toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lv4/c;->b:Lv4/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================ decode from url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v4, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v4, p1}, Lcom/opensource/svgaplayer/SVGACache;->f(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v4, v5}, Lcom/opensource/svgaplayer/SVGACache;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "this url cached"

    .line 7
    invoke-virtual {v3, v2, p1}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/opensource/svgaplayer/i;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/opensource/svgaplayer/i$i;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, v0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/opensource/svgaplayer/i$i;-><init>(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;Lcom/opensource/svgaplayer/i$e;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :cond_1
    const-string v1, "no cached, prepare to download"

    .line 9
    invoke-virtual {v3, v2, v1}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/opensource/svgaplayer/i;->d:Lcom/opensource/svgaplayer/i$c;

    new-instance v2, Lcom/opensource/svgaplayer/i$j;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/opensource/svgaplayer/i$j;-><init>(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V

    .line 11
    new-instance p3, Lcom/opensource/svgaplayer/i$k;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/opensource/svgaplayer/i$k;-><init>(Lcom/opensource/svgaplayer/i;Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1, v2, p3}, Lcom/opensource/svgaplayer/i$c;->b(Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method
