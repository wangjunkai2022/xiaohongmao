.class public Lorg/minidns/dnssec/b;
.super Lorg/minidns/iterative/ReliableDnsClient;
.source "DnssecClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnssec/b$b;
    }
.end annotation


# static fields
.field private static final q:Ljava/math/BigInteger;

.field private static final r:Lorg/minidns/dnsname/DnsName;


# instance fields
.field private m:Lorg/minidns/dnssec/f;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/minidns/dnsname/DnsName;",
            "[B>;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Lorg/minidns/dnsname/DnsName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1628686155461064465348252249725010996177649738666492500572664444461532807739744536029771810659241049343994038053541290419968870563183856865780916376571550372513476957870843322273120879361960335192976656756972171258658400305760429696147778001233984421619267530978084631948434496468785021389956803104620471232008587410372348519229650742022804219634190734272506220018657920136902014393834092648785514548876370028925405557661759399901378816916683122474038734912535425670533237815676134840739565610963796427401855723026687073600445461090736240030247906095053875491225879656640052743394090544036297390104110989318819106653199917493"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/minidns/dnssec/b;->q:Ljava/math/BigInteger;

    const-string v0, "dlv.isc.org"

    .line 2
    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnssec/b;->r:Lorg/minidns/dnsname/DnsName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/AbstractDnsClient;->g:Lorg/minidns/cache/c;

    invoke-direct {p0, v0}, Lorg/minidns/dnssec/b;-><init>(Lorg/minidns/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/a;)V

    .line 3
    new-instance p1, Lorg/minidns/dnssec/f;

    invoke-direct {p1}, Lorg/minidns/dnssec/f;-><init>()V

    iput-object p1, p0, Lorg/minidns/dnssec/b;->m:Lorg/minidns/dnssec/f;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/minidns/dnssec/b;->n:Ljava/util/Map;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/minidns/dnssec/b;->o:Z

    .line 6
    sget-object p1, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    sget-object v0, Lorg/minidns/dnssec/b;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/minidns/dnssec/b;->K(Lorg/minidns/dnsname/DnsName;[B)V

    return-void
.end method

.method private N(Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Set;)Lorg/minidns/dnssec/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;)",
            "Lorg/minidns/dnssec/c;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/minidns/record/r;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    .line 2
    iget-object v2, p1, Lorg/minidns/dnsmessage/DnsMessage;->m:Ljava/util/List;

    .line 3
    iget-object v3, p1, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    .line 4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {v4, v0, v1}, Lorg/minidns/record/Record;->b(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 6
    invoke-static {v4, v0, v2}, Lorg/minidns/record/Record;->b(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 7
    invoke-static {v4, v0, v3}, Lorg/minidns/record/Record;->b(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 8
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->a()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    .line 9
    iget-boolean v0, p0, Lorg/minidns/dnssec/b;->o:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v1}, Lorg/minidns/dnssec/b;->X(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->C(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 11
    invoke-static {v2}, Lorg/minidns/dnssec/b;->X(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->I(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 12
    invoke-static {v3}, Lorg/minidns/dnssec/b;->X(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->B(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 13
    :cond_0
    new-instance v0, Lorg/minidns/dnssec/c;

    invoke-direct {v0, p1, v4, p2}, Lorg/minidns/dnssec/c;-><init>(Lorg/minidns/dnsmessage/DnsMessage$b;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private static Q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "\\."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length v0, p1

    array-length v2, p0

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x1

    .line 6
    :goto_0
    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 7
    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object v2, p1, v2

    array-length v4, p0

    sub-int/2addr v4, v0

    aget-object v4, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private S(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnssec/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-boolean p1, p2, Lorg/minidns/dnsmessage/DnsMessage;->i:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->a()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/minidns/dnsmessage/DnsMessage$b;->D(Z)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p2

    .line 3
    :cond_1
    invoke-direct {p0, p2}, Lorg/minidns/dnssec/b;->Y(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2, p1}, Lorg/minidns/dnssec/b;->N(Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Set;)Lorg/minidns/dnssec/c;

    move-result-object p1

    return-object p1
.end method

.method private static X(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    .line 4
    iget-object v2, v1, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

    if-eq v2, v3, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private Y(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/dnssec/b;->Z(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/minidns/dnssec/b;->a0(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private Z(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/a;

    .line 2
    iget-object v2, p1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->g()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, v2, p1}, Lorg/minidns/dnssec/b;->c0(Lorg/minidns/dnsmessage/a;Ljava/util/Collection;Ljava/util/List;)Lorg/minidns/dnssec/b$b;

    move-result-object v3

    .line 5
    iget-object v4, v3, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    .line 6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    .line 7
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    const-class v8, Lorg/minidns/record/f;

    invoke-virtual {v7, v8}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, v0, v7}, Lorg/minidns/dnssec/b;->b0(Lorg/minidns/dnsmessage/a;Lorg/minidns/record/Record;)Ljava/util/Set;

    move-result-object v7

    .line 11
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_1
    iget-boolean v7, v3, Lorg/minidns/dnssec/b$b;->b:Z

    if-nez v7, :cond_3

    .line 14
    sget-object v7, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    const-string v8, "SEP key is not self-signed."

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 16
    :cond_4
    iget-boolean v6, v3, Lorg/minidns/dnssec/b$b;->b:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 17
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_5
    iget-boolean v1, v3, Lorg/minidns/dnssec/b$b;->a:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v3, Lorg/minidns/dnssec/b$b;->b:Z

    if-nez v1, :cond_6

    .line 19
    new-instance v1, Lorg/minidns/dnssec/e$g;

    iget-object v3, v0, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v3, v3, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/minidns/dnssec/e$g;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 22
    new-instance p1, Lorg/minidns/dnssec/e$h;

    invoke-direct {p1, v0}, Lorg/minidns/dnssec/e$h;-><init>(Lorg/minidns/dnsmessage/a;)V

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_7
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v1, "Only some records are signed!"

    invoke-direct {p1, v0, v1}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/a;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-object v4
.end method

.method private a0(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->k:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/dnsmessage/a;

    .line 3
    iget-object v3, p1, Lorg/minidns/dnsmessage/DnsMessage;->m:Ljava/util/List;

    .line 4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/record/Record;

    .line 5
    iget-object v7, v6, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v8, Lorg/minidns/record/Record$TYPE;->SOA:Lorg/minidns/record/Record$TYPE;

    if-ne v7, v8, :cond_0

    .line 6
    iget-object v5, v6, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_b

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/Record;

    .line 8
    sget-object v9, Lorg/minidns/dnssec/b$a;->a:[I

    iget-object v10, v8, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v6, :cond_3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, p0, Lorg/minidns/dnssec/b;->m:Lorg/minidns/dnssec/f;

    invoke-virtual {v2, v5, v8, v1}, Lorg/minidns/dnssec/f;->j(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/e;

    move-result-object v2

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Lorg/minidns/dnssec/b;->m:Lorg/minidns/dnssec/f;

    invoke-virtual {v2, v8, v1}, Lorg/minidns/dnssec/f;->h(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/e;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v7, 0x1

    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v0, "Invalid NSEC!"

    invoke-direct {p1, v1, v0}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/a;Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->h()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-direct {p0, v1, v3, p1}, Lorg/minidns/dnssec/b;->c0(Lorg/minidns/dnsmessage/a;Ljava/util/Collection;Ljava/util/List;)Lorg/minidns/dnssec/b$b;

    move-result-object v2

    if-eqz v7, :cond_8

    .line 15
    iget-object v4, v2, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_5

    .line 17
    :cond_8
    iget-object v2, v2, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_9

    goto :goto_6

    .line 19
    :cond_9
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v0, "Only some nameserver records are signed!"

    invoke-direct {p1, v1, v0}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/a;Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    return-object v0

    .line 20
    :cond_b
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v0, "NSECs must always match to a SOA"

    invoke-direct {p1, v1, v0}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/a;Ljava/lang/String;)V

    throw p1
.end method

.method private b0(Lorg/minidns/dnsmessage/a;Lorg/minidns/record/Record;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/a;",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/f;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast p1, Lorg/minidns/record/f;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v2, p0, Lorg/minidns/dnssec/b;->n:Ljava/util/Map;

    iget-object v3, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v1, p0, Lorg/minidns/dnssec/b;->n:Ljava/util/Map;

    iget-object v2, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lorg/minidns/record/f;->m([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Lorg/minidns/dnssec/e$c;

    invoke-direct {p1, p2}, Lorg/minidns/dnssec/e$c;-><init>(Lorg/minidns/record/Record;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 7
    :cond_1
    iget-object v2, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance p1, Lorg/minidns/dnssec/e$f;

    invoke-direct {p1}, Lorg/minidns/dnssec/e$f;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 v2, 0x0

    .line 9
    iget-object v3, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    sget-object v4, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v3, v4}, Lorg/minidns/dnssec/b;->T(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/c;

    move-result-object v3

    const-string v4, "There is no DS record for "

    if-nez v3, :cond_3

    .line 10
    sget-object p1, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", server gives no result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v3}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v5, v3, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/record/Record;

    .line 13
    const-class v7, Lorg/minidns/record/g;

    invoke-virtual {v6, v7}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iget-object v6, v6, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v6, Lorg/minidns/record/g;

    .line 15
    invoke-virtual {p1}, Lorg/minidns/record/f;->k()I

    move-result v7

    iget v8, v6, Lorg/minidns/record/i;->c:I

    if-ne v7, v8, :cond_4

    .line 16
    invoke-virtual {v3}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object v1

    move-object v2, v6

    :cond_6
    if-nez v2, :cond_7

    .line 17
    sget-object p1, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", server gives empty result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-nez v2, :cond_a

    .line 18
    iget-object p1, p0, Lorg/minidns/dnssec/b;->p:Lorg/minidns/dnsname/DnsName;

    if-eqz p1, :cond_a

    iget-object v3, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p1, v3}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 19
    iget-object p1, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v3, p0, Lorg/minidns/dnssec/b;->p:Lorg/minidns/dnsname/DnsName;

    invoke-static {p1, v3}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    sget-object v3, Lorg/minidns/record/Record$TYPE;->DLV:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, p1, v3}, Lorg/minidns/dnssec/b;->T(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/c;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 20
    invoke-virtual {p1}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v3, p1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 22
    const-class v5, Lorg/minidns/record/d;

    invoke-virtual {v4, v5}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_2

    .line 23
    :cond_9
    iget-object v5, p2, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v5, Lorg/minidns/record/f;

    invoke-virtual {v5}, Lorg/minidns/record/f;->k()I

    move-result v5

    iget-object v6, v4, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v6, Lorg/minidns/record/d;

    iget v6, v6, Lorg/minidns/record/i;->c:I

    if-ne v5, v6, :cond_8

    .line 24
    sget-object v1, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found DLV for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", awesome."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 25
    iget-object v1, v4, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    move-object v2, v1

    check-cast v2, Lorg/minidns/record/i;

    .line 26
    invoke-virtual {p1}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object v1

    :cond_a
    if-eqz v2, :cond_c

    .line 27
    iget-object p1, p0, Lorg/minidns/dnssec/b;->m:Lorg/minidns/dnssec/f;

    invoke-virtual {p1, p2, v2}, Lorg/minidns/dnssec/f;->g(Lorg/minidns/record/Record;Lorg/minidns/record/i;)Lorg/minidns/dnssec/e;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto :goto_3

    .line 29
    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 30
    new-instance p1, Lorg/minidns/dnssec/e$i;

    iget-object p2, p2, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object p2, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/minidns/dnssec/e$i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    return-object v0
.end method

.method private c0(Lorg/minidns/dnsmessage/a;Ljava/util/Collection;Ljava/util/List;)Lorg/minidns/dnssec/b$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/a;",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Lorg/minidns/dnssec/b$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    new-instance v2, Lorg/minidns/dnssec/b$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/minidns/dnssec/b$b;-><init>(Lorg/minidns/dnssec/b;Lorg/minidns/dnssec/b$a;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/minidns/record/Record;

    .line 6
    const-class v6, Lorg/minidns/record/r;

    invoke-virtual {v5, v6}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v6, v5, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v6, Lorg/minidns/record/r;

    .line 8
    iget-object v7, v6, Lorg/minidns/record/r;->h:Ljava/util/Date;

    invoke-virtual {v7, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v7, v6, Lorg/minidns/record/r;->i:Ljava/util/Date;

    invoke-virtual {v7, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-lez v7, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 13
    iget-object p2, v2, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    new-instance p3, Lorg/minidns/dnssec/e$e;

    invoke-direct {p3, p1, v1}, Lorg/minidns/dnssec/e$e;-><init>(Lorg/minidns/dnsmessage/a;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_4
    iget-object p2, v2, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    new-instance p3, Lorg/minidns/dnssec/e$h;

    invoke-direct {p3, p1}, Lorg/minidns/dnssec/e$h;-><init>(Lorg/minidns/dnsmessage/a;)V

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v2

    .line 15
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    .line 16
    iget-object v3, v1, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v3, Lorg/minidns/record/r;

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/record/Record;

    .line 19
    iget-object v7, v6, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    iget-object v8, v3, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    if-ne v7, v8, :cond_6

    iget-object v7, v6, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v8, v1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v7, v8}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 20
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_7
    invoke-direct {p0, p1, v3, v4}, Lorg/minidns/dnssec/b;->d0(Lorg/minidns/dnsmessage/a;Lorg/minidns/record/r;Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    .line 22
    iget-object v6, v2, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v5, p1, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v6, v3, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v5, v6}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v3, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    sget-object v6, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    if-ne v5, v6, :cond_a

    .line 24
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    .line 25
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/record/Record;

    const-class v8, Lorg/minidns/record/f;

    invoke-virtual {v6, v8}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v6

    .line 26
    iget-object v6, v6, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v6, Lorg/minidns/record/f;

    .line 27
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 28
    invoke-virtual {v6}, Lorg/minidns/record/f;->k()I

    move-result v6

    iget v8, v3, Lorg/minidns/record/r;->j:I

    if-ne v6, v8, :cond_8

    .line 29
    iput-boolean v7, v2, Lorg/minidns/dnssec/b$b;->b:Z

    goto :goto_5

    .line 30
    :cond_9
    iput-boolean v7, v2, Lorg/minidns/dnssec/b$b;->a:Z

    .line 31
    :cond_a
    iget-object v5, v1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v5, v5, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v6, v3, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    iget-object v6, v6, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/minidns/dnssec/b;->Q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 32
    sget-object v4, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Records at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " are cross-signed with a key from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_6

    .line 33
    :cond_b
    invoke-interface {p3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 34
    :goto_6
    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    return-object v2
.end method

.method private d0(Lorg/minidns/dnsmessage/a;Lorg/minidns/record/r;Ljava/util/List;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/a;",
            "Lorg/minidns/record/r;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lorg/minidns/record/f;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v2, p2, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 4
    invoke-virtual {v3, v0}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v5, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v5, Lorg/minidns/record/f;

    invoke-virtual {v5}, Lorg/minidns/record/f;->k()I

    move-result v5

    iget v6, p2, Lorg/minidns/record/r;->j:I

    if-ne v5, v6, :cond_0

    .line 6
    iget-object v0, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    move-object v4, v0

    check-cast v4, Lorg/minidns/record/f;

    goto :goto_2

    .line 7
    :cond_2
    iget-object v2, p1, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v5, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    if-ne v2, v5, :cond_3

    iget-object v2, p2, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    iget-object v5, p1, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, v5}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance p2, Lorg/minidns/dnssec/e$i;

    iget-object p1, p1, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    iget-object p1, p1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-direct {p2, p1}, Lorg/minidns/dnssec/e$i;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 9
    :cond_3
    iget-object v2, p2, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v2, v3}, Lorg/minidns/dnssec/b;->T(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/c;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 10
    invoke-virtual {v2}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v2, v2, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 12
    invoke-virtual {v3, v0}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v5, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v5, Lorg/minidns/record/f;

    invoke-virtual {v5}, Lorg/minidns/record/f;->k()I

    move-result v5

    iget v6, p2, Lorg/minidns/record/r;->j:I

    if-ne v5, v6, :cond_4

    .line 14
    iget-object v3, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v3, Lorg/minidns/record/f;

    move-object v4, v3

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v4, :cond_8

    .line 15
    iget-object p1, p0, Lorg/minidns/dnssec/b;->m:Lorg/minidns/dnssec/f;

    invoke-virtual {p1, p3, p2, v4}, Lorg/minidns/dnssec/f;->f(Ljava/util/List;Lorg/minidns/record/r;Lorg/minidns/record/f;)Lorg/minidns/dnssec/e;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 16
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1

    .line 17
    :cond_8
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " record(s) are signed using an unknown key."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/a;Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_9
    new-instance p3, Lorg/minidns/dnssec/DnssecValidationFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no DNSKEY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but it is used"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Lorg/minidns/dnsmessage/a;Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method protected I(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DNSSEC OK (DO) flag not set in response"

    return-object p1

    .line 2
    :cond_0
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->j:Z

    if-nez v0, :cond_1

    const-string p1, "CHECKING DISABLED (CD) flag not set in response"

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->I(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public K(Lorg/minidns/dnsname/DnsName;[B)V
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnssec/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnssec/b;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public M(Lorg/minidns/dnsname/DnsName;)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/dnssec/b;->p:Lorg/minidns/dnsname/DnsName;

    return-void
.end method

.method public O()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/minidns/dnssec/b;->M(Lorg/minidns/dnsname/DnsName;)V

    return-void
.end method

.method public P()V
    .locals 1

    sget-object v0, Lorg/minidns/dnssec/b;->r:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v0}, Lorg/minidns/dnssec/b;->M(Lorg/minidns/dnsname/DnsName;)V

    return-void
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lorg/minidns/dnssec/b;->o:Z

    return v0
.end method

.method public T(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnssec/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-super {p0, v0}, Lorg/minidns/AbstractDnsClient;->w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnssec/b;->S(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnssec/c;

    move-result-object p1

    return-object p1
.end method

.method public U(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/minidns/AbstractDnsClient;->w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/minidns/dnssec/b;->S(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnssec/c;

    move-result-object p1

    return-object p1
.end method

.method public V(Lorg/minidns/dnsname/DnsName;)V
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnssec/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public W(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnssec/b;->o:Z

    return-void
.end method

.method protected m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/minidns/iterative/ReliableDnsClient;->m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z

    move-result p1

    return p1
.end method

.method protected n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->A()Lorg/minidns/edns/Edns$b;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    invoke-virtual {v1}, Lorg/minidns/source/DnsDataSource;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$b;->j(I)Lorg/minidns/edns/Edns$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/edns/Edns$b;->h()Lorg/minidns/edns/Edns$b;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->G(Z)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 3
    invoke-super {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    return-object p1
.end method

.method public w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/minidns/dnssec/b;->U(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/c;

    move-result-object p1

    return-object p1
.end method
