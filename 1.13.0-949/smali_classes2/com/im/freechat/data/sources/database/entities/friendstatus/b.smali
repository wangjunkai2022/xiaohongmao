.class public final synthetic Lcom/im/freechat/data/sources/database/entities/friendstatus/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/b;->a:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/b;->a:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/b;->b:Ljava/util/List;

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->b(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
