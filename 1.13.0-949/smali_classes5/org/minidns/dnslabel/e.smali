.class public abstract Lorg/minidns/dnslabel/e;
.super Lorg/minidns/dnslabel/DnsLabel;
.source "NonLdhLabel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/DnsLabel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected static j(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/minidns/dnslabel/i;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/minidns/dnslabel/i;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/i;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/d;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lorg/minidns/dnslabel/d;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/d;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lorg/minidns/dnslabel/g;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/g;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
