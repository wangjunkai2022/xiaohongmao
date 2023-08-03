.class final Lcom/im/freechat/data/DatabaseRepositoryImpl$l;
.super Lkotlin/jvm/internal/Lambda;
.source "DatabaseRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/DatabaseRepositoryImpl;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "old",
        "new",
        "",
        "a",
        "(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/data/DatabaseRepositoryImpl$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$l;

    invoke-direct {v0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$l;-><init>()V

    sput-object v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$l;->a:Lcom/im/freechat/data/DatabaseRepositoryImpl$l;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "old"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$l;->a(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
