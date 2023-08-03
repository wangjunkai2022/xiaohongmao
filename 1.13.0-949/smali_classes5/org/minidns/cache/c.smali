.class public Lorg/minidns/cache/c;
.super Lorg/minidns/a;
.source "LruCache.java"


# instance fields
.field protected b:J

.field protected c:J

.field protected d:J

.field protected e:I

.field protected f:J

.field protected g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    .line 10
    invoke-direct {p0, v0}, Lorg/minidns/cache/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lorg/minidns/cache/c;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/minidns/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/minidns/cache/c;->b:J

    .line 3
    iput-wide v0, p0, Lorg/minidns/cache/c;->c:J

    .line 4
    iput-wide v0, p0, Lorg/minidns/cache/c;->d:J

    .line 5
    iput p1, p0, Lorg/minidns/cache/c;->e:I

    .line 6
    iput-wide p2, p0, Lorg/minidns/cache/c;->f:J

    .line 7
    new-instance p2, Lorg/minidns/cache/c$a;

    add-int/lit8 p3, p1, 0x3

    div-int/lit8 p3, p3, 0x4

    add-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x2

    const/16 v0, 0xb

    .line 8
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/minidns/cache/c$a;-><init>(Lorg/minidns/cache/c;IFZI)V

    iput-object p2, p0, Lorg/minidns/cache/c;->g:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method protected declared-synchronized b(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/minidns/cache/c;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-wide v4, p0, Lorg/minidns/cache/c;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/minidns/cache/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lorg/minidns/cache/c;->f:J

    .line 5
    iget-object v6, v0, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    .line 6
    iget-wide v7, v7, Lorg/minidns/record/Record;->e:J

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v6, v0, Lorg/minidns/dnsmessage/DnsMessage;->q:J

    const-wide/16 v8, 0x3e8

    mul-long v4, v4, v8

    add-long/2addr v6, v4

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    .line 9
    iget-wide v4, p0, Lorg/minidns/cache/c;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/minidns/cache/c;->b:J

    .line 10
    iget-wide v4, p0, Lorg/minidns/cache/c;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/minidns/cache/c;->c:J

    .line 11
    iget-object v0, p0, Lorg/minidns/cache/c;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-object v1

    .line 13
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lorg/minidns/cache/c;->d:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/minidns/cache/c;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized e(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p2, Lorg/minidns/dnsmessage/DnsMessage;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/minidns/cache/c;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/minidns/cache/c;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/minidns/cache/c;->b:J

    .line 3
    iput-wide v0, p0, Lorg/minidns/cache/c;->d:J

    .line 4
    iput-wide v0, p0, Lorg/minidns/cache/c;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lorg/minidns/cache/c;->c:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lorg/minidns/cache/c;->d:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lorg/minidns/cache/c;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LRUCache{usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/cache/c;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/cache/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/cache/c;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/cache/c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/cache/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
