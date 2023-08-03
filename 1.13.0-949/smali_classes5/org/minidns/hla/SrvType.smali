.class public final enum Lorg/minidns/hla/SrvType;
.super Ljava/lang/Enum;
.source "SrvType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/hla/SrvType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lorg/minidns/hla/SrvType;

.field public static final enum xmpp_client:Lorg/minidns/hla/SrvType;

.field public static final enum xmpp_server:Lorg/minidns/hla/SrvType;


# instance fields
.field public final proto:Lorg/minidns/hla/SrvProto;

.field public final service:Lorg/minidns/hla/SrvService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/minidns/hla/SrvType;

    sget-object v1, Lorg/minidns/hla/SrvService;->xmpp_client:Lorg/minidns/hla/SrvService;

    sget-object v2, Lorg/minidns/hla/SrvProto;->tcp:Lorg/minidns/hla/SrvProto;

    const-string v3, "xmpp_client"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/minidns/hla/SrvType;-><init>(Ljava/lang/String;ILorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;)V

    sput-object v0, Lorg/minidns/hla/SrvType;->xmpp_client:Lorg/minidns/hla/SrvType;

    .line 2
    new-instance v1, Lorg/minidns/hla/SrvType;

    sget-object v3, Lorg/minidns/hla/SrvService;->xmpp_server:Lorg/minidns/hla/SrvService;

    const-string v5, "xmpp_server"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v2}, Lorg/minidns/hla/SrvType;-><init>(Ljava/lang/String;ILorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;)V

    sput-object v1, Lorg/minidns/hla/SrvType;->xmpp_server:Lorg/minidns/hla/SrvType;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/minidns/hla/SrvType;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    .line 3
    sput-object v2, Lorg/minidns/hla/SrvType;->a:[Lorg/minidns/hla/SrvType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/hla/SrvService;",
            "Lorg/minidns/hla/SrvProto;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/minidns/hla/SrvType;->service:Lorg/minidns/hla/SrvService;

    .line 3
    iput-object p4, p0, Lorg/minidns/hla/SrvType;->proto:Lorg/minidns/hla/SrvProto;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/hla/SrvType;
    .locals 1

    const-class v0, Lorg/minidns/hla/SrvType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/minidns/hla/SrvType;

    return-object p0
.end method

.method public static values()[Lorg/minidns/hla/SrvType;
    .locals 1

    sget-object v0, Lorg/minidns/hla/SrvType;->a:[Lorg/minidns/hla/SrvType;

    invoke-virtual {v0}, [Lorg/minidns/hla/SrvType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/hla/SrvType;

    return-object v0
.end method
