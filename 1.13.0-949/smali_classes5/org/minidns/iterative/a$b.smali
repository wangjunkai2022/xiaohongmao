.class Lorg/minidns/iterative/a$b;
.super Ljava/lang/Object;
.source "IterativeDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/iterative/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/a$b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/minidns/iterative/a$a;->a:[I

    invoke-static {}, Lorg/minidns/iterative/a;->J()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/iterative/a$b;->a:Ljava/util/List;

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lorg/minidns/iterative/a;->K()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v4

    iget-boolean v4, v4, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-eqz v4, :cond_3

    .line 9
    invoke-static {p1, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 10
    :cond_3
    invoke-static {}, Lorg/minidns/iterative/a;->L()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v4

    iget-boolean v4, v4, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v4, :cond_4

    .line 11
    invoke-static {p2, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 12
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-static {}, Lorg/minidns/iterative/a;->M()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 16
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 18
    :cond_7
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 19
    :cond_8
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/iterative/a$b;->a:Ljava/util/List;

    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;Lorg/minidns/iterative/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/iterative/a$b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;)V

    return-void
.end method
