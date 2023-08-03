.class public Lorg/minidns/iterative/a;
.super Lorg/minidns/AbstractDnsClient;
.source "IterativeDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/a$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected static final m:[Ljava/net/Inet4Address;

.field protected static final n:[Ljava/net/Inet6Address;


# instance fields
.field j:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/iterative/a;->k:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/iterative/a;->l:Ljava/util/Map;

    const/16 v0, 0xd

    new-array v1, v0, [Ljava/net/Inet4Address;

    const/16 v2, 0x61

    const/16 v3, 0xc6

    const/16 v4, 0x29

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 3
    invoke-static {v2, v3, v4, v5, v6}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v4

    aput-object v4, v1, v5

    const/16 v4, 0x62

    const/16 v7, 0xc0

    const/16 v8, 0xe4

    const/16 v9, 0x4f

    const/16 v10, 0xc9

    .line 4
    invoke-static {v4, v7, v8, v9, v10}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v1, v8

    const/16 v4, 0x63

    const/16 v9, 0x21

    const/16 v10, 0xc

    .line 5
    invoke-static {v4, v7, v9, v6, v10}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v4

    const/4 v11, 0x2

    aput-object v4, v1, v11

    const/16 v4, 0x64

    const/16 v12, 0xc7

    const/4 v13, 0x7

    const/16 v14, 0x5b

    .line 6
    invoke-static {v4, v12, v13, v14, v0}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const/16 v0, 0x65

    const/16 v14, 0xcb

    const/16 v15, 0xe6

    const/16 v4, 0xa

    .line 7
    invoke-static {v0, v7, v14, v15, v4}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0x66

    const/4 v14, 0x5

    const/16 v15, 0xf1

    .line 8
    invoke-static {v0, v7, v14, v14, v15}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    aput-object v0, v1, v14

    const/16 v0, 0x67

    const/16 v15, 0x70

    const/16 v14, 0x24

    .line 9
    invoke-static {v0, v7, v15, v14, v6}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    const/4 v15, 0x6

    aput-object v0, v1, v15

    const/16 v0, 0x68

    const/16 v15, 0xbe

    const/16 v6, 0x35

    .line 10
    invoke-static {v0, v3, v2, v15, v6}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    aput-object v0, v1, v13

    const/16 v0, 0x69

    const/16 v2, 0x94

    const/16 v3, 0x11

    .line 11
    invoke-static {v0, v7, v14, v2, v3}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const/16 v0, 0x6a

    const/16 v3, 0x3a

    const/16 v6, 0x80

    const/16 v14, 0x1e

    .line 12
    invoke-static {v0, v7, v3, v6, v14}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const/16 v0, 0x6b

    const/16 v6, 0xc1

    const/16 v7, 0xe

    const/16 v14, 0x81

    .line 13
    invoke-static {v0, v6, v5, v7, v14}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    aput-object v0, v1, v4

    const/16 v0, 0x6c

    const/16 v6, 0x53

    const/16 v7, 0x2a

    .line 14
    invoke-static {v0, v12, v13, v6, v7}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    const/16 v6, 0xb

    aput-object v0, v1, v6

    const/16 v0, 0x6d

    const/16 v6, 0xca

    const/16 v7, 0x1b

    .line 15
    invoke-static {v0, v6, v10, v7, v9}, Lorg/minidns/iterative/a;->Y(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    aput-object v0, v1, v10

    sput-object v1, Lorg/minidns/iterative/a;->m:[Ljava/net/Inet4Address;

    new-array v0, v4, [Ljava/net/Inet6Address;

    const/16 v20, 0x61

    const/16 v21, 0x2001

    const/16 v22, 0x503

    const v23, 0xba3e

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x2

    const/16 v28, 0x30

    .line 16
    invoke-static/range {v20 .. v28}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v20, 0x62

    const/16 v22, 0x500

    const/16 v23, 0x84

    const/16 v27, 0x0

    const/16 v28, 0xb

    .line 17
    invoke-static/range {v20 .. v28}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v20, 0x63

    const/16 v23, 0x2

    const/16 v28, 0xc

    .line 18
    invoke-static/range {v20 .. v28}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v20, 0x64

    const/16 v23, 0x2d

    const/16 v28, 0xd

    .line 19
    invoke-static/range {v20 .. v28}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/16 v20, 0x66

    const/16 v23, 0x2f

    const/16 v28, 0xf

    .line 20
    invoke-static/range {v20 .. v28}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const/16 v19, 0x68

    const/16 v20, 0x2001

    const/16 v21, 0x500

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v27, 0x53

    .line 21
    invoke-static/range {v19 .. v27}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const/16 v19, 0x69

    const/16 v21, 0x7fe

    const/16 v22, 0x0

    .line 22
    invoke-static/range {v19 .. v27}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const/16 v14, 0x6a

    const/16 v15, 0x2001

    const/16 v16, 0x503

    const/16 v17, 0xc27

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x30

    .line 23
    invoke-static/range {v14 .. v22}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v13

    const/16 v4, 0x6c

    const/16 v5, 0x2001

    const/16 v6, 0x500

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x42

    .line 24
    invoke-static/range {v4 .. v12}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v4, 0x6d

    const/16 v6, 0xdc3

    const/4 v7, 0x0

    const/16 v12, 0x35

    .line 25
    invoke-static/range {v4 .. v12}, Lorg/minidns/iterative/a;->Z(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lorg/minidns/iterative/a;->n:[Ljava/net/Inet6Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/minidns/AbstractDnsClient;-><init>()V

    const/16 v0, 0x80

    .line 2
    iput v0, p0, Lorg/minidns/iterative/a;->j:I

    return-void
.end method

.method public constructor <init>(Lorg/minidns/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/a;)V

    const/16 p1, 0x80

    .line 4
    iput p1, p0, Lorg/minidns/iterative/a;->j:I

    return-void
.end method

.method protected static I(Ljava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw p0
.end method

.method static synthetic J()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    sget-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method static synthetic K()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    sget-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method static synthetic L()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    sget-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method static synthetic M()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    sget-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method private N()Ljava/net/Inet4Address;
    .locals 3

    sget-object v0, Lorg/minidns/iterative/a;->m:[Ljava/net/Inet4Address;

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->c:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private O()Ljava/net/Inet6Address;
    .locals 3

    sget-object v0, Lorg/minidns/iterative/a;->n:[Ljava/net/Inet6Address;

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->c:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static P(C)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-static {p0, v0}, Lorg/minidns/iterative/a;->Q(CLorg/minidns/AbstractDnsClient$IpVersionSetting;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static Q(CLorg/minidns/AbstractDnsClient$IpVersionSetting;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/minidns/AbstractDnsClient$IpVersionSetting;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/minidns/iterative/a;->k:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2
    sget-object v1, Lorg/minidns/iterative/a;->l:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    sget-object v3, Lorg/minidns/iterative/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p0, :cond_6

    .line 8
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_6

    .line 9
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return-object v1
.end method

.method private static R(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/minidns/record/j;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/minidns/record/j;",
            ">;)[",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/j;

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {v1}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v0, v3

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, v2

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {v1}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object p0

    aput-object p0, v0, v2

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/minidns/record/j;

    aget-object v1, v0, v3

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object p1

    aput-object p1, v0, v3

    goto :goto_1

    :cond_2
    aget-object p0, v0, v2

    if-nez p0, :cond_3

    .line 7
    invoke-virtual {p1}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object p0

    aput-object p0, v0, v2

    :cond_3
    return-object v0
.end method

.method private static S(Ljava/lang/String;Lorg/minidns/record/a;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/minidns/record/j;->h()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static T(Ljava/lang/String;Lorg/minidns/record/b;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/minidns/record/j;->h()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private U()Lorg/minidns/iterative/a$b$a;
    .locals 3

    new-instance v0, Lorg/minidns/iterative/a$b$a;

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->c:Ljava/util/Random;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/minidns/iterative/a$b$a;-><init>(Ljava/util/Random;Lorg/minidns/iterative/a$a;)V

    return-object v0
.end method

.method private V(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->getParent()Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/minidns/iterative/a$a;->a:[I

    iget-object v2, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_5

    if-eq v1, v4, :cond_2

    const/4 v7, 0x0

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->g(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->e(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/minidns/iterative/a;->R(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 5
    aget-object v7, v1, v7

    .line 6
    aget-object v1, v1, v6

    goto :goto_2

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->e(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->g(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/minidns/iterative/a;->R(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 9
    aget-object v7, v1, v7

    .line 10
    aget-object v1, v1, v6

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->g(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/b;

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v8}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v8}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v5

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->e(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/a;

    if-nez v7, :cond_6

    .line 15
    invoke-virtual {v8}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {v8}, Lorg/minidns/record/j;->g()Ljava/net/InetAddress;

    move-result-object v1

    :goto_2
    if-nez v7, :cond_b

    .line 17
    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 18
    sget-object v8, Lorg/minidns/iterative/a$a;->a:[I

    iget-object v9, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v6, :cond_a

    if-eq v8, v4, :cond_9

    if-eq v8, v3, :cond_8

    if-eq v8, v2, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {p0}, Lorg/minidns/iterative/a;->O()Ljava/net/Inet6Address;

    move-result-object v7

    .line 20
    invoke-direct {p0}, Lorg/minidns/iterative/a;->N()Ljava/net/Inet4Address;

    move-result-object v1

    goto :goto_3

    .line 21
    :cond_8
    invoke-direct {p0}, Lorg/minidns/iterative/a;->N()Ljava/net/Inet4Address;

    move-result-object v7

    .line 22
    invoke-direct {p0}, Lorg/minidns/iterative/a;->O()Ljava/net/Inet6Address;

    move-result-object v1

    goto :goto_3

    .line 23
    :cond_9
    invoke-direct {p0}, Lorg/minidns/iterative/a;->O()Ljava/net/Inet6Address;

    move-result-object v7

    goto :goto_3

    .line 24
    :cond_a
    invoke-direct {p0}, Lorg/minidns/iterative/a;->N()Ljava/net/Inet4Address;

    move-result-object v7

    .line 25
    :cond_b
    :goto_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 26
    :try_start_0
    invoke-direct {p0, p1, p2, v7, v0}, Lorg/minidns/iterative/a;->W(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    .line 27
    invoke-static {v3}, Lorg/minidns/iterative/a;->I(Ljava/io/IOException;)V

    .line 28
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_c

    .line 29
    :try_start_1
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/minidns/iterative/a;->W(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 30
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_c
    invoke-static {v2}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    return-object v5
.end method

.method private W(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3, p2}, Lorg/minidns/iterative/b;->b(Ljava/net/InetAddress;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/minidns/AbstractDnsClient;->u(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v1, p3, Lorg/minidns/dnsmessage/DnsMessage;->e:Z

    if-eqz v1, :cond_1

    return-object p3

    .line 4
    :cond_1
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p2, p3, p4}, Lorg/minidns/a;->c(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)V

    .line 6
    :cond_2
    invoke-virtual {p3}, Lorg/minidns/dnsmessage/DnsMessage;->h()Ljava/util/List;

    move-result-object p4

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 10
    iget-object v4, v3, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v5, Lorg/minidns/record/Record$TYPE;->NS:Lorg/minidns/record/Record$TYPE;

    if-eq v4, v5, :cond_4

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v4, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v4, Lorg/minidns/record/l;

    iget-object v4, v4, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    .line 13
    invoke-direct {p0, p3, v4}, Lorg/minidns/iterative/a;->a0(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/a$b;

    move-result-object v4

    .line 14
    iget-object v4, v4, Lorg/minidns/iterative/a$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 16
    :try_start_0
    iget-object v6, v3, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-direct {p0, p1, p2, v5, v6}, Lorg/minidns/iterative/a;->W(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v5

    .line 17
    invoke-static {v5}, Lorg/minidns/iterative/a;->I(Ljava/io/IOException;)V

    .line 18
    sget-object v6, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v8, "Exception while recursing"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p1}, Lorg/minidns/iterative/b;->a()V

    .line 20
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 23
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/minidns/record/Record;

    .line 24
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v2

    .line 25
    iget-object v3, p4, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v3, Lorg/minidns/record/l;

    iget-object v3, v3, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    .line 26
    iget-object v4, v2, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v4, v3}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v2, v2, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v4, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    if-eq v2, v4, :cond_7

    sget-object v4, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    if-ne v2, v4, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    :try_start_1
    invoke-direct {p0, p1, v3}, Lorg/minidns/iterative/a;->X(Lorg/minidns/iterative/b;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/a$b;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 28
    invoke-virtual {p1}, Lorg/minidns/iterative/b;->a()V

    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    :goto_3
    if-nez v2, :cond_9

    goto :goto_2

    .line 30
    :cond_9
    iget-object v2, v2, Lorg/minidns/iterative/a$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 31
    :try_start_2
    iget-object v4, p4, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-direct {p0, p1, p2, v3, v4}, Lorg/minidns/iterative/a;->W(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception v3

    .line 32
    invoke-virtual {p1}, Lorg/minidns/iterative/b;->a()V

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 34
    :cond_a
    invoke-static {v1}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    return-object v0
.end method

.method private X(Lorg/minidns/iterative/b;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/minidns/iterative/a;->U()Lorg/minidns/iterative/a$b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v1, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Lorg/minidns/dnsmessage/a;

    sget-object v2, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-direct {v1, p2, v2}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 4
    invoke-virtual {p0, v1}, Lorg/minidns/AbstractDnsClient;->l(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2

    .line 5
    invoke-direct {p0, p1, v2}, Lorg/minidns/iterative/a;->V(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, v2, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 7
    invoke-virtual {v3, v1}, Lorg/minidns/record/Record;->h(Lorg/minidns/dnsmessage/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v3, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v3, Lorg/minidns/record/a;

    invoke-static {v4, v3}, Lorg/minidns/iterative/a;->S(Ljava/lang/String;Lorg/minidns/record/a;)Ljava/net/InetAddress;

    move-result-object v3

    .line 9
    invoke-static {v0}, Lorg/minidns/iterative/a$b$a;->a(Lorg/minidns/iterative/a$b$a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v4, v3, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v5, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v4, p2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iget-object p2, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast p2, Lorg/minidns/record/s;

    iget-object p2, p2, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    invoke-direct {p0, p1, p2}, Lorg/minidns/iterative/a;->X(Lorg/minidns/iterative/b;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/a$b;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v1, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v1, :cond_5

    .line 13
    new-instance v1, Lorg/minidns/dnsmessage/a;

    sget-object v2, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-direct {v1, p2, v2}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 14
    invoke-virtual {p0, v1}, Lorg/minidns/AbstractDnsClient;->l(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2

    .line 15
    invoke-direct {p0, p1, v2}, Lorg/minidns/iterative/a;->V(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 16
    iget-object v2, v2, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 17
    invoke-virtual {v3, v1}, Lorg/minidns/record/Record;->h(Lorg/minidns/dnsmessage/a;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18
    iget-object v4, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v3, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v3, Lorg/minidns/record/b;

    invoke-static {v4, v3}, Lorg/minidns/iterative/a;->T(Ljava/lang/String;Lorg/minidns/record/b;)Ljava/net/InetAddress;

    move-result-object v3

    .line 19
    invoke-static {v0}, Lorg/minidns/iterative/a$b$a;->b(Lorg/minidns/iterative/a$b$a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    iget-object v4, v3, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v5, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    if-ne v4, v5, :cond_3

    iget-object v4, v3, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v4, p2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    iget-object p2, v3, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast p2, Lorg/minidns/record/s;

    iget-object p2, p2, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    invoke-direct {p0, p1, p2}, Lorg/minidns/iterative/a;->X(Lorg/minidns/iterative/b;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/a$b;

    move-result-object p1

    return-object p1

    .line 22
    :cond_5
    invoke-virtual {v0}, Lorg/minidns/iterative/a$b$a;->c()Lorg/minidns/iterative/a$b;

    move-result-object p1

    return-object p1
.end method

.method private static Y(CIIII)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".root-servers.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/4 p1, 0x2

    int-to-byte p2, p3

    aput-byte p2, v1, p1

    const/4 p1, 0x3

    int-to-byte p2, p4

    aput-byte p2, v1, p1

    .line 2
    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    .line 3
    sget-object p2, Lorg/minidns/iterative/a;->k:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static Z(CIIIIIIII)Ljava/net/Inet6Address;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".root-servers.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    const/4 p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/4 p1, 0x4

    shr-int/lit8 p2, p3, 0x8

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/4 p1, 0x5

    int-to-byte p2, p3

    aput-byte p2, v1, p1

    const/4 p1, 0x6

    shr-int/lit8 p2, p4, 0x8

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/4 p1, 0x7

    int-to-byte p2, p4

    aput-byte p2, v1, p1

    shr-int/lit8 p1, p5, 0x8

    int-to-byte p1, p1

    const/16 p2, 0x8

    aput-byte p1, v1, p2

    const/16 p1, 0x9

    int-to-byte p2, p5

    aput-byte p2, v1, p1

    const/16 p1, 0xa

    shr-int/lit8 p2, p6, 0x8

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/16 p1, 0xb

    int-to-byte p2, p6

    aput-byte p2, v1, p1

    const/16 p1, 0xc

    shr-int/lit8 p2, p7, 0x8

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/16 p1, 0xd

    int-to-byte p2, p7

    aput-byte p2, v1, p1

    const/16 p1, 0xe

    shr-int/lit8 p2, p8, 0x8

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/16 p1, 0xf

    int-to-byte p2, p8

    aput-byte p2, v1, p1

    .line 2
    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet6Address;

    .line 3
    sget-object p2, Lorg/minidns/iterative/a;->l:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a0(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/a$b;
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/minidns/iterative/a;->U()Lorg/minidns/iterative/a$b$a;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    .line 3
    iget-object v2, v1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, p2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lorg/minidns/iterative/a$a;->b:[I

    iget-object v3, v1, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lorg/minidns/iterative/a$b$a;->b(Lorg/minidns/iterative/a$b$a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v1, v1, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v1, Lorg/minidns/record/b;

    invoke-static {v3, v1}, Lorg/minidns/iterative/a;->T(Ljava/lang/String;Lorg/minidns/record/b;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v0}, Lorg/minidns/iterative/a$b$a;->a(Lorg/minidns/iterative/a$b$a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v1, v1, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v1, Lorg/minidns/record/a;

    invoke-static {v3, v1}, Lorg/minidns/iterative/a;->S(Ljava/lang/String;Lorg/minidns/record/a;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Lorg/minidns/iterative/a$b$a;->c()Lorg/minidns/iterative/a$b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z
    .locals 0

    iget-boolean p1, p2, Lorg/minidns/dnsmessage/DnsMessage;->e:Z

    return p1
.end method

.method protected n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->P(Z)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 2
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->A()Lorg/minidns/edns/Edns$b;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    invoke-virtual {v1}, Lorg/minidns/source/DnsDataSource;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$b;->j(I)Lorg/minidns/edns/Edns$b;

    return-object p1
.end method

.method protected t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    .line 2
    new-instance v0, Lorg/minidns/iterative/b;

    invoke-direct {v0, p0}, Lorg/minidns/iterative/b;-><init>(Lorg/minidns/iterative/a;)V

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/minidns/iterative/a;->V(Lorg/minidns/iterative/b;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method
