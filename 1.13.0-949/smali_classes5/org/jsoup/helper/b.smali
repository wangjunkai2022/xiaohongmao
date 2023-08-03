.class public final Lorg/jsoup/helper/b;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/nio/charset/Charset;

.field static final c:Ljava/lang/String;

.field private static final d:I = 0x1400

.field static final e:I = 0x8000

.field private static final f:[C

.field static final g:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/b;->b:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/b;->f:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    new-array v0, v0, [B

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/b$a;
    .locals 7
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    const/4 p0, 0x0

    aget-byte v0, v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v0, :cond_1

    aget-byte v0, v1, v6

    if-nez v0, :cond_1

    aget-byte v0, v1, v3

    if-ne v0, v4, :cond_1

    aget-byte v0, v1, v2

    if-eq v0, v5, :cond_2

    :cond_1
    aget-byte v0, v1, p0

    if-ne v0, v5, :cond_3

    aget-byte v0, v1, v6

    if-ne v0, v4, :cond_3

    aget-byte v0, v1, v3

    if-nez v0, :cond_3

    aget-byte v0, v1, v2

    if-nez v0, :cond_3

    .line 5
    :cond_2
    new-instance v0, Lorg/jsoup/helper/b$a;

    const-string v1, "UTF-32"

    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/b$a;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_3
    aget-byte v0, v1, p0

    if-ne v0, v4, :cond_4

    aget-byte v0, v1, v6

    if-eq v0, v5, :cond_5

    :cond_4
    aget-byte v0, v1, p0

    if-ne v0, v5, :cond_6

    aget-byte v0, v1, v6

    if-ne v0, v4, :cond_6

    .line 6
    :cond_5
    new-instance v0, Lorg/jsoup/helper/b$a;

    const-string v1, "UTF-16"

    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/b$a;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_6
    aget-byte p0, v1, p0

    const/16 v0, -0x11

    if-ne p0, v0, :cond_7

    aget-byte p0, v1, v6

    const/16 v0, -0x45

    if-ne p0, v0, :cond_7

    aget-byte p0, v1, v3

    const/16 v0, -0x41

    if-ne p0, v0, :cond_7

    .line 7
    new-instance p0, Lorg/jsoup/helper/b$a;

    const-string v0, "UTF-8"

    invoke-direct {p0, v0, v6}, Lorg/jsoup/helper/b$a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static c()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lorg/jsoup/helper/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "charset="

    const-string v1, ""

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/jsoup/helper/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/jsoup/parser/f;->c()Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/b;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gz"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x8b

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p0}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p0

    move-object v0, p0

    .line 7
    :cond_3
    :goto_1
    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/helper/b;->j(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 9
    throw p0
.end method

.method public static g(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/jsoup/parser/f;->c()Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/b;->j(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/b;->j(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method static i()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 3
    sget-object v3, Lorg/jsoup/helper/b;->f:[C

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static j(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 12
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "charset"

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lorg/jsoup/nodes/Document;

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const v1, 0x8000

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v1, v2}, Lorg/jsoup/internal/a;->h(Ljava/io/InputStream;II)Lorg/jsoup/internal/a;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const/16 v3, 0x13ff

    .line 4
    invoke-static {p0, v3}, Lorg/jsoup/helper/b;->k(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 7
    invoke-static {v3}, Lorg/jsoup/helper/b;->b(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/b$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 8
    invoke-static {v5}, Lorg/jsoup/helper/b$a;->a(Lorg/jsoup/helper/b$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    const/4 v7, 0x0

    if-nez p1, :cond_d

    .line 9
    :try_start_1
    sget-object v8, Lorg/jsoup/helper/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 11
    new-instance v8, Ljava/io/CharArrayReader;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v9

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    invoke-direct {v8, v9, v10, v3}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {p3, v8, p2}, Lorg/jsoup/parser/f;->l(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, p2}, Lorg/jsoup/parser/f;->m(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3
    :try_end_1
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    const-string v8, "meta[http-equiv=content-type], meta[charset]"

    .line 13
    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/g;->a2(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/g;

    const-string v11, "http-equiv"

    .line 15
    invoke-virtual {v10, v11}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v9, "content"

    .line 16
    invoke-virtual {v10, v9}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jsoup/helper/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_5
    if-nez v9, :cond_6

    .line 17
    invoke-virtual {v10, v0}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 18
    invoke-virtual {v10, v0}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    if-eqz v9, :cond_4

    :cond_7
    if-nez v9, :cond_a

    .line 19
    invoke-virtual {v3}, Lorg/jsoup/nodes/g;->o()I

    move-result v0

    if-lez v0, :cond_a

    .line 20
    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/k;->n(I)Lorg/jsoup/nodes/k;

    move-result-object v0

    .line 21
    instance-of v8, v0, Lorg/jsoup/nodes/o;

    if-eqz v8, :cond_8

    .line 22
    check-cast v0, Lorg/jsoup/nodes/o;

    goto :goto_2

    .line 23
    :cond_8
    instance-of v8, v0, Lorg/jsoup/nodes/d;

    if-eqz v8, :cond_9

    .line 24
    check-cast v0, Lorg/jsoup/nodes/d;

    .line 25
    invoke-virtual {v0}, Lorg/jsoup/nodes/d;->p0()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 26
    invoke-virtual {v0}, Lorg/jsoup/nodes/d;->m0()Lorg/jsoup/nodes/o;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {v0}, Lorg/jsoup/nodes/o;->p0()Ljava/lang/String;

    move-result-object v8

    const-string v10, "xml"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "encoding"

    .line 28
    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/o;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 29
    :cond_a
    invoke-static {v9}, Lorg/jsoup/helper/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 30
    sget-object v8, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\"\']"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    move-object v7, v3

    goto :goto_3

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_d
    const-string v0, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 33
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez v7, :cond_13

    if-nez p1, :cond_e

    .line 34
    sget-object p1, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    .line 35
    :cond_e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_10

    .line 36
    :try_start_3
    invoke-static {v5}, Lorg/jsoup/helper/b$a;->b(Lorg/jsoup/helper/b$a;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide/16 v3, 0x1

    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-nez v1, :cond_f

    const/4 v2, 0x1

    .line 38
    :cond_f
    invoke-static {v2}, Lorg/jsoup/helper/d;->d(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :cond_10
    :try_start_4
    invoke-virtual {p3, v0, p2}, Lorg/jsoup/parser/f;->l(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v7
    :try_end_4
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    :try_start_5
    sget-object p2, Lorg/jsoup/helper/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    sget-object p1, Lorg/jsoup/helper/b;->b:Ljava/nio/charset/Charset;

    goto :goto_4

    :cond_11
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 41
    :goto_4
    invoke-virtual {v7}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 42
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result p1

    if-nez p1, :cond_12

    .line 43
    sget-object p1, Lorg/jsoup/helper/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v7, p1}, Lorg/jsoup/nodes/Document;->w2(Ljava/nio/charset/Charset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 44
    :cond_12
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 45
    :try_start_7
    invoke-virtual {p1}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 46
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 47
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 48
    :cond_13
    :goto_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v7

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 49
    throw p1
.end method

.method public static k(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    .line 1
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    const v0, 0x8000

    .line 2
    invoke-static {p0, v0, p1}, Lorg/jsoup/internal/a;->h(Ljava/io/InputStream;II)Lorg/jsoup/internal/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/a;->b(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 4
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method
