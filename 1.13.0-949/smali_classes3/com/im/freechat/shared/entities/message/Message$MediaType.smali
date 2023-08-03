.class public final enum Lcom/im/freechat/shared/entities/message/Message$MediaType;
.super Ljava/lang/Enum;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "IMAGE",
        "AUDIO",
        "VIDEO",
        "LOCATION",
        "FILE",
        "GIF",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/message/Message$MediaType;

.field public static final enum AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

.field public static final Companion:Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

.field public static final enum GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

.field public static final enum IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

.field public static final enum LOCATION:Lcom/im/freechat/shared/entities/message/Message$MediaType;

.field public static final enum VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/im/freechat/shared/entities/message/Message$MediaType;

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->LOCATION:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const-string v1, "AUDIO"

    const/4 v2, 0x1

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 4
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const-string v1, "LOCATION"

    const/4 v2, 0x3

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->LOCATION:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 5
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const-string v1, "FILE"

    const/4 v2, 0x4

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 6
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    const-string v1, "GIF"

    const/4 v2, 0x5

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-static {}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->$values()[Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->$VALUES:[Lcom/im/freechat/shared/entities/message/Message$MediaType;

    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->Companion:Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;

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

    iput p3, p0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->$VALUES:[Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->type:I

    return v0
.end method
