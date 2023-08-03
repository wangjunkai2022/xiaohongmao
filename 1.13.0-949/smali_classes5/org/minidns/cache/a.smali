.class public Lorg/minidns/cache/a;
.super Lorg/minidns/cache/c;
.source "ExtendedLruCache.java"


# static fields
.field static final synthetic h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0}, Lorg/minidns/cache/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/cache/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/cache/c;-><init>(IJ)V

    return-void
.end method

.method private final j(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;>;",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;",
            "Lorg/minidns/dnsname/DnsName;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/Record;

    .line 2
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4}, Lorg/minidns/cache/a;->l(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsname/DnsName;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/minidns/record/Record;->e()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1, p2}, Lorg/minidns/dnsmessage/DnsMessage$b;->x(Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 5
    iget-object v2, p2, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/minidns/dnsmessage/DnsMessage$b;->B(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 6
    invoke-virtual {v1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Lorg/minidns/dnsmessage/DnsMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 10
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final k(Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/Map<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/dnsmessage/DnsMessage;

    .line 3
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->a()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/minidns/dnsmessage/DnsMessage$b;->L(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lorg/minidns/dnsmessage/DnsMessage$b;->E(Z)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v2

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->t(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 8
    invoke-super {p0, v1, v0}, Lorg/minidns/cache/c;->e(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->m:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1, p3}, Lorg/minidns/cache/a;->j(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 3
    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1, p3}, Lorg/minidns/cache/a;->j(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 4
    invoke-direct {p0, p2, v0}, Lorg/minidns/cache/a;->k(Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Map;)V

    return-void
.end method

.method protected e(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lorg/minidns/cache/c;->e(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/minidns/cache/a;->j(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 4
    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->m:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/minidns/cache/a;->j(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 5
    iget-object v1, p2, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/minidns/cache/a;->j(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 6
    invoke-direct {p0, p2, v0}, Lorg/minidns/cache/a;->k(Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Map;)V

    return-void
.end method

.method protected l(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsname/DnsName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;",
            "Lorg/minidns/dnsmessage/a;",
            "Lorg/minidns/dnsname/DnsName;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object p2, p2, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p2}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p1, p3}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
