.class public final Lcom/im/freechat/utils/g;
.super Ljava/lang/Object;
.source "FileUtility.kt"

# interfaces
.implements Lcom/im/freechat/domain/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/utils/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUtility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtility.kt\ncom/im/freechat/utils/FileUtility\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,462:1\n1#2:463\n29#3:464\n29#3:465\n29#3:466\n29#3:467\n*S KotlinDebug\n*F\n+ 1 FileUtility.kt\ncom/im/freechat/utils/FileUtility\n*L\n215#1:464\n239#1:465\n262#1:466\n326#1:467\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020\t\u0012\u0006\u0010/\u001a\u00020-\u00a2\u0006\u0004\u00080\u00101J\u000e\u0010\u0004\u001a\u00020\u0003*\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J-\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0002H\u0016J\u0012\u0010 \u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0017J<\u0010&\u001a\u00020\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0016J&\u0010)\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#J\u0012\u0010*\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010,\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010+R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010.\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00062"
    }
    d2 = {
        "Lcom/im/freechat/utils/g;",
        "Lcom/im/freechat/domain/h;",
        "",
        "",
        "k",
        "Landroid/net/Uri;",
        "initialUri",
        "extension",
        "j",
        "Landroid/content/ContentResolver;",
        "resolver",
        "uri",
        "l",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "attachment",
        "h",
        "",
        "messageId",
        "tempId",
        "c",
        "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initialUriString",
        "Lcom/im/freechat/shared/entities/message/ChosenAttachment;",
        "f",
        "uriString",
        "Lcom/im/freechat/shared/entities/FileInfo;",
        "e",
        "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;",
        "b",
        "path",
        "Ljava/io/File;",
        "a",
        "g",
        "file",
        "name",
        "",
        "maxWidth",
        "maxHeight",
        "i",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "m",
        "d",
        "Landroid/content/ContentResolver;",
        "contentResolver",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "appContext",
        "<init>",
        "(Landroid/content/ContentResolver;Landroid/content/Context;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/utils/g;->a:Landroid/content/ContentResolver;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/utils/g;->b:Landroid/content/Context;

    return-void
.end method

.method private final j(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/g;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/im/freechat/utils/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/im/freechat/extend/r;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {p2, v1, v2, v0}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "inputStream?.source().us\u2026h\n            }\n        }"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 9
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    .line 10
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final k(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "image"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gif"

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final l(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 1
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "_display_name"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v6, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw p2

    :catch_0
    move-object p1, v6

    :catch_1
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v6
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 3
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attachment original: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/im/freechat/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compressed_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/rudresh/videocompression/videocompression/e;->c()Lcom/rudresh/videocompression/videocompression/e;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/rudresh/videocompression/videocompression/QualityPreset;->MEDIUM:Lcom/rudresh/videocompression/videocompression/QualityPreset;

    invoke-virtual {v3, v0, v1, v5}, Lcom/rudresh/videocompression/videocompression/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/rudresh/videocompression/videocompression/QualityPreset;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compression success! Attachment compressed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Compression failed! Proceed with original video file."

    .line 7
    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "initialUriString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "voice"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;->AUDIO_FILE:Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "initialUri.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file:"

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {v0}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/im/freechat/utils/h;->a(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/im/freechat/utils/g;->a:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/im/freechat/utils/h;->a(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/message/Attachment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    .line 1
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/im/freechat/utils/g;->f(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;

    move-result-object v0

    .line 2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFileType()Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    move-result-object v4

    sget-object v5, Lcom/im/freechat/utils/g$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    const/16 v9, 0x9

    if-eq v4, v6, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilename()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 8
    invoke-static {v3}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 9
    new-instance v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    const/4 v9, 0x0

    move-object v3, v0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v13}, Lcom/im/freechat/shared/entities/message/FileAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_5

    .line 10
    :cond_2
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 11
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-virtual {v3, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 14
    :cond_3
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 15
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V

    long-to-int v14, v4

    .line 16
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilePath()Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilename()Ljava/lang/String;

    move-result-object v13

    .line 18
    new-instance v0, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    const/4 v12, 0x0

    move-object v6, v0

    move-wide/from16 v7, p4

    move-wide/from16 v9, p1

    invoke-direct/range {v6 .. v14}, Lcom/im/freechat/shared/entities/message/AudioAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 19
    :cond_4
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    .line 22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 23
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const-string v13, "jpg"

    const/16 v14, 0x400

    .line 24
    invoke-virtual {v1, v6, v13, v14, v14}, Lcom/im/freechat/utils/g;->m(Landroid/graphics/Bitmap;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 25
    :goto_1
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-virtual {v4, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 27
    :cond_6
    invoke-virtual {v13, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    .line 28
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V

    long-to-int v4, v7

    .line 29
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v10, 0x1

    :cond_7
    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v28, v5

    goto :goto_3

    :cond_9
    const/16 v28, 0x1

    .line 30
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    if-eqz v6, :cond_a

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    goto :goto_4

    :cond_a
    move-object/from16 v25, v2

    .line 32
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 33
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilename()Ljava/lang/String;

    move-result-object v20

    .line 34
    invoke-static {v3}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    .line 35
    new-instance v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    const/16 v19, 0x0

    .line 36
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v22

    .line 37
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    move-object v13, v0

    move-wide/from16 v14, p4

    move-wide/from16 v16, p1

    .line 38
    invoke-direct/range {v13 .. v28}, Lcom/im/freechat/shared/entities/message/VideoAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_5

    .line 39
    :cond_b
    invoke-static {v3}, Lcom/im/freechat/extend/m;->k(Ljava/io/File;)Landroid/util/Size;

    move-result-object v4

    .line 40
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilePath()Ljava/lang/String;

    move-result-object v10

    .line 41
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;->getFilename()Ljava/lang/String;

    move-result-object v12

    .line 42
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v17

    .line 43
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v16

    .line 44
    invoke-static {v3}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 45
    new-instance v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    move-wide/from16 v6, p4

    move-wide/from16 v8, p1

    invoke-direct/range {v5 .. v17}, Lcom/im/freechat/shared/entities/message/ImageAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-object v0

    :catch_0
    move-exception v0

    .line 46
    sget-object v3, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v3, v0}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempfile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/im/freechat/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "File(appContext.cacheDir, name).absolutePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/im/freechat/shared/entities/FileInfo;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v1, "parse(this)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/im/freechat/utils/g;->a:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "mime_type"

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "_display_name"

    .line 5
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "_size"

    .line 6
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 9
    :try_start_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "cursor.getString(mimeColumnIndex)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const-string v2, "name"

    .line 10
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v7, "3gp"

    invoke-static {v4, v7, v3, v2, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "video/3gp"

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 11
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12
    new-instance v0, Lcom/im/freechat/shared/entities/FileInfo;

    invoke-direct {v0, p1, v2, v5, v6}, Lcom/im/freechat/shared/entities/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "initialUriString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/im/freechat/utils/g;->b(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    move-result-object v1

    const-string v2, "file:"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 3
    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const-string v2, ""

    const-string v3, "."

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file.name"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/im/freechat/utils/g;->a:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lcom/im/freechat/utils/g;->a:Landroid/content/ContentResolver;

    invoke-direct {p0, v4, v0}, Lcom/im/freechat/utils/g;->l(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 11
    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    .line 12
    new-instance p1, Ljava/io/File;

    invoke-direct {p0, v0, v2}, Lcom/im/freechat/utils/g;->j(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 13
    :goto_0
    new-instance v3, Lcom/im/freechat/shared/entities/message/ChosenAttachment;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v4, "outputFile.absolutePath"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/im/freechat/shared/entities/message/ChosenAttachment;-><init>(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "uriString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "parse(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/im/freechat/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const-string v1, "fileExtension"

    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/shared/entities/message/Attachment;
    .locals 29
    .param p1    # Lcom/im/freechat/shared/entities/message/Attachment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "file.name"

    const-string v1, "attachment"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, v9, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x2

    const/16 v13, 0x2e

    invoke-static {v2, v13, v10, v12, v10}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    move-object v1, v9

    check-cast v1, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0x80

    const/16 v7, 0x80

    move-object/from16 v1, p0

    move-object v2, v11

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/im/freechat/utils/g;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v13, v10, v12, v10}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    move-object v0, v9

    check-cast v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0x500

    const/16 v7, 0x500

    move-object/from16 v1, p0

    move-object v2, v11

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/im/freechat/utils/g;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 11
    move-object v14, v9

    check-cast v14, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x37b

    const/16 v28, 0x0

    invoke-static/range {v14 .. v28}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->copy$default(Lcom/im/freechat/shared/entities/message/ImageAttachment;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/ImageAttachment;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 13
    :cond_0
    instance-of v0, v9, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v0, :cond_4

    .line 14
    :try_start_1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Lcom/im/freechat/utils/g;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const-string v5, "jpg"

    const/16 v6, 0x400

    .line 20
    invoke-virtual {v8, v2, v5, v6, v6}, Lcom/im/freechat/utils/g;->m(Landroid/graphics/Bitmap;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    .line 22
    move-object v11, v9

    check-cast v11, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v10, :cond_2

    .line 23
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v9

    check-cast v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object/from16 v23, v0

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x93b

    const/16 v28, 0x0

    .line 28
    invoke-static/range {v11 .. v28}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->copy$default(Lcom/im/freechat/shared/entities/message/VideoAttachment;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v9
.end method

.method public i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;
    .locals 7
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "parse(uri)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/im/freechat/utils/g;->j(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p4, 0x1

    .line 3
    iput-boolean p4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    invoke-static {p2, p6, p5}, Lcom/im/freechat/extend/f;->f(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p4

    iput p4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p4, 0x0

    .line 6
    iput-boolean p4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p2, p2, v1

    int-to-float p5, p5

    div-float/2addr p2, p5

    int-to-float p4, p4

    mul-float p4, p4, v1

    int-to-float p5, p6

    div-float/2addr p4, p5

    .line 10
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 11
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v1, p2

    .line 12
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 13
    invoke-static {p1}, Lcom/im/freechat/extend/m;->w(Ljava/io/File;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lcom/im/freechat/utils/g;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".webp"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Ljava/io/FileOutputStream;

    .line 18
    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p3, p2}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p3

    const/4 p4, 0x0

    .line 19
    :try_start_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x1e

    if-lt p5, p6, :cond_2

    .line 20
    sget-object p5, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_2
    sget-object p5, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 p6, 0x64

    .line 21
    invoke-virtual {p1, p5, p6, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {p3, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final m(Landroid/graphics/Bitmap;Ljava/lang/String;II)Ljava/io/File;
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float p3, p3

    div-float/2addr v0, p3

    int-to-float p3, v1

    mul-float p3, p3, v2

    int-to-float p4, p4

    div-float/2addr p3, p4

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 p4, 0x1

    int-to-float p4, p4

    div-float/2addr p4, p3

    .line 5
    invoke-virtual {v5, p4, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 8
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/im/freechat/utils/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    .line 10
    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, p3}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 11
    :try_start_0
    invoke-static {p3}, Lcom/im/freechat/extend/m;->a(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p4

    const/16 v0, 0x64

    invoke-virtual {p1, p4, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 14
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method
