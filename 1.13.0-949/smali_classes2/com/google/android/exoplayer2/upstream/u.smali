.class public Lcom/google/android/exoplayer2/upstream/u;
.super Lcom/google/android/exoplayer2/upstream/f;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/u$b;
    }
.end annotation


# static fields
.field public static final t:I = 0x1f40

.field public static final u:I = 0x1f40

.field private static final v:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final w:I = 0x14

.field private static final x:I = 0x133

.field private static final y:I = 0x134

.field private static final z:J = 0x800L


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private l:Lcom/google/common/base/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/upstream/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Z

.field private q:I

.field private r:J

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1f40

    .line 2
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    .line 3
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/b0;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/b0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/common/base/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;",
            "Lcom/google/common/base/b0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u;->i:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/u;->g:I

    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/u;->h:I

    .line 10
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/u;->f:Z

    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/u;->j:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    .line 12
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/u;->l:Lcom/google/common/base/b0;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u;->k:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/b0;Lcom/google/android/exoplayer2/upstream/u$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/b0;)V

    return-void
.end method

.method private A(Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/HttpURLConnection;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/o;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget v2, v0, Lcom/google/android/exoplayer2/upstream/o;->c:I

    .line 3
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/o;->d:[B

    .line 4
    iget-wide v14, v0, Lcom/google/android/exoplayer2/upstream/o;->g:J

    .line 5
    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/o;->h:J

    const/4 v10, 0x1

    .line 6
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/upstream/o;->d(I)Z

    move-result v16

    move-object/from16 v11, p0

    .line 7
    iget-boolean v4, v11, Lcom/google/android/exoplayer2/upstream/u;->f:Z

    if-nez v4, :cond_0

    const/4 v9, 0x1

    .line 8
    iget-object v10, v0, Lcom/google/android/exoplayer2/upstream/o;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/u;->B(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v8, v4, 0x1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_6

    const/16 v17, 0x0

    .line 9
    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/o;->e:Ljava/util/Map;

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move v0, v8

    move-object/from16 v18, v9

    move-wide v8, v14

    move-object/from16 v19, v3

    const/4 v3, 0x1

    move-wide v10, v12

    move-wide/from16 v20, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v22, v14

    move-object/from16 v14, v18

    .line 10
    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/upstream/u;->B(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string v6, "Location"

    .line 12
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12f

    const/16 v8, 0x12e

    const/16 v9, 0x12d

    const/16 v10, 0x12c

    if-eq v2, v3, :cond_1

    const/4 v11, 0x3

    if-ne v2, v11, :cond_2

    :cond_1
    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_5

    const/16 v11, 0x133

    if-eq v5, v11, :cond_5

    const/16 v11, 0x134

    if-ne v5, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x2

    if-ne v2, v11, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_3

    if-ne v5, v7, :cond_4

    .line 13
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/upstream/u;->y(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    return-object v4

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/upstream/u;->y(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_2
    move-object/from16 v11, p0

    move v4, v0

    move-object/from16 v3, v19

    move-wide/from16 v12, v20

    move-wide/from16 v14, v22

    const/4 v10, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    :cond_6
    move v0, v8

    .line 17
    new-instance v1, Ljava/net/NoRouteToHostException;

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many redirects: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private B(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/u;->D(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/u;->g:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/u;->h:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/u;->j:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/u;->k:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p4, p5, p6, p7}, Lcom/google/android/exoplayer2/upstream/d0;->a(JJ)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    const-string p5, "Range"

    .line 12
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/u;->i:Ljava/lang/String;

    if-eqz p4, :cond_3

    const-string p5, "User-Agent"

    .line 14
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p8, :cond_4

    const-string p4, "gzip"

    goto :goto_1

    :cond_4
    const-string p4, "identity"

    :goto_1
    const-string p5, "Accept-Encoding"

    .line 15
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_5

    const/4 p4, 0x1

    goto :goto_2

    :cond_5
    const/4 p4, 0x0

    .line 17
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 18
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/o;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 19
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 23
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static C(Ljava/net/HttpURLConnection;J)V
    .locals 3
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_4

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method private E([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/u;->r:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/u;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    int-to-long v2, p3

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_3

    return v4

    .line 5
    :cond_3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/u;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/u;->s:J

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->t(I)V

    return p1
.end method

.method private G(J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/16 v3, 0x1000

    new-array v4, v3, [B

    :goto_0
    cmp-long v5, p1, v1

    if-lez v5, :cond_3

    int-to-long v5, v3

    .line 1
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 2
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    return v7

    :cond_1
    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 4
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/upstream/f;->t(I)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_3
    return v0
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method private static y(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static z(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gzip"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method D(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public F(Lcom/google/common/base/b0;)V
    .locals 0
    .param p1    # Lcom/google/common/base/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/b0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u;->l:Lcom/google/common/base/b0;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    const-string v2, "Unable to connect"

    .line 1
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/u;->m:Lcom/google/android/exoplayer2/upstream/o;

    const-wide/16 v3, 0x0

    .line 2
    iput-wide v3, v1, Lcom/google/android/exoplayer2/upstream/u;->s:J

    .line 3
    iput-wide v3, v1, Lcom/google/android/exoplayer2/upstream/u;->r:J

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->v(Lcom/google/android/exoplayer2/upstream/o;)V

    const/4 v5, 0x1

    .line 5
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/u;->A(Lcom/google/android/exoplayer2/upstream/o;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, v1, Lcom/google/android/exoplayer2/upstream/u;->q:I

    .line 7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 8
    iget v2, v1, Lcom/google/android/exoplayer2/upstream/u;->q:I

    const/4 v8, 0x0

    const-string v9, "Content-Range"

    const/16 v10, 0xc8

    const-wide/16 v11, -0x1

    if-lt v2, v10, :cond_9

    const/16 v13, 0x12b

    if-le v2, v13, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/u;->l:Lcom/google/common/base/b0;

    if-eqz v7, :cond_2

    invoke-interface {v7, v2}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v2, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;)V

    throw v0

    .line 13
    :cond_2
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer2/upstream/u;->q:I

    if-ne v2, v10, :cond_3

    iget-wide v13, v6, Lcom/google/android/exoplayer2/upstream/o;->g:J

    cmp-long v2, v13, v3

    if-eqz v2, :cond_3

    move-wide v3, v13

    .line 14
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/u;->z(Ljava/net/HttpURLConnection;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    iget-wide v13, v6, Lcom/google/android/exoplayer2/upstream/o;->h:J

    cmp-long v7, v13, v11

    if-eqz v7, :cond_4

    .line 16
    iput-wide v13, v1, Lcom/google/android/exoplayer2/upstream/u;->r:J

    goto :goto_1

    :cond_4
    const-string v7, "Content-Length"

    .line 17
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-static {v7, v9}, Lcom/google/android/exoplayer2/upstream/d0;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v9, v11

    if-eqz v7, :cond_5

    sub-long v11, v9, v3

    .line 20
    :cond_5
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/u;->r:J

    goto :goto_1

    .line 21
    :cond_6
    iget-wide v9, v6, Lcom/google/android/exoplayer2/upstream/o;->h:J

    iput-wide v9, v1, Lcom/google/android/exoplayer2/upstream/u;->r:J

    .line 22
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    if-eqz v2, :cond_7

    .line 23
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 24
    :cond_7
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/upstream/u;->p:Z

    .line 25
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->w(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 26
    :try_start_3
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/u;->G(J)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_8

    .line 27
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/u;->r:J

    return-wide v2

    .line 28
    :cond_8
    :try_start_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 30
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v2, v0, v6, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V

    throw v2

    :catch_1
    move-exception v0

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 32
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v2, v0, v6, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V

    throw v2

    .line 33
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 34
    iget v2, v1, Lcom/google/android/exoplayer2/upstream/u;->q:I

    const/16 v13, 0x1a0

    if-ne v2, v13, :cond_b

    .line 35
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/d0;->c(Ljava/lang/String;)J

    move-result-wide v14

    .line 36
    iget-wide v3, v6, Lcom/google/android/exoplayer2/upstream/o;->g:J

    cmp-long v2, v3, v14

    if-nez v2, :cond_b

    .line 37
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/upstream/u;->p:Z

    .line 38
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->w(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 39
    iget-wide v2, v6, Lcom/google/android/exoplayer2/upstream/o;->h:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_a

    move-wide v3, v2

    goto :goto_3

    :cond_a
    const-wide/16 v3, 0x0

    :goto_3
    return-wide v3

    .line 40
    :cond_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 41
    :try_start_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->r1(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/google/android/exoplayer2/util/z0;->f:[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 42
    :catch_2
    sget-object v0, Lcom/google/android/exoplayer2/util/z0;->f:[B

    .line 43
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 44
    new-instance v9, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v1, Lcom/google/android/exoplayer2/upstream/u;->q:I

    move-object v2, v9

    move-object v4, v7

    move-object v5, v10

    move-object/from16 v6, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/o;[B)V

    .line 45
    iget v0, v1, Lcom/google/android/exoplayer2/upstream/u;->q:I

    if-ne v0, v13, :cond_d

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v9, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 47
    :cond_d
    throw v9

    :catch_3
    move-exception v0

    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 49
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v2, v0, v6, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V

    throw v3

    :catch_4
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 51
    invoke-static {v3}, Lcom/google/common/base/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cleartext http traffic.*not permitted.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 52
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v2, v0, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;)V

    throw v2

    .line 53
    :cond_e
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v2, v0, v6, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V

    throw v3
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 2
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/u;->r:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/u;->s:J

    sub-long v5, v3, v5

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/u;->C(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/u;->m:Lcom/google/android/exoplayer2/upstream/o;

    .line 6
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/o;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 9
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/u;->p:Z

    if-eqz v1, :cond_2

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/u;->p:Z

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->u()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/u;->o:Ljava/io/InputStream;

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/u;->x()V

    .line 14
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/u;->p:Z

    if-eqz v1, :cond_3

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/u;->p:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->u()V

    .line 17
    :cond_3
    throw v2
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->k:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/u;->q:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->k:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->k:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/u;->E([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/u;->m:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/upstream/o;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V

    throw p2
.end method
