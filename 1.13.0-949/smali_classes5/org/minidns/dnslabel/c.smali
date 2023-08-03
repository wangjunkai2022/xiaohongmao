.class public abstract Lorg/minidns/dnslabel/c;
.super Lorg/minidns/dnslabel/DnsLabel;
.source "LdhLabel.java"


# static fields
.field static final synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/minidns/dnslabel/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/DnsLabel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected static j(Ljava/lang/String;)Lorg/minidns/dnslabel/c;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/minidns/dnslabel/h;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lorg/minidns/dnslabel/j;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/minidns/dnslabel/j;->j(Ljava/lang/String;)Lorg/minidns/dnslabel/c;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lorg/minidns/dnslabel/h;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/h;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lorg/minidns/dnslabel/f;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/d;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_5

    :cond_3
    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    const/16 v3, 0x39

    if-le v2, v3, :cond_5

    :cond_4
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method
