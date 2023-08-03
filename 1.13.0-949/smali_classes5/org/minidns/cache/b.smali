.class public Lorg/minidns/cache/b;
.super Lorg/minidns/cache/a;
.source "FullLruCache.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0}, Lorg/minidns/cache/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/cache/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/cache/a;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method protected l(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsname/DnsName;)Z
    .locals 0
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

    const/4 p1, 0x1

    return p1
.end method
