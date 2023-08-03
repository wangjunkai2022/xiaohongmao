.class public abstract Lorg/minidns/dnssec/e;
.super Ljava/lang/Object;
.source "UnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnssec/e$d;,
        Lorg/minidns/dnssec/e$e;,
        Lorg/minidns/dnssec/e$h;,
        Lorg/minidns/dnssec/e$f;,
        Lorg/minidns/dnssec/e$g;,
        Lorg/minidns/dnssec/e$i;,
        Lorg/minidns/dnssec/e$c;,
        Lorg/minidns/dnssec/e$a;,
        Lorg/minidns/dnssec/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/minidns/dnssec/e;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/minidns/dnssec/e;

    invoke-virtual {p1}, Lorg/minidns/dnssec/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/minidns/dnssec/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/minidns/dnssec/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/minidns/dnssec/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
