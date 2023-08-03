.class public Lorg/minidns/iterative/ReliableDnsClient;
.super Lorg/minidns/AbstractDnsClient;
.source "ReliableDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/ReliableDnsClient$Mode;
    }
.end annotation


# instance fields
.field private final j:Lorg/minidns/iterative/a;

.field private final k:Lorg/minidns/b;

.field private l:Lorg/minidns/iterative/ReliableDnsClient$Mode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    sget-object v0, Lorg/minidns/AbstractDnsClient;->g:Lorg/minidns/cache/c;

    invoke-direct {p0, v0}, Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/a;)V

    .line 2
    sget-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveWithIterativeFallback:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->l:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 3
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$a;

    invoke-direct {v0, p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$a;-><init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/a;)V

    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->j:Lorg/minidns/iterative/a;

    .line 4
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$b;

    invoke-direct {v0, p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$b;-><init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/a;)V

    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->k:Lorg/minidns/b;

    return-void
.end method


# virtual methods
.method public F(Lorg/minidns/source/DnsDataSource;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/minidns/AbstractDnsClient;->F(Lorg/minidns/source/DnsDataSource;)V

    .line 2
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->j:Lorg/minidns/iterative/a;

    invoke-virtual {v0, p1}, Lorg/minidns/AbstractDnsClient;->F(Lorg/minidns/source/DnsDataSource;)V

    .line 3
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->k:Lorg/minidns/b;

    invoke-virtual {v0, p1}, Lorg/minidns/AbstractDnsClient;->F(Lorg/minidns/source/DnsDataSource;)V

    return-void
.end method

.method protected I(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public J(Lorg/minidns/iterative/ReliableDnsClient$Mode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/minidns/iterative/ReliableDnsClient;->l:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mode must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lorg/minidns/iterative/ReliableDnsClient;->I(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    return-object p1
.end method

.method protected t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/minidns/iterative/ReliableDnsClient;->l:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v2, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/minidns/iterative/ReliableDnsClient;->k:Lorg/minidns/b;

    invoke-virtual {v1, p1}, Lorg/minidns/b;->t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/minidns/iterative/ReliableDnsClient;->I(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v3

    .line 5
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 6
    :goto_2
    iget-object v2, p0, Lorg/minidns/iterative/ReliableDnsClient;->l:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v4, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    if-ne v2, v4, :cond_3

    return-object v3

    .line 7
    :cond_3
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 8
    sget-object v4, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/minidns/iterative/ReliableDnsClient;->l:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v6, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    if-eq v5, v6, :cond_7

    const-string v5, "Resolution fall back to iterative mode because: "

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " DnsClient did not return a response"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Response:\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_3
    invoke-virtual {v4, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "This should never been reached"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 15
    :cond_7
    :goto_4
    :try_start_2
    iget-object v1, p0, Lorg/minidns/iterative/ReliableDnsClient;->j:Lorg/minidns/iterative/a;

    invoke-virtual {v1, p1}, Lorg/minidns/iterative/a;->t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    if-nez v3, :cond_8

    .line 17
    invoke-static {v0}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    :cond_8
    return-object v3
.end method
