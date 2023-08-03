.class public final enum Lorg/minidns/hla/SrvService;
.super Ljava/lang/Enum;
.source "SrvService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/hla/SrvService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lorg/minidns/hla/SrvService;

.field public static final enum xmpp_client:Lorg/minidns/hla/SrvService;

.field public static final enum xmpp_server:Lorg/minidns/hla/SrvService;


# instance fields
.field public final dnsName:Lorg/minidns/dnsname/DnsName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/minidns/hla/SrvService;

    const-string v1, "xmpp_client"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/minidns/hla/SrvService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/hla/SrvService;->xmpp_client:Lorg/minidns/hla/SrvService;

    .line 2
    new-instance v1, Lorg/minidns/hla/SrvService;

    const-string v3, "xmpp_server"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/minidns/hla/SrvService;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/minidns/hla/SrvService;->xmpp_server:Lorg/minidns/hla/SrvService;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/minidns/hla/SrvService;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/minidns/hla/SrvService;->a:[Lorg/minidns/hla/SrvService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_"

    const-string v0, "-"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/hla/SrvService;->dnsName:Lorg/minidns/dnsname/DnsName;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/hla/SrvService;
    .locals 1

    const-class v0, Lorg/minidns/hla/SrvService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/minidns/hla/SrvService;

    return-object p0
.end method

.method public static values()[Lorg/minidns/hla/SrvService;
    .locals 1

    sget-object v0, Lorg/minidns/hla/SrvService;->a:[Lorg/minidns/hla/SrvService;

    invoke-virtual {v0}, [Lorg/minidns/hla/SrvService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/hla/SrvService;

    return-object v0
.end method
