.class public final Lcom/im/freechat/shared/entities/contact/UserModel$Companion;
.super Ljava/lang/Object;
.source "UserModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/contact/UserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/contact/UserModel$Companion;",
        "",
        "()V",
        "SERVICE_AVATAR",
        "",
        "SERVICE_NAME",
        "SERVICE_USER_ID",
        "",
        "serviceContact",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/shared/entities/contact/UserModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serviceContact()Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 13
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v12, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 2
    sget-object v4, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const-string v1, "Service"

    const-string v2, ""

    const/4 v3, 0x1

    const-string v5, "Service"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/im/freechat/shared/entities/contact/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;)V

    return-object v12
.end method
