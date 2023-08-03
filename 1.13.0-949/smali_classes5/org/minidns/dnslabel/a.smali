.class public final Lorg/minidns/dnslabel/a;
.super Lorg/minidns/dnslabel/j;
.source "ALabel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-static {v0}, Lf9/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
