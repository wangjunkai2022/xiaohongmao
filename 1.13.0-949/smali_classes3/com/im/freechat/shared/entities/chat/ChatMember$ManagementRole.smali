.class public final enum Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
.super Ljava/lang/Enum;
.source "ChatMember.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/chat/ChatMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManagementRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "",
        "(Ljava/lang/String;I)V",
        "isSuperRole",
        "",
        "NORMAL",
        "CUSTOMER_SERVICE",
        "MANAGEMENT",
        "FAMILY",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

.field public static final enum CUSTOMER_SERVICE:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

.field public static final enum FAMILY:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

.field public static final enum MANAGEMENT:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

.field public static final enum NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->CUSTOMER_SERVICE:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->MANAGEMENT:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->FAMILY:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const-string v1, "CUSTOMER_SERVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->CUSTOMER_SERVICE:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const-string v1, "MANAGEMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->MANAGEMENT:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    .line 4
    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const-string v1, "FAMILY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->FAMILY:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->$values()[Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->$VALUES:[Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

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

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->$VALUES:[Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    return-object v0
.end method


# virtual methods
.method public final isSuperRole()Z
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->CUSTOMER_SERVICE:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->MANAGEMENT:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
