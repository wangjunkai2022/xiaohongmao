.class final Lcom/opensource/svgaplayer/i$h;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/i;->x(Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1\n*L\n1#1,566:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/opensource/svgaplayer/i$d;

.field final synthetic e:Lcom/opensource/svgaplayer/i$e;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    iput-object p2, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/i$h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/i$h;->d:Lcom/opensource/svgaplayer/i$d;

    iput-object p5, p0, Lcom/opensource/svgaplayer/i$h;->e:Lcom/opensource/svgaplayer/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, " from svga cachel file to entity end ================"

    const-string v1, "================ decode "

    const-string v2, "SVGAParser"

    .line 1
    :try_start_0
    sget-object v3, Lv4/c;->b:Lv4/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from svga cachel file to entity ================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/opensource/svgaplayer/SVGACache;->d:Lcom/opensource/svgaplayer/SVGACache;

    iget-object v6, p0, Lcom/opensource/svgaplayer/i$h;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/opensource/svgaplayer/SVGACache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v5}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    .line 3
    :try_start_1
    iget-object v6, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    invoke-static {v6, v4}, Lcom/opensource/svgaplayer/i;->l(Lcom/opensource/svgaplayer/i;Ljava/io/InputStream;)[B

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4
    iget-object v7, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    invoke-static {v7, v6}, Lcom/opensource/svgaplayer/i;->k(Lcom/opensource/svgaplayer/i;[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    iget-object v6, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    iget-object v7, p0, Lcom/opensource/svgaplayer/i$h;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/opensource/svgaplayer/i$h;->d:Lcom/opensource/svgaplayer/i$d;

    iget-object v9, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/opensource/svgaplayer/i;->a(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "inflate start"

    .line 6
    invoke-virtual {v3, v2, v7}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v7, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    invoke-static {v7, v6}, Lcom/opensource/svgaplayer/i;->h(Lcom/opensource/svgaplayer/i;[B)[B

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "inflate complete"

    .line 8
    invoke-virtual {v3, v2, v7}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v7, Lcom/opensource/svgaplayer/l;

    .line 10
    sget-object v8, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v6}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "MovieEntity.ADAPTER.decode(it)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 11
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/opensource/svgaplayer/i$h;->c:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v9, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    invoke-static {v9}, Lcom/opensource/svgaplayer/i;->d(Lcom/opensource/svgaplayer/i;)I

    move-result v9

    .line 13
    iget-object v10, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    invoke-static {v10}, Lcom/opensource/svgaplayer/i;->c(Lcom/opensource/svgaplayer/i;)I

    move-result v10

    .line 14
    invoke-direct {v7, v6, v8, v9, v10}, Lcom/opensource/svgaplayer/l;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    const-string v6, "SVGAVideoEntity prepare start"

    .line 15
    invoke-virtual {v3, v2, v6}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v6, Lcom/opensource/svgaplayer/i$h$a;

    invoke-direct {v6, v7, p0}, Lcom/opensource/svgaplayer/i$h$a;-><init>(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$h;)V

    .line 17
    iget-object v8, p0, Lcom/opensource/svgaplayer/i$h;->e:Lcom/opensource/svgaplayer/i$e;

    .line 18
    invoke-virtual {v7, v6, v8}, Lcom/opensource/svgaplayer/l;->w(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/i$e;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v6, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    .line 20
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "inflate(bytes) cause exception"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v8, p0, Lcom/opensource/svgaplayer/i$h;->d:Lcom/opensource/svgaplayer/i$d;

    .line 22
    iget-object v9, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    .line 23
    invoke-static {v6, v7, v8, v9}, Lcom/opensource/svgaplayer/i;->j(Lcom/opensource/svgaplayer/i;Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object v6, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    .line 25
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "readAsBytes(inputStream) cause exception"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v8, p0, Lcom/opensource/svgaplayer/i$h;->d:Lcom/opensource/svgaplayer/i$d;

    .line 27
    iget-object v9, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    .line 28
    invoke-static {v6, v7, v8, v9}, Lcom/opensource/svgaplayer/i;->j(Lcom/opensource/svgaplayer/i;Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    .line 29
    :goto_0
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 32
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 33
    :try_start_5
    iget-object v4, p0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    iget-object v5, p0, Lcom/opensource/svgaplayer/i$h;->d:Lcom/opensource/svgaplayer/i$d;

    iget-object v6, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    invoke-static {v4, v3, v5, v6}, Lcom/opensource/svgaplayer/i;->j(Lcom/opensource/svgaplayer/i;Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 34
    sget-object v3, Lv4/c;->b:Lv4/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    sget-object v4, Lv4/c;->b:Lv4/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method
