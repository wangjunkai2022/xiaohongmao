.class public Lorg/minidns/hla/ResolutionUnsuccessfulException;
.super Lorg/minidns/MiniDnsException;
.source "ResolutionUnsuccessfulException.java"


# static fields
.field private static final b:J = 0x1L


# instance fields
.field public final question:Lorg/minidns/dnsmessage/a;

.field public final responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asking for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " yielded an error response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/minidns/hla/ResolutionUnsuccessfulException;->question:Lorg/minidns/dnsmessage/a;

    .line 3
    iput-object p2, p0, Lorg/minidns/hla/ResolutionUnsuccessfulException;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-void
.end method
