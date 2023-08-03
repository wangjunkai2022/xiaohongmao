.class public Lorg/minidns/dnssec/e$c;
.super Lorg/minidns/dnssec/e;
.source "UnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lorg/minidns/record/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/minidns/record/Record;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/minidns/dnssec/e;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/dnssec/e$c;->a:Lorg/minidns/record/Record;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/e$c;->a:Lorg/minidns/record/Record;

    iget-object v1, v1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v1, v1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is in list of known SEPs, but DNSKEY from response mismatches!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
