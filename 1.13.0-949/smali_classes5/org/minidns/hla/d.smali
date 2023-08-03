.class public Lorg/minidns/hla/d;
.super Lorg/minidns/hla/c;
.source "SrvResolverResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/hla/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/minidns/hla/c<",
        "Lorg/minidns/record/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lorg/minidns/hla/b;

.field private final j:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/hla/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/minidns/hla/c;Lorg/minidns/hla/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/u;",
            ">;",
            "Lorg/minidns/hla/b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/MiniDnsException$NullResultException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/minidns/hla/c;->a:Lorg/minidns/dnsmessage/a;

    iget-object v1, p1, Lorg/minidns/hla/c;->f:Lorg/minidns/dnsmessage/DnsMessage;

    iget-object p1, p1, Lorg/minidns/hla/c;->e:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lorg/minidns/hla/c;-><init>(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Set;)V

    .line 2
    iput-object p2, p0, Lorg/minidns/hla/d;->i:Lorg/minidns/hla/b;

    .line 3
    invoke-virtual {p2}, Lorg/minidns/hla/b;->a()Lorg/minidns/AbstractDnsClient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/minidns/AbstractDnsClient;->k()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/hla/d;->j:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-void
.end method


# virtual methods
.method public n()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/hla/d$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/hla/d;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/hla/c;->l()V

    .line 3
    invoke-virtual {p0}, Lorg/minidns/hla/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/util/j;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/minidns/record/u;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lorg/minidns/hla/d;->j:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v3, v3, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 8
    iget-object v3, p0, Lorg/minidns/hla/d;->i:Lorg/minidns/hla/b;

    iget-object v6, v5, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    const-class v7, Lorg/minidns/record/a;

    invoke-virtual {v3, v6, v7}, Lorg/minidns/hla/b;->d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lorg/minidns/hla/c;->m()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lorg/minidns/hla/c;->i()Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-virtual {v3}, Lorg/minidns/hla/c;->a()Ljava/util/Set;

    move-result-object v2

    :cond_1
    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v7, v4

    .line 11
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 12
    iget-object v6, p0, Lorg/minidns/hla/d;->j:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v6, v6, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v6, :cond_3

    .line 13
    iget-object v4, p0, Lorg/minidns/hla/d;->i:Lorg/minidns/hla/b;

    iget-object v6, v5, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    const-class v8, Lorg/minidns/record/b;

    invoke-virtual {v4, v6, v8}, Lorg/minidns/hla/b;->d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Lorg/minidns/hla/c;->m()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lorg/minidns/hla/c;->i()Z

    move-result v6

    if-nez v6, :cond_3

    .line 15
    invoke-virtual {v4}, Lorg/minidns/hla/c;->a()Ljava/util/Set;

    move-result-object v3

    :cond_3
    move-object v8, v4

    .line 16
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    add-int/2addr v4, v9

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    sget-object v4, Lorg/minidns/hla/d$a;->a:[I

    iget-object v9, p0, Lorg/minidns/hla/d;->j:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v4, v4, v9

    const/4 v9, 0x1

    if-eq v4, v9, :cond_8

    const/4 v9, 0x2

    if-eq v4, v9, :cond_7

    const/4 v9, 0x3

    if-eq v4, v9, :cond_6

    const/4 v9, 0x4

    if-eq v4, v9, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 21
    :cond_6
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 23
    :cond_7
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 24
    :cond_8
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_2
    new-instance v2, Lorg/minidns/hla/d$b;

    iget-object v3, p0, Lorg/minidns/hla/c;->a:Lorg/minidns/dnsmessage/a;

    iget-object v4, v3, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/minidns/hla/d$b;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/u;Ljava/util/List;Lorg/minidns/hla/c;Lorg/minidns/hla/c;Lorg/minidns/hla/d$a;)V

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 27
    :cond_9
    iput-object v1, p0, Lorg/minidns/hla/d;->k:Ljava/util/List;

    return-object v1
.end method
