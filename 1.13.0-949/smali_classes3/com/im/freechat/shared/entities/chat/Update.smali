.class public final Lcom/im/freechat/shared/entities/chat/Update;
.super Ljava/lang/Object;
.source "Update.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/chat/Update$UpdateType;,
        Lcom/im/freechat/shared/entities/chat/Update$ModifyData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/Update;",
        "",
        "type",
        "Lcom/im/freechat/shared/entities/chat/Update$UpdateType;",
        "data",
        "(Lcom/im/freechat/shared/entities/chat/Update$UpdateType;Ljava/lang/Object;)V",
        "getData",
        "()Ljava/lang/Object;",
        "getType",
        "()Lcom/im/freechat/shared/entities/chat/Update$UpdateType;",
        "ModifyData",
        "UpdateType",
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


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/chat/Update$UpdateType;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/chat/Update$UpdateType;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/Update$UpdateType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/shared/entities/chat/Update;->type:Lcom/im/freechat/shared/entities/chat/Update$UpdateType;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/shared/entities/chat/Update;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/Update;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/shared/entities/chat/Update$UpdateType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/Update;->type:Lcom/im/freechat/shared/entities/chat/Update$UpdateType;

    return-object v0
.end method
