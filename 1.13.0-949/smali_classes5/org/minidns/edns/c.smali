.class public Lorg/minidns/edns/c;
.super Lorg/minidns/edns/a;
.source "UnknownEdnsOption.java"


# direct methods
.method protected constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/minidns/edns/a;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/minidns/edns/a;->c:[B

    invoke-static {v0}, Lorg/minidns/util/f;->a([B)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    return-object v0
.end method

.method protected e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lorg/minidns/edns/c;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
