.class public Lorg/minidns/b;
.super Lorg/minidns/AbstractDnsClient;
.source "DnsClient.java"


# static fields
.field static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/dnsserverlookup/d;",
            ">;"
        }
    .end annotation
.end field

.field static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic r:Z


# instance fields
.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lorg/minidns/b;->n:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/minidns/b;->o:Ljava/util/Set;

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v1, Lorg/minidns/b;->p:Ljava/util/Set;

    .line 4
    sget-object v1, Lorg/minidns/dnsserverlookup/b;->d:Lorg/minidns/dnsserverlookup/d;

    invoke-static {v1}, Lorg/minidns/b;->J(Lorg/minidns/dnsserverlookup/d;)V

    .line 5
    sget-object v1, Lorg/minidns/dnsserverlookup/c;->d:Lorg/minidns/dnsserverlookup/d;

    invoke-static {v1}, Lorg/minidns/b;->J(Lorg/minidns/dnsserverlookup/d;)V

    .line 6
    sget-object v1, Lorg/minidns/dnsserverlookup/e;->d:Lorg/minidns/dnsserverlookup/d;

    invoke-static {v1}, Lorg/minidns/b;->J(Lorg/minidns/dnsserverlookup/d;)V

    :try_start_0
    const-string v1, "8.8.8.8"

    .line 7
    invoke-static {v1}, Lorg/minidns/util/g;->a(Ljava/lang/CharSequence;)Ljava/net/Inet4Address;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not add static IPv4 DNS Server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v0, "[2001:4860:4860::8888]"

    .line 10
    invoke-static {v0}, Lorg/minidns/util/g;->b(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;

    move-result-object v0

    .line 11
    sget-object v1, Lorg/minidns/b;->p:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    sget-object v1, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not add static IPv6 DNS Server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/minidns/b;->q:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/minidns/AbstractDnsClient;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/b;->j:Ljava/util/Set;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/minidns/b;->k:Z

    .line 4
    iput-boolean v0, p0, Lorg/minidns/b;->l:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/minidns/b;->m:Z

    return-void
.end method

.method public constructor <init>(Lorg/minidns/a;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/a;)V

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/b;->j:Ljava/util/Set;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/minidns/b;->k:Z

    .line 9
    iput-boolean p1, p0, Lorg/minidns/b;->l:Z

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/minidns/b;->m:Z

    return-void
.end method

.method public static I(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/minidns/b;->q:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static J(Lorg/minidns/dnsserverlookup/d;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/minidns/dnsserverlookup/d;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/minidns/dnsserverlookup/d;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as it is not available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lorg/minidns/b;->n:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static K()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/minidns/b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/dnsserverlookup/d;

    .line 2
    invoke-interface {v1}, Lorg/minidns/dnsserverlookup/d;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "The DNS server lookup mechanism \'"

    if-eqz v4, :cond_3

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4}, Lorg/minidns/util/g;->c(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "\'"

    if-nez v6, :cond_2

    .line 7
    sget-object v6, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/minidns/dnsserverlookup/d;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' returned an invalid non-IP address result: \'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 9
    :cond_2
    sget-object v6, Lorg/minidns/b;->q:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    sget-object v6, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/minidns/dnsserverlookup/d;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' returned a blacklisted result: \'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v2

    goto :goto_3

    .line 13
    :cond_4
    sget-object v3, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/minidns/dnsserverlookup/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' returned not a single valid IP address after sanitazion"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_2
    move-object v1, v2

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public static L()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/minidns/b;->K()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 4
    iget-boolean v2, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 6
    :goto_0
    iget-boolean v4, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v4, :cond_2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    .line 11
    iget-boolean v5, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-nez v5, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    check-cast v4, Ljava/net/Inet4Address;

    .line 13
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_4
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_6

    .line 15
    iget-boolean v5, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-nez v5, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    check-cast v4, Ljava/net/Inet6Address;

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The address \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is neither of type Inet(4|6)Address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception v5

    .line 19
    sget-object v6, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not transform \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' to InetAddress"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 20
    :cond_7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 21
    sget-object v4, Lorg/minidns/b$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 23
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 24
    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 26
    :cond_b
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-object v0
.end method

.method private O()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/minidns/b;->L()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/net/InetAddress;

    .line 2
    iget-boolean v3, p0, Lorg/minidns/b;->m:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 3
    sget-object v3, Lorg/minidns/b$c;->a:[I

    iget-object v5, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    if-eq v3, v1, :cond_2

    const/4 v7, 0x3

    if-eq v3, v7, :cond_1

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    move-object v3, v5

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/b;->M()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/minidns/b;->N()Ljava/net/InetAddress;

    move-result-object v3

    :goto_0
    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lorg/minidns/b;->M()Ljava/net/InetAddress;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lorg/minidns/b;->N()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/minidns/b;->N()Ljava/net/InetAddress;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Lorg/minidns/b;->M()Ljava/net/InetAddress;

    move-result-object v3

    :goto_1
    aput-object v5, v2, v4

    aput-object v3, v2, v6

    :cond_4
    :goto_2
    if-ge v4, v1, :cond_6

    .line 10
    aget-object v3, v2, v4

    if-nez v3, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static S(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/minidns/b;->q:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static T(Lorg/minidns/dnsserverlookup/d;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/b;->n:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected B(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage$b;",
            ")",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/b;->n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/minidns/a;->a(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lorg/minidns/d;->f(Ljava/lang/Object;)Lorg/minidns/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/minidns/b;->O()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/minidns/d$e;

    invoke-direct {v1}, Lorg/minidns/d$e;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 8
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 10
    iget-object v5, p0, Lorg/minidns/b;->j:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 12
    sget-object v5, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it was marked as \"recursion not available\""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 15
    invoke-virtual {v1}, Lorg/minidns/d;->isDone()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/d;

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Lorg/minidns/d;->cancel(Z)Z

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0, p1, v5}, Lorg/minidns/AbstractDnsClient;->C(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/d;

    move-result-object v5

    .line 19
    new-instance v6, Lorg/minidns/b$a;

    invoke-direct {v6, p0, v1}, Lorg/minidns/b$a;-><init>(Lorg/minidns/b;Lorg/minidns/d$e;)V

    invoke-virtual {v5, v6}, Lorg/minidns/d;->b(Lorg/minidns/util/k;)Lorg/minidns/util/c;

    .line 20
    new-instance v6, Lorg/minidns/b$b;

    invoke-direct {v6, p0, v2, v0, v1}, Lorg/minidns/b$b;-><init>(Lorg/minidns/b;Ljava/util/List;Ljava/util/List;Lorg/minidns/d$e;)V

    invoke-virtual {v5, v6}, Lorg/minidns/d;->a(Lorg/minidns/util/e;)Lorg/minidns/util/c;

    .line 21
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public M()Ljava/net/InetAddress;
    .locals 2

    sget-object v0, Lorg/minidns/b;->p:Ljava/util/Set;

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->c:Ljava/util/Random;

    invoke-static {v0, v1}, Lorg/minidns/util/d;->a(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public N()Ljava/net/InetAddress;
    .locals 2

    sget-object v0, Lorg/minidns/b;->o:Ljava/util/Set;

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->c:Ljava/util/Random;

    invoke-static {v0, v1}, Lorg/minidns/util/d;->a(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lorg/minidns/b;->k:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lorg/minidns/b;->l:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lorg/minidns/b;->m:Z

    return v0
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/b;->k:Z

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/b;->l:Z

    return-void
.end method

.method public W(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/b;->m:Z

    return-void
.end method

.method protected n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->P(Z)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 2
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->A()Lorg/minidns/edns/Edns$b;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    invoke-virtual {v1}, Lorg/minidns/source/DnsDataSource;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$b;->j(I)Lorg/minidns/edns/Edns$b;

    move-result-object v0

    iget-boolean v1, p0, Lorg/minidns/b;->k:Z

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$b;->i(Z)Lorg/minidns/edns/Edns$b;

    return-object p1
.end method

.method public t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/b;->n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/minidns/a;->a(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lorg/minidns/b;->O()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 6
    iget-object v4, p0, Lorg/minidns/b;->j:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    sget-object v4, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because it was marked as \"recursion not available\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lorg/minidns/AbstractDnsClient;->u(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-boolean v5, v4, Lorg/minidns/dnsmessage/DnsMessage;->h:Z

    if-nez v5, :cond_5

    .line 10
    iget-object v4, p0, Lorg/minidns/b;->j:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    sget-object v4, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The DNS server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned a response without the \"recursion available\" (RA) flag set. This likely indicates a misconfiguration because the server is not suitable for DNS resolution"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-boolean v5, p0, Lorg/minidns/b;->l:Z

    if-eqz v5, :cond_6

    return-object v4

    .line 13
    :cond_6
    sget-object v5, Lorg/minidns/b$c;->b:[I

    iget-object v6, v4, Lorg/minidns/dnsmessage/DnsMessage;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " asked for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with error code: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/minidns/dnsmessage/DnsMessage;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    sget-object v5, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_8
    return-object v4

    :catch_0
    move-exception v3

    .line 18
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 19
    :cond_9
    invoke-static {v2}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    return-object v1
.end method
