.class public final enum Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
.super Ljava/lang/Enum;
.source "ChatMember.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/chat/ChatMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NORMAL",
        "BANNED",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

.field public static final enum BANNED:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

.field public static final Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->BANNED:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    const-string v1, "BANNED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->BANNED:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->$values()[Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->$VALUES:[Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

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

    iput p3, p0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->$VALUES:[Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->value:I

    return v0
.end method
