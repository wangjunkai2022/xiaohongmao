.class final Lcom/koushikdutta/async/http/cache/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final w:Ljava/lang/String; = "X-Android-Sent-Millis"

.field private static final x:Ljava/lang/String; = "X-Android-Received-Millis"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    .line 4
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->s:J

    .line 7
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    .line 8
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 9
    new-instance p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->n()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 11
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->h(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->m(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cache-Control"

    .line 13
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14
    invoke-static {v3, p1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V

    goto/16 :goto_2

    :cond_0
    const-string v4, "Date"

    .line 15
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-static {v3}, Lcom/koushikdutta/async/http/HttpDate;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    goto/16 :goto_2

    :cond_1
    const-string v4, "Expires"

    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    invoke-static {v3}, Lcom/koushikdutta/async/http/HttpDate;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    goto/16 :goto_2

    :cond_2
    const-string v4, "Last-Modified"

    .line 19
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    invoke-static {v3}, Lcom/koushikdutta/async/http/HttpDate;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    goto/16 :goto_2

    :cond_3
    const-string v4, "ETag"

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v4, "Pragma"

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "no-cache"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    goto/16 :goto_2

    :cond_5
    const-string v4, "Age"

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 27
    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/HeaderParser;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    goto/16 :goto_2

    :cond_6
    const-string v4, "Vary"

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 29
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 30
    new-instance v2, Ljava/util/TreeSet;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    :cond_7
    const-string v2, ","

    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_10

    aget-object v5, v2, v4

    .line 32
    iget-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const-string v4, "Content-Encoding"

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 34
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->q:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v4, "Transfer-Encoding"

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 36
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->r:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v4, "Content-Length"

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 38
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->s:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_b
    const-string v4, "Connection"

    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 40
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->t:Ljava/lang/String;

    goto :goto_2

    :cond_c
    const-string v4, "Proxy-Authenticate"

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 42
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->u:Ljava/lang/String;

    goto :goto_2

    :cond_d
    const-string v4, "WWW-Authenticate"

    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 44
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->v:Ljava/lang/String;

    goto :goto_2

    :cond_e
    const-string v4, "X-Android-Sent-Millis"

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 46
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    goto :goto_2

    :cond_f
    const-string v4, "X-Android-Received-Millis"

    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 48
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    :catch_0
    :cond_10
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private static D(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E()Z
    .locals 2

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    return p1
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    return p1
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->l:Z

    return p1
.end method

.method static synthetic f(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    return p1
.end method

.method private i(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    .line 4
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 5
    :cond_1
    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    iget-wide v5, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    sub-long v5, v3, v5

    sub-long/2addr p1, v3

    add-long/2addr v1, v5

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private j()J
    .locals 7

    .line 1
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    move-wide v1, v5

    :cond_2
    return-wide v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    .line 9
    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method


# virtual methods
.method public A(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->j()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->l:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->i:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->r:Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->q:Ljava/lang/String;

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->i:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->l:Z

    return v0
.end method

.method public J(JJ)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Android-Sent-Millis"

    invoke-virtual {v0, p2, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-wide p3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-Android-Received-Millis"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public K()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->q:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->p(Ljava/lang/String;)V

    return-void
.end method

.method public L(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->j()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public M(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/koushikdutta/async/http/cache/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public g(JLcom/koushikdutta/async/http/cache/RequestHeaders;)Lcom/koushikdutta/async/http/cache/ResponseSource;
    .locals 8

    .line 1
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->A(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->z()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->i(J)J

    move-result-wide p1

    .line 5
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j()J

    move-result-wide v0

    .line 6
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 10
    :cond_2
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q()I

    move-result v2

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_3

    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    goto :goto_0

    :cond_3
    move-wide v6, v4

    .line 12
    :goto_0
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    if-nez v2, :cond_4

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 14
    :cond_4
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    if-nez v2, :cond_7

    add-long/2addr v6, p1

    add-long/2addr v4, v0

    cmp-long v2, v6, v4

    if-gez v2, :cond_7

    const-string p3, "Warning"

    cmp-long v2, v6, v0

    if-ltz v2, :cond_5

    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, p3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-wide/32 v0, 0x5265c00

    cmp-long v2, p1, v0

    if-lez v2, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->E()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string p2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_6
    sget-object p1, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object p1

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->n:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->I(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_8
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz p1, :cond_9

    .line 22
    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->H(Ljava/util/Date;)V

    goto :goto_1

    .line 23
    :cond_9
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->H(Ljava/util/Date;)V

    .line 25
    :cond_a
    :goto_1
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->w()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    goto :goto_2

    :cond_b
    sget-object p1, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    :goto_2
    return-object p1

    .line 26
    :cond_c
    :goto_3
    sget-object p1, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object p1
.end method

.method public h(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .locals 6

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->n()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->h(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->m(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Warning"

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v5, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 7
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_2
    iget-object v2, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->n()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 9
    iget-object v2, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->h(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    iget-object v3, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_5
    new-instance p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    invoke-direct {p1, v1, v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->t:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->q:Ljava/lang/String;

    return-object v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->s:J

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    return-object v0
.end method

.method public p()Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method public q()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    return v0
.end method

.method public u()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    return-object v0
.end method

.method public v()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public w()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->v:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->t:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
