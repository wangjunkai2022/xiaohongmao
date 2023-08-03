.class public Lorg/minidns/dnssec/c;
.super Lorg/minidns/dnsmessage/DnsMessage;
.source "DnssecMessage.java"


# instance fields
.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/r;",
            ">;>;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/minidns/dnsmessage/DnsMessage$b;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage$b;",
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/r;",
            ">;>;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->D(Z)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$b;)V

    .line 2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/dnssec/c;->x:Ljava/util/Set;

    if-nez p3, :cond_2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/minidns/dnssec/c;->y:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public t()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/r;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/dnssec/c;->x:Ljava/util/Set;

    return-object v0
.end method

.method public u()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/dnssec/c;->y:Ljava/util/Set;

    return-object v0
.end method
