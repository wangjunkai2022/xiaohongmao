.class public final enum Lcom/im/freechat/shared/entities/contact/ContactType;
.super Ljava/lang/Enum;
.source "ContactType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "FOLLOW",
        "BLOCK",
        "NONE",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/contact/ContactType;

.field public static final enum BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

.field public static final enum FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

.field public static final enum NONE:Lcom/im/freechat/shared/entities/contact/ContactType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/contact/ContactType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/im/freechat/shared/entities/contact/ContactType;

    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->NONE:Lcom/im/freechat/shared/entities/contact/ContactType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/contact/ContactType;

    const-string v1, "FOLLOW"

    const/4 v2, 0x0

    const-string v3, "follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/contact/ContactType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/contact/ContactType;

    const-string v1, "BLOCK"

    const/4 v2, 0x1

    const-string v3, "black"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/contact/ContactType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/contact/ContactType;->BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/contact/ContactType;

    const-string v1, "NONE"

    const/4 v2, 0x2

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/contact/ContactType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/contact/ContactType;->NONE:Lcom/im/freechat/shared/entities/contact/ContactType;

    invoke-static {}, Lcom/im/freechat/shared/entities/contact/ContactType;->$values()[Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/contact/ContactType;->$VALUES:[Lcom/im/freechat/shared/entities/contact/ContactType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/im/freechat/shared/entities/contact/ContactType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/contact/ContactType;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/contact/ContactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/contact/ContactType;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/contact/ContactType;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/contact/ContactType;->$VALUES:[Lcom/im/freechat/shared/entities/contact/ContactType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/contact/ContactType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/contact/ContactType;->type:Ljava/lang/String;

    return-object v0
.end method
