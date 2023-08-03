.class public final enum Lcom/im/freechat/shared/entities/chat/Chat$Type;
.super Ljava/lang/Enum;
.source "Chat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/chat/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "SINGLE",
        "GROUP",
        "CHAT_ROOM",
        "CHANNEL",
        "FAVORITES",
        "SERVICE",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/chat/Chat$Type;

.field public static final enum CHANNEL:Lcom/im/freechat/shared/entities/chat/Chat$Type;

.field public static final enum CHAT_ROOM:Lcom/im/freechat/shared/entities/chat/Chat$Type;

.field public static final Companion:Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum FAVORITES:Lcom/im/freechat/shared/entities/chat/Chat$Type;

.field public static final enum GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

.field public static final enum SERVICE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

.field public static final enum SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/im/freechat/shared/entities/chat/Chat$Type;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHAT_ROOM:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHANNEL:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->FAVORITES:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SERVICE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/chat/Chat$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v1, "GROUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/im/freechat/shared/entities/chat/Chat$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v1, "CHAT_ROOM"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/chat/Chat$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHAT_ROOM:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 4
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v1, "CHANNEL"

    const/4 v2, 0x3

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/im/freechat/shared/entities/chat/Chat$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHANNEL:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 5
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v1, "FAVORITES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/im/freechat/shared/entities/chat/Chat$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->FAVORITES:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 6
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v1, "SERVICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/im/freechat/shared/entities/chat/Chat$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SERVICE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->$values()[Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->$VALUES:[Lcom/im/freechat/shared/entities/chat/Chat$Type;

    new-instance v0, Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->Companion:Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->$VALUES:[Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->value:I

    return v0
.end method
