.class public final enum Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
.super Ljava/lang/Enum;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
        "",
        "status",
        "",
        "(Ljava/lang/String;II)V",
        "getStatus",
        "()I",
        "isSent",
        "",
        "HAVE_READ",
        "SEND_COMPLETED",
        "SENDING",
        "SEND_FAILED",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

.field public static final Companion:Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

.field public static final enum SENDING:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

.field public static final enum SEND_COMPLETED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

.field public static final enum SEND_FAILED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;


# instance fields
.field private final status:I


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_COMPLETED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SENDING:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_FAILED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const-string v1, "HAVE_READ"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const-string v1, "SEND_COMPLETED"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_COMPLETED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v3, v2}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SENDING:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    .line 4
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const-string v1, "SEND_FAILED"

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_FAILED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    invoke-static {}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->$values()[Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->$VALUES:[Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->Companion:Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;

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

    iput p3, p0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->$VALUES:[Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->status:I

    return v0
.end method

.method public final isSent()Z
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_COMPLETED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

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
