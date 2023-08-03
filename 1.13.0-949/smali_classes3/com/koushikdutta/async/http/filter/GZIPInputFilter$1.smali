.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic d:Lcom/koushikdutta/async/PushParser;

.field final synthetic e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e()V

    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->f(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->j:Z

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    new-instance v0, Lcom/koushikdutta/async/PushParser;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 3
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v4, v1}, Lcom/koushikdutta/async/PushParser;->t(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;

    return-void

    :cond_0
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v4, v1}, Lcom/koushikdutta/async/PushParser;->t(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->f([B)V

    return-void
.end method

.method public f([B)V
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->w0([BILjava/nio/ByteOrder;)S

    move-result v0

    const/4 v2, 0x1

    const/16 v3, -0x74e1

    if-eq v0, v3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "unknown format (magic number %x)"

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->v0(Ljava/lang/Exception;)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 4
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->k:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 7
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    new-instance v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {p1, v3, v0}, Lcom/koushikdutta/async/PushParser;->f(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e()V

    :goto_1
    return-void
.end method
