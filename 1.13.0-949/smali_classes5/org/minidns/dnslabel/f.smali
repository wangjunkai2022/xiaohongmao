.class public final Lorg/minidns/dnslabel/f;
.super Lorg/minidns/dnslabel/c;
.source "NonReservedLdhLabel.java"


# static fields
.field static final synthetic h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/minidns/dnslabel/f;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/minidns/dnslabel/c;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/f;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static m(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/minidns/dnslabel/h;->m(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
