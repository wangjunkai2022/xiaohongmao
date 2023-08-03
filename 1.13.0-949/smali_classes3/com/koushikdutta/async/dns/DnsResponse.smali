.class public Lcom/koushikdutta/async/dns/DnsResponse;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/koushikdutta/async/http/Multimap;

.field public d:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->c:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method

.method public static a(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->A(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 4
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 5
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 6
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v2

    .line 8
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v3

    .line 9
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 10
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 12
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/dns/DnsResponse;

    invoke-direct {v1}, Lcom/koushikdutta/async/dns/DnsResponse;-><init>()V

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x10

    if-ge v6, v2, :cond_4

    .line 14
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v8

    .line 16
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->s()I

    .line 18
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    .line 19
    :try_start_0
    new-array v7, v9, [B

    .line 20
    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    .line 21
    iget-object v8, v1, Lcom/koushikdutta/async/dns/DnsResponse;->a:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/16 v10, 0xc

    if-ne v8, v10, :cond_2

    .line 22
    iget-object v7, v1, Lcom/koushikdutta/async/dns/DnsResponse;->b:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-ne v8, v7, :cond_3

    .line 23
    new-instance v7, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v7}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 24
    invoke-virtual {p0, v7, v9}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 25
    invoke-virtual {v1, v7}, Lcom/koushikdutta/async/dns/DnsResponse;->c(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_2

    .line 26
    :cond_3
    new-array v7, v9, [B

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_5

    .line 27
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 29
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->s()I

    .line 31
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v6

    .line 32
    :try_start_1
    new-array v6, v6, [B

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v5, v4, :cond_7

    .line 33
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v2

    .line 35
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    .line 36
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->s()I

    .line 37
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->v()S

    move-result v3

    if-ne v2, v7, :cond_6

    .line 38
    :try_start_2
    new-instance v2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 39
    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 40
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/dns/DnsResponse;->c(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_5

    .line 41
    :cond_6
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    return-object v1
.end method

.method private static b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->A(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_3

    and-int/lit16 v2, v1, 0xc0

    const-string v3, "."

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x8

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->h()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 8
    new-array p0, p0, [B

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lcom/koushikdutta/async/dns/DnsResponse;->b(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    new-array v1, v1, [B

    .line 12
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method c(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    new-array v0, v0, [B

    .line 4
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "="

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/koushikdutta/async/dns/DnsResponse;->c:Lcom/koushikdutta/async/http/Multimap;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "addresses:\n"

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "names:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/dns/DnsResponse;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method
