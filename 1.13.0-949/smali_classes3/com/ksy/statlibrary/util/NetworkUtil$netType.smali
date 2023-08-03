.class public final enum Lcom/ksy/statlibrary/util/NetworkUtil$netType;
.super Ljava/lang/Enum;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksy/statlibrary/util/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "netType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksy/statlibrary/util/NetworkUtil$netType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksy/statlibrary/util/NetworkUtil$netType;

.field public static final enum CMNET:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

.field public static final enum CMWAP:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

.field public static final enum noneNet:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

.field public static final enum wifi:Lcom/ksy/statlibrary/util/NetworkUtil$netType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    const-string v1, "wifi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksy/statlibrary/util/NetworkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksy/statlibrary/util/NetworkUtil$netType;->wifi:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    new-instance v1, Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    const-string v3, "CMNET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksy/statlibrary/util/NetworkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksy/statlibrary/util/NetworkUtil$netType;->CMNET:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    new-instance v3, Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    const-string v5, "CMWAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ksy/statlibrary/util/NetworkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ksy/statlibrary/util/NetworkUtil$netType;->CMWAP:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    new-instance v5, Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    const-string v7, "noneNet"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ksy/statlibrary/util/NetworkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ksy/statlibrary/util/NetworkUtil$netType;->noneNet:Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/ksy/statlibrary/util/NetworkUtil$netType;->$VALUES:[Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksy/statlibrary/util/NetworkUtil$netType;
    .locals 1

    const-class v0, Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    return-object p0
.end method

.method public static values()[Lcom/ksy/statlibrary/util/NetworkUtil$netType;
    .locals 1

    sget-object v0, Lcom/ksy/statlibrary/util/NetworkUtil$netType;->$VALUES:[Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    invoke-virtual {v0}, [Lcom/ksy/statlibrary/util/NetworkUtil$netType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksy/statlibrary/util/NetworkUtil$netType;

    return-object v0
.end method
