.class public final enum Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
.super Ljava/lang/Enum;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/message/MessageStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StyleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;",
        "",
        "(Ljava/lang/String;I)V",
        "BOLD",
        "URL",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

.field public static final enum BOLD:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

.field public static final enum URL:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    sget-object v1, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->BOLD:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->URL:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    const-string v1, "BOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->BOLD:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    const-string v1, "URL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->URL:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    invoke-static {}, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->$values()[Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->$VALUES:[Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->$VALUES:[Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    return-object v0
.end method
