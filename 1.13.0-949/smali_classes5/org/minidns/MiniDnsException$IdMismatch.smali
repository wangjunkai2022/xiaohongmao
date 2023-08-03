.class public Lorg/minidns/MiniDnsException$IdMismatch;
.super Lorg/minidns/MiniDnsException;
.source "MiniDnsException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/MiniDnsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdMismatch"
.end annotation


# static fields
.field private static final d:J = 0x1L

.field static final synthetic e:Z


# instance fields
.field private final b:Lorg/minidns/dnsmessage/DnsMessage;

.field private final c:Lorg/minidns/dnsmessage/DnsMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/minidns/MiniDnsException;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lorg/minidns/MiniDnsException$IdMismatch;->a(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/minidns/MiniDnsException$IdMismatch;->b:Lorg/minidns/dnsmessage/DnsMessage;

    .line 3
    iput-object p2, p0, Lorg/minidns/MiniDnsException$IdMismatch;->c:Lorg/minidns/dnsmessage/DnsMessage;

    return-void
.end method

.method private static a(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The response\'s ID doesn\'t matches the request ID. Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/minidns/dnsmessage/DnsMessage;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Response: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lorg/minidns/dnsmessage/DnsMessage;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRequest()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    iget-object v0, p0, Lorg/minidns/MiniDnsException$IdMismatch;->b:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method

.method public getResponse()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    iget-object v0, p0, Lorg/minidns/MiniDnsException$IdMismatch;->c:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method
